# MII KDS Test Data

This Implementation Guide provides comprehensive test data compliant with the German Medical Informatics Initiative (MII) Core Data Set (KDS) modules. The test data is designed to validate and test KDS-compliant systems and implementations.

## Overview

This repository contains **10 patient test cases** covering mainly core MII KDS modules, with each patient representing different medical scenarios and data complexity levels.

## Test Patients

Each patient has a complete **Bundle resource** containing all related clinical data:

- **Patient-1**: Comprehensive reference patient
- **Patient-2**: Lung cancer patient (deceased) with chemotherapy
- **Patient-3**: Colorectal cancer patient with extensive molecular genetics data
- **Patient-4**: Gastric cancer patient with molecular genetics
- **Patient-5**: Endometriosis patient with hormone therapy
- **Patient-6**: Gastritis patient with H. pylori eradication therapy
- **Patient-7**: Bronchitis patient with antibiotic therapy
- **Patient-8**: Myocardial infarction patient (deceased) with cardiac interventions
- **Patient-9**: Ovarian cyst patient with laparoscopic surgery
- **Patient-10**: Migraine patient with neurological diagnostics

## Included MII KDS Modules

### Core Modules (Basis-Module)
- **Person**: Patient demographics, vital status, cause of death
- **Consent**: Patient consent information
- **Encounter**: Hospital encounters 
- **Condition**: Diagnoses and medical conditions

### Clinical Modules
- **Procedure**: Medical procedures and interventions
- **Laboratory**: Lab requests, reports, and observations
- **Medication**: Prescriptions, statements, administrations, and medication lists
- **Biobank**: Specimen collection and biobanking data

### Extension Modules
- **Molecular Genetics (Molgen)**: Genomic testing, variants, studied regions, family history

### Supporting Resources
- **Organization**: Healthcare organizations (hospital, laboratories, biobanks)
- **Practitioner & PractitionerRole**: Healthcare professionals
- **Device**: Medical devices and laboratory equipment
- **Medication**: Drug formulations and substances

## Resource Statistics

The test data includes FHIR resources across all patients:

| Resource Type | Count | Description |
|---------------|-------|-------------|
| Patient | 10 | Test patients with diverse demographics |
| Bundle | 10 | Transaction bundles (one per patient) |
| Condition | 20+ | Diagnoses including cancer, gastritis, migraine |
| Procedure | 25+ | Medical procedures and interventions |
| Observation | 80+ | Lab results, genomic findings |
| MedicationRequest | 20+ | Medication prescriptions |
| MedicationStatement | 25+ | Medication history |
| MedicationAdministration | 20+ | Drug administrations |
| Medication | 15+ | Drug formulations |
| Specimen | 20+ | Biobank samples |
| ServiceRequest | 15+ | Lab and procedure requests |
| DiagnosticReport | 15+ | Clinical reports |
| Organization | 5+ | Healthcare facilities |
| Practitioner | 5+ | Healthcare professionals |

## Usage

### FHIR Bundle Resources

Each patient's data is packaged in a complete **transaction Bundle** that can be:

1. **Posted to a FHIR server** for testing CRUD operations
2. **Used for validation** of KDS compliance
3. **Referenced for implementation examples**

Bundle resource names follow the pattern:
- `Bundle/mii-exa-test-data-bundle-pat-1` through `Bundle/mii-exa-test-data-bundle-pat-10`

### NDJSON Export

The test data is also available as **NDJSON** (Newline Delimited JSON) format for:
- Bulk data import/export testing
- Performance testing

Check the [GitHub repository releases](https://github.com/medizininformatik-initiative/mii-testdata/releases) for downloadable NDJSON files containing all test data bundles.

### Building the Test Data

To regenerate the test data:

1. Install [SUSHI](https://fshschool.org/docs/sushi/installation/)
2. Navigate to the `kds-testdata` folder
3. Run `sushi build .`

Generated FHIR resources are available in `/fsh-generated/resources/`

---

*This test data is provided for testing and validation purposes only and does not represent real patient information.*