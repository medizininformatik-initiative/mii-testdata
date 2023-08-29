import os
import json
import csv
import time
import concurrent.futures
from datetime import datetime, timedelta
import argparse
from multiprocessing import Manager, Pool
import gzip
import logging

MAX_PROCESSES = 5
DATA_DICT = {}
DATA_DICT_LOCK = concurrent.futures.ThreadPoolExecutor(max_workers=1)
LAST_CHANGE_TIME = datetime.now()


def gzip_json_to_file(json_data, output_filename):
    json_bytes = json_data.encode('utf-8')

    with gzip.open(f'{output_filename}.gz', 'wb') as f_out:
        f_out.write(json_bytes)


def process_entry(resource_overview, entry):
    resource = entry['resource']
    res_type = resource['resourceType']

    if 'code' in resource:
        code = resource['code']['coding'][0]['code']

        if code not in resource_overview[res_type]:
            resource_overview[res_type][code] = {
                "count": 1,
                "code": resource['code'],
                "type": res_type
            }
        else:
            resource_overview[res_type][code]['count'] = resource_overview[res_type][code]['count'] + 1

    return resource_overview


def remove_non_mii_resources(bundle, relevant_resources):
    for del_index in reversed(range(len(bundle['entry']))):
        resource = bundle['entry'][del_index]['resource']
        if resource['resourceType'] not in relevant_resources:
            logging.debug(
                f'Removing non MII resource of type: {resource["resourceType"]}')
            del bundle['entry'][del_index]


def process_bundle(bundle, relevant_resources):

    temp_res_overview = {}

    for relevant_resource in relevant_resources:
        temp_res_overview[relevant_resource] = {}

    remove_non_mii_resources(bundle, relevant_resources)

    for entry in bundle['entry']:
        process_entry(temp_res_overview, entry)

    return temp_res_overview


def update_overview_dict(data_dict, resource_overview):

    temp_res_overview = data_dict['resourceOverview']

    for res_type in resource_overview.keys():
        for code in resource_overview[res_type].keys():
            if code not in data_dict['resourceOverview'][res_type]:
                temp_res_overview[res_type][code] = resource_overview[res_type][code]

            else:
                temp_res_overview[res_type][code]['count'] = temp_res_overview[res_type][code]['count'] + \
                    resource_overview[res_type][code]['count']

    data_dict['resourceOverview'] = temp_res_overview


def write_processed_bundle_to_file(args, filename, bundle):
    output_path = os.path.join(args.outputdir, filename)

    print(f'writing data to {output_path}')
    if args.gzipfiles:
        gzip_json_to_file(json.dumps(bundle), output_path)
    else:
        with open(output_path, "w") as output_file:
            json.dump(bundle, output_file)


def remove_file_and_dirs(base_dir, file_path):
    file_dir = os.path.dirname(file_path)
    os.remove(file_path)

    while file_dir != base_dir:
        logging.debug(f'Removing dir: {file_dir}')
        os.rmdir(file_dir)
        file_dir = os.path.dirname(file_dir)


def process_file(lock, data_dict, file_path, args):

    logger = logging.getLogger()
    logger.setLevel(get_numeric_log_level(args.log_level))

    filename = os.path.basename(file_path)
    temp_processed_files = data_dict['processedFiles']
    temp_processed_files[file_path] = True
    data_dict['processedFiles'] = temp_processed_files

    cur_bundle = {}

    with open(file_path, 'r') as json_file:
        cur_bundle = json.load(json_file)
        resource_overview = process_bundle(
            cur_bundle, data_dict['resourceOverview'].keys())

    with lock:
        update_overview_dict(data_dict, resource_overview)

    write_processed_bundle_to_file(args, filename, cur_bundle)

    if args.removeinputfiles:
        remove_file_and_dirs(args.inputdir, file_path)

    return True


def process_directory(lock, data_dict, args):
    global LAST_CHANGE_TIME

    multiple_results = []
    all_files = [os.path.join(root, file) for root, _,
                 files in os.walk(args.inputdir) for file in files]

    with Pool(processes=4) as pool:
        for filename in all_files:
            if filename not in data_dict['processedFiles']:
                multiple_results.append(pool.apply_async(
                    process_file, (lock, data_dict, filename, args)))

        print([res.get(timeout=20) for res in multiple_results])


def get_numeric_log_level(log_level):
    numeric_level = getattr(logging, log_level.upper(), None)
    if not isinstance(numeric_level, int):
        raise ValueError(f"Invalid log level: {log_level}")

    return numeric_level


def write_info_as_csv(output_dir, resource_overview):
    csv_file_path = f'{output_dir}/resources-info.csv'

    with open(csv_file_path, mode='w', newline='') as file:

        writer = csv.writer(file)
        header = ['Resource', 'System', 'Code', 'Count']
        writer.writerow(header)

        for res_type in resource_overview:
            resource_overview[res_type] = {k: v for k, v in sorted(
                resource_overview[res_type].items(), key=lambda item: item[1]['count'], reverse=True)}
            for code in resource_overview[res_type]:

                resource = resource_overview[res_type][code]
                code = resource['code']['coding'][0]['code']
                system = resource['code']['coding'][0]['system']
                count = resource['count']
                line = [res_type, system, code, count]
                writer.writerow(line)


def main():

    parser = argparse.ArgumentParser(
        description="Continuously process files in a directory.")
    parser.add_argument("--log-level", default="info", choices=["debug", "info", "warning", "error", "critical"],
                        help="Set the logging level")
    parser.add_argument("--metadatadir", default="generated-testdata/metadata",
                        help="Path to the directory to be processed.")
    parser.add_argument("--inputdir", default="generated-testdata/fhir",
                        help="Path to the directory to be processed.")
    parser.add_argument("--outputdir", default="generated-testdata/fhir-mii",
                        help="Path to the directory where to save processed data.")
    parser.add_argument("--timeout", type=int, default=5,
                        help="Timeout in minutes for no new files.")
    parser.add_argument("--gzipfiles", action="store_true",
                        help="Enable the gzipping of files")
    parser.add_argument("--removeinputfiles", action="store_true",
                        help="Enable the continious removing of input files")
    parser.add_argument("--relevant-resources", default="Patient,Encounter,Observation,Condition,DiagnosticReport,Medication,MedicationAdministration,Procedure",
                        help="Comma separated list of resource types relevant for testdata")

    args = parser.parse_args()
    manager = Manager()
    lock = manager.Lock()
    data_dict = manager.dict()
    data_dict['resourceOverview'] = {}

    temp_res_overview = {}
    for relevant_resource in args.relevant_resources.split(","):
        temp_res_overview[relevant_resource] = {}

    data_dict['resourceOverview'] = temp_res_overview
    data_dict['processedFiles'] = {}

    while True:
        process_directory(lock, data_dict, args)

        if (datetime.now() - LAST_CHANGE_TIME) > timedelta(minutes=args.timeout):
            break

        time.sleep(10)

    processed_data = dict(data_dict)

    with open(f'{args.metadatadir}/processed_data_info.json', "w") as json_file:
        json.dump(processed_data, json_file, indent=4)

    write_info_as_csv(args.metadatadir, processed_data['resourceOverview'])


if __name__ == "__main__":
    main()
