#!/bin/bash


TIMEOUT=${TIMEOUT:-1}
GZIP_OUTPUT_FILES=${GZIP_OUTPUT_FILES:-"false"}
REMOVE_INPUTFILES=${REMOVE_INPUTFILES:-"false"}
RELEVANT_RESOURCES=${RELEVANT_RESOURCES:-"Patient,Encounter,Observation,Condition,DiagnosticReport,Medication,MedicationAdministration,Procedure"}

printf "## Removing previously generated data... \n\n"
rm -rf output/*

mkdir output/fhir-processed
mkdir output/metadata

printf "\n## Starting continous post processing of synthea data in background... \n\n"
python3 -u testdata-post-processing.py --log-level info --metadatadir output/metadata --inputdir output/fhir --outputdir output/fhir-processed\
 --timeout $TIMEOUT --gzipfiles $GZIP_OUTPUT_FILES --removeinputfiles $REMOVE_INPUTFILES\
 --relevant-resources $RELEVANT_RESOURCES &

printf "## Starting synthea data generation - Generating $N_PATIENTS patients: \n\n"
java -jar synthea.jar -s "3256262546" -cs "3726451" -r "20210101" -a "0-100" -c "synthea.properties" -p $N_PATIENTS

sleep "$(($TIMEOUT * 60 * 2))"


