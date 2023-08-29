import json
import os

all_files = [os.path.join(root, file) for root, _,
                 files in os.walk("generated-testdata/fhir") for file in files]


for file_path in all_files:
    print(f'Opening file {file_path}')
    with open(file_path, 'r') as json_file:
        cur_bundle = json.load(json_file)