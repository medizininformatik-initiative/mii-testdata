

printf "## Removing previously generated data... \n\n"
rm -rf output/*

printf "## Starting synthea data generation - Generating $N_PATIENTS patients: \n\n"

java -jar synthea.jar -s "3256262546" -cs "3726451" -r "20210101" -a "0-100" -c "synthea.properties" -p $N_PATIENTS

printf "\n## Selecting only FHIR resources relevant for MII and saving it in the folder fhir-mii... \n\n"
mkdir output/fhir-mii

find output/fhir -name '*.json' -type f | while read -r file; do
    processed_output=$(jq -f post-process-bundle.jq "$file")    
    new_file=output/fhir-mii/$(basename "$file")
    echo "$processed_output" > "$new_file"
done

printf "## Generating metadata for generated testdata... \n\n"
python3 generate-testdata-info.py
