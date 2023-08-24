import os
import json
import csv
folder_path = './output/fhir-mii'

resource_overview = {
    "Patient": {},
    "Encounter": {},
    "Observation": {},
    "Condition": {},
    "DiagnosticReport": {},
    "Medication": {},
    "MedicationAdministration": {},
    "Procedure": {}
}


def process_entry(entry):
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


def process_bundle(bundle):
    for entry in bundle['entry']:
        process_entry(entry)


for filename in os.listdir(folder_path):
    file_path = os.path.join(folder_path, filename)
    if os.path.isfile(file_path):

        cur_pat_bundle = None
        with open(file_path, 'r') as json_file:
            cur_pat_bundle = json.load(json_file)
            process_bundle(cur_pat_bundle)


csv_file_path = "output/metadata/resources-info.csv"

with open(csv_file_path, mode='w', newline='') as file:

    writer = csv.writer(file)
    header = ['Resource', 'System', 'Code', 'Count']
    writer.writerow(header)

    for res_type in resource_overview:
        resource_overview[res_type] = {k: v for k, v in sorted(resource_overview[res_type].items(), key=lambda item: item[1]['count'], reverse=True)}
        for code in resource_overview[res_type]:

            resource = resource_overview[res_type][code]
            code = resource['code']['coding'][0]['code']
            system = resource['code']['coding'][0]['system']
            count = resource['count']
            line = [res_type, system, code, count]
            writer.writerow(line)
