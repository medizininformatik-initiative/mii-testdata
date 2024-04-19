# kds-testdata

The project generates KDS-compliant data in order to test the functionality of the KDS modules.

## How to use

Prerequisite for running this project is the installation of SUSHI: https://fshschool.org/docs/sushi/installation/

If SUSHI is installed, navigate to `kds-testdata` folder and run `sushi build .`
Further reading on running SUSHI: https://fshschool.org/docs/sushi/running/

The FHIR data is generated inside `/kds-testdata/fsh-generated` folder. There is a transaction `Bundle` resource that contains the collection of resources.

Troubleshooting: if *Structure Definition is Missing Snapshot Error* is encountered during running SUSHI, missing snapshots have to be provided. See: https://fshschool.org/docs/sushi/running/#structure-definition-is-missing-snapshot-error 