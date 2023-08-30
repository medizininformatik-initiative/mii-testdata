import os
import shutil
import json
import time
import concurrent.futures
from datetime import datetime, timedelta
import argparse
from multiprocessing import Manager, Pool
import gzip
import logging
import requests
from requests.auth import HTTPBasicAuth

MAX_PROCESSES = 5
DATA_DICT = {}
DATA_DICT_LOCK = concurrent.futures.ThreadPoolExecutor(max_workers=1)
LAST_CHANGE_TIME = datetime.now()


def json_from_gzip_file(input_filepath):

    with gzip.open(input_filepath, 'rt', encoding='utf-8') as gzip_file:
        json_data = gzip_file.read()

    return json.loads(json_data)


def send_to_fhir_server(bundle, args):
    logging.debug("Sending bundle to fhir...")
    headers = {'Content-Type': 'application/json'}
    response = requests.post(args.fhirurl, json=bundle, headers=headers,
                             auth=HTTPBasicAuth(args.fhiruser, args.fhirpw))

    logging.debug(f'Response sending bundle: {response.status_code}')


def process_file(data_dict, file_path, args):

    logger = logging.getLogger()
    logger.setLevel(get_numeric_log_level(args.log_level))
    logging.info(f'SENDING TO FHIR - Processing file: {file_path}')

    bundle = {}
    json_loaded_success = False
    cur_try = 0
    n_retries = 5
    while cur_try < n_retries and json_loaded_success == False:
        try:

            if args.gzippedfiles:
                bundle = json_from_gzip_file(file_path)
            else:
                with open(file_path, 'r') as json_file:
                    bundle = json.load(json_file)
            json_loaded_success = True
        except Exception as e:
            cur_try = cur_try + 1
            logging.debug(
                f"Hit running condition opening half written file, try:{cur_try} of {n_retries}")
            json_loaded_success = False
            time.sleep(5)

    send_to_fhir_server(bundle, args)

    if args.removeinputfiles:
        os.remove(file_path)

    data_dict[file_path] = True
    return True


def process_directory(data_dict, args):
    global LAST_CHANGE_TIME

    multiple_results = []
    all_files = [os.path.join(root, file) for root, _,
                 files in os.walk(args.inputdir) for file in files]

    with Pool(processes=4) as pool:
        for filename in all_files:
            if filename not in data_dict:
                LAST_CHANGE_TIME = datetime.now()
                multiple_results.append(pool.apply_async(
                    process_file, (data_dict, filename, args)))

        logging.debug([res.get(timeout=30) for res in multiple_results])


def get_numeric_log_level(log_level):
    numeric_level = getattr(logging, log_level.upper(), None)
    if not isinstance(numeric_level, int):
        raise ValueError(f"Invalid log level: {log_level}")

    return numeric_level


def str_to_bool(s):
    return s.lower() in ["true", "yes", "1"]


def main():

    parser = argparse.ArgumentParser(
        description="Continuously process files in a directory.")
    parser.add_argument("--log-level", default="info", choices=["debug", "info", "warning", "error", "critical"],
                        help="Set the logging level")
    parser.add_argument("--metadatadir", default="generated-testdata/metadata",
                        help="Path to the directory to be processed.")
    parser.add_argument("--inputdir", default="generated-testdata/fhir-processed",
                        help="Path to the directory to be processed.")
    parser.add_argument("--timeout", type=int, default=5,
                        help="Timeout in minutes for no new files.")
    parser.add_argument("--gzippedfiles", type=str_to_bool,
                        help="Enable reading of gzipped files")
    parser.add_argument("--removeinputfiles", type=str_to_bool,
                        help="Enable the continious removing of input files")
    parser.add_argument("--fhirurl", default="http://localhost:8081/fhir",
                        help="FHIR base url - commonly ends with /fhir")
    parser.add_argument("--fhiruser", default="",
                        help="FHIR Basic auth user")
    parser.add_argument("--fhirpw", default="",
                        help="FHIR Basic auth password")

    args = parser.parse_args()
    manager = Manager()
    data_dict = manager.dict()

    while True:
        process_directory(data_dict, args)

        if (datetime.now() - LAST_CHANGE_TIME) > timedelta(minutes=args.timeout):
            break

        time.sleep(10)

    processed_data_info = dict(data_dict)

    if args.removeinputfiles:
        shutil.rmtree(args.inputdir)

    with open(f'{args.metadatadir}/loaded_data_info.json', "w") as json_file:
        json.dump(processed_data_info, json_file, indent=4)


if __name__ == "__main__":
    main()
