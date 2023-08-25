# mii-testdata Synthea

Based on the Synthea Patient Generator https://github.com/synthetichealth/synthea, this repository packages a new synthea version and removes all resources, which are not currently used by the medical informatics initiative.

The synthea dataset is not compatible with MII resources, which means that it cannot be used to test the robustness or compatibility of profile specific intricacies or
search parameters specific to the MII dataset and profiling.

However the data generated covers a wide variety of patient data in ratios which can be expected in the real world, which makes this dataset useful for performance tests.


## How to use

### Generate data

To generate a dataset for testing first set the environment variable SYNTHEA_N_PATIENTS to the number of patients you would like to generate: `export SYNTHEA_N_PATIENTS=1000`.
Then execute the docker-image `docker-compose up -d` and wait for the container to finish.

Use `docker-compose logs -f` to see the logs and current status of the container generating the data.

The container will generate patient data according to the specifications in the `synthea.properties` file. 

By default this means generating a  10 year history for SYNTHEA_N_PATIENTS number of patients.

Once the synthea data is generated the program will remove all non-mii resources (as specified by the post-process-bundle.jq file) from the bundles and save them in the folder
`generated-testdata/fhir-mii`.

The program will then automatically use the generate-testdata-info.py to generate information about the generated testdata, specifically counting the number of resources available for each criterion (identified by its system and code) and save it in `generated-testdata/metadata/resources-info.csv`.
