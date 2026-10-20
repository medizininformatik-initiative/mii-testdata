# mii-testdata

This repository collects and redirects to appropriate repositories or software which support the generation of testdata compliant with the specifications of the core data set (CDS) of the Medical Informatics Initiative (MII) Germany or of non-MII-compliant testdata for performance testing.

## kds-testdata
This project generates MII CDS-compliant data in order to test the functionality of the CDS modules.

Generated CDS test data is available as ndjson via [release assets](https://github.com/medizininformatik-initiative/mii-testdata/releases).

Refer to https://github.com/medizininformatik-initiative/mii-testdata/tree/main/kds-testdata

## synthiFHIR

[synthiFHIR](https://github.com/medizininformatik-initiative/synthiFHIR) generates synthetic FHIR R4 test data from Excel workbooks, CSV files and Synthea patient data for MII CDS use cases. Its web workbench supports configurable clinical data, reproducible bulk generation, ZIP downloads and uploads to FHIR servers.

See the [project documentation](https://github.com/medizininformatik-initiative/synthiFHIR/blob/main/README.md) for setup and usage, and the [local entry](synthifhir/README.md) for workbook links. Generated test datasets are available in `kerndatensatz-testdaten` below.

## kerndatensatz-testdaten

This repository contains test data generated using synthiFHIR (see the section above). The test data is organised into packages containing up to 1,000 patients, or individual patients with up to 1,000 transaction bundles, in the form of JSON (ZIP) and ndjson files.

Refer to https://github.com/medizininformatik-initiative/kerndatensatz-testdaten

## SyntheaKDS
This project allows for the generation of synthetic patient data using the patient data generator [Synthea](https://github.com/synthetichealth/synthea). Generated data is transformed in order to conform to the [CDS Profiles](https://simplifier.net/organization/koordinationsstellemii/~home) provided by the MII. 

Refer to https://github.com/life-research/Synthea-MII-KDS

##  SyntheaHighmed

Auf Initiative des HighMED Konsortiums wurde in Zusammenarbeit mit der [Firma MedBlocks](https://medblocks.com) Synthea angepasst, sodass KDS-FHIR Daten erzeugt werden können. Es können für Deutschland typische Daten erzeugt werden. Es können auch fehlerhafte Daten erzeugt werden, z.B. um entspr. Verarbeitungs-Pipelines zu testen.

Refer to https://github.com/medblocks/synthea_highmed 

## musterdatenspende-diz
The test data provided here reflects the technical heterogeneity of data from various data integration centers for potential users, enabling realistic application testing, particularly for distributed analyses. The data is typically generated through the data centers’ ETL processes.
 
Refer to https://github.com/medizininformatik-initiative/musterdatenspende-diz 
