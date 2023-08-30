# mii-testdata Synthea

Based on the Synthea Patient Generator https://github.com/synthetichealth/synthea, this repository packages a new synthea version and removes all resources, which are not currently used by the medical informatics initiative.

The synthea dataset is not compatible with MII resources, which means that it cannot be used to test the robustness or compatibility of profile specific intricacies or
search parameters specific to the MII dataset and profiling.

However the data generated covers a wide variety of patient data in ratios which can be expected in the real world, which makes this dataset useful for performance tests.


## How to use

### Generate data

This repository allows you to generate synthea testdata, process it, removing non-relevant resources and creating a statistic about how often each resource exists for a specific code.
It then allows you to load the processed or the original synthea data directly into a FHIR server.

To generate a dataset for testing first set the environment variables in the .env file - for details see below.

Then execute the docker-image `docker-compose up -d` and wait for the container to finish.

Use `docker-compose logs -f` to see the logs and current status of the container generating the data.

The container will generate patient data according to the specifications in the `synthea.properties` file.

Note: If you are sending to a FHIR server in your docker network ensure that you start docker-compose with project as the FHIR server (-p option).
For example: `docker-compose -p testdata-project up -d`

## Configuration Base

| EnvVar                         | Description                                                                                                                                                                          | Example | Default                                                                                                |
|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|--------------------------------------------------------------------------------------------------------|
| CLEAR_TESTDATA_DIRS            | Enables clearing of the testdata dirs. Possible Values: true,   false                                                                                                                |         | true                                                                                                   |
| # SYNTHEA GENERATION           |                                                                                                                                                                                      |         | # SYNTHEA GENERATION                                                                                   |
| ENABLE_GENERATE_SYNTHEA_DATA   | Enables the generation of   the synthea data - enable if no data has been generated yet or if you want to   generate new data. Possible Values: true, false                          |         | true                                                                                                   |
| SYNTHEA_N_PATIENTS             | The number of patients you would like to generate data for                                                                                                                           |         | 100                                                                                                    |
| # PROCESSING OF TESTDATA       |                                                                                                                                                                                      |         | # PROCESSING OF TESTDATA                                                                               |
| TIMEOUT                        | The time the processing   and sending programs wait for new files to appear before they shut down. This   is used to continuously process the synthea data as it is being generated. |         | 1                                                                                                      |
| ENABLE_PROCESS_TESTDATA        | Enables the post processing of the synthea data. Possible   Values: true, false                                                                                                      |         | true                                                                                                   |
| GZIP_PROCESSED_OUTPUT_FILES    | Would you like to gzip   the processed files to save disk space? Possible Values: true, false                                                                                        |         | true                                                                                                   |
| REMOVE_INPUTFILES_PROCESSING   | Should the input files be   removed after processing to save disk space? Possible Values: true, false                                                                                |         | true                                                                                                   |
| RELEVANT_RESOURCES             | Comma separated list of FHIR resourceTypes of a Bundle which   should be kept                                                                                                        |         | Patient,Encounter,Observation,Condition,DiagnosticReport,Medication,MedicationAdministration,Procedure |
| # SENDING TO FHIR              |                                                                                                                                                                                      |         | # SENDING TO FHIR                                                                                      |
| ENABLE_SENT_DATA_TO_FHIR       | Enables the loading of   the data directly into the FHIR sever. Possible Values: true, false                                                                                         |         | true                                                                                                   |
| GZIPPED_FHIR_SEND_INPUT_FILES  | Are your input files you are sending gzipped? Possible Values:   true, false                                                                                                         |         | true                                                                                                   |
| REMOVE_INPUTFILES_FHIR_SENDING | Should the input files be   removed after sending it to the FHIR server to save disk space? Possible   Values: true, false                                                           |         | true                                                                                                   |
| FHIR_URL                       | base url of the FHIR   server. Possible Values: string - commonly base urls end with /fhir                                                                                           |         | http://fhir-server:8080/fhir                                                                           |
| FHIR_USER                      | basic auth user for FHIR server if used                                                                                                                                              |         |                                                                                                        |
| FHIR_PW                        | basic auth password for FHIR server if used                                                                                                                                          |         |                                                                                                        |

