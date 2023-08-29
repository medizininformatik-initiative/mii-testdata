#!/bin/bash

printf "## Removing previously generated data... \n\n"
rm -rf output/*

mkdir output/fhir-mii
mkdir output/metadata


printf "\n## Starting continous post processing of synthea data in background... \n\n"
python3 -u testdata-post-processing.py --log-level info --inputdir output/fhir --outputdir output/fhir-mii --timeout 1 --gzipfiles --removeinputfiles &

printf "## Starting synthea data generation - Generating $N_PATIENTS patients: \n\n"
java -jar synthea.jar -s "3256262546" -cs "3726451" -r "20210101" -a "0-100" -c "synthea.properties" -p $N_PATIENTS


