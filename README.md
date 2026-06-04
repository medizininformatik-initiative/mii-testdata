# mii-testdata

This repository collects and redirects to appropriate repositories or software which supports the generation of MII compliant testdata
or non MII compliant testdata for performance testing.

## kds-testdata
The project generates MII core data set (CDS) compliant data in order to test the functionality of the CDS modules.

## excel2fhir
excel2fhir converts structured Excel workbooks into synthetic FHIR R4 test data bundles. It is intended for creating coherent, referenced test data in the context of the German Medical Informatics Initiative (MII) Kerndatensatz.

The input is an Excel workbook with predefined sheets for patients, encounters, diagnoses, procedures, observations, medication, clinical documentation and conversion options. The generator splits the workbook into intermediate CSV files and then creates FHIR resources and bundles.

Refer to https://github.com/medizininformatik-initiative/excel2fhir

## SyntheaKDS
This project allows for the generation of synthetic patient data using the patient data generator [Synthea](https://github.com/synthetichealth/synthea). Generated data is transformed in order to conform to the [KDS Profiles](https://simplifier.net/organization/koordinationsstellemii/~home) provided by the Medical Informatics Initiative (MII). 

Refer to https://github.com/life-research/Synthea-MII-KDS
