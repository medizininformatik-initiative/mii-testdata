# mii-testdata

This repository collects and redirects to appropriate repositories or software which support the generation of testdata compliant with the specifications of the core data set (CDS) of the Medical Informatics Initiative (MII) Germany or of non-MII-compliant testdata for performance testing.

## kds-testdata
This project generates MII CDS-compliant data in order to test the functionality of the CDS modules.

Generated CDS test data is available as ndjson via [release assets](https://github.com/medizininformatik-initiative/mii-testdata/releases).

Refer to https://github.com/medizininformatik-initiative/mii-testdata/tree/main/kds-testdata

## excel2fhir
excel2fhir converts structured Excel workbooks into synthetic FHIR R4 test data bundles. It is intended for creating coherent, referenced test data in the context of the MII CDS.

The input is an Excel workbook with predefined sheets for patients, encounters, diagnoses, procedures, observations, medication, clinical documentation and conversion options. The generator splits the workbook into intermediate CSV files and then creates FHIR resources and bundles.

Refer to https://github.com/medizininformatik-initiative/excel2fhir

## SyntheaKDS
This project allows for the generation of synthetic patient data using the patient data generator [Synthea](https://github.com/synthetichealth/synthea). Generated data is transformed in order to conform to the [CDS Profiles](https://simplifier.net/organization/koordinationsstellemii/~home) provided by the MII. 

Refer to https://github.com/life-research/Synthea-MII-KDS

## musterdatenspende-diz
The test data provided here reflects the technical heterogeneity of data from various data integration centers for potential users, enabling realistic application testing, particularly for distributed analyses. The data is typically generated through the data centers’ ETL processes.
 
Refer to https://github.com/medizininformatik-initiative/musterdatenspende-diz 
