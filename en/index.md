# Home - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/testdata/ImplementationGuide/mii-kds-testdata | *Version*:2027.0.0-ballot |
| Draft as of 2026-09-25 | *Computable Name*:MIIKDSTestData |

# MII KDS Test Data

This Implementation Guide provides comprehensive test data compliant with the German Medical Informatics Initiative (MII) Core Data Set (KDS) modules — **2027 ballot generation**, built against the BOM package `de.medizininformatikinitiative.kerndatensatz.complete` (all 21 KDS modules pinned coherently).

**829 example instances · 27 transaction bundles · every instance labeled `meta.security = HTEST` and carrying `meta.source`.**

## Two kinds of bundles

* **11 patient bundles** (`mii-exa-test-data-bundle-pat-1 … -pat-11`): clinically coherent cross-module scenarios per patient (core modules: Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent).
* **16 module bundles** (`mii-exa-test-data-bundle-<modul>-1`): technically complete, self-contained per-module test sets with their own patients — one per extension module: Bildgebung, Biobank, Dokument, ICU, **Kardiologie**, **Lungenfunktion**, Mikrobiologie, MolGen, MTB, Onkologie, Patho, PRO, Seltene, **Soziodemographie**, Studien, **Symptom** (bold = new with the 2027 generation).

## Test Patients

* **Patient-1**: Comprehensive reference patient — **fully structured medication dosage** (timing + doseAndRate, coded medications)
* **Patient-2**: Lung cancer patient (deceased) with chemotherapy — **fully unstructured medication** (free-text dosage and medication, no Medication resources)
* **Patient-3**: Colorectal cancer patient with extensive molecular genetics data
* **Patient-4**: Gastric cancer patient with molecular genetics
* **Patient-5**: Endometriosis patient with hormone therapy
* **Patient-6**: Gastritis patient with H. pylori eradication therapy
* **Patient-7**: Bronchitis patient with antibiotic therapy
* **Patient-8**: Myocardial infarction patient (deceased) with cardiac interventions
* **Patient-9**: Ovarian cyst patient with laparoscopic surgery
* **Patient-10**: Migraine patient with neurological diagnostics
* **Patient-11**: Additional core-module scenario

Patients 1 and 2 deliberately form a pair covering both permitted `DosageDE` worlds (structured vs. free-text) of the Medikation module.

## Quality instrumentation

The repository doubles as a measuring instrument over the KDS profiles. Analyses (regenerated per release) live in the [repository docs](https://github.com/medizininformatik-initiative/mii-testdata/tree/main/docs):

* **Profile coverage**: 360 of 450 instantiable BOM profiles covered (~80 %)
* **Must-Support coverage** (`ms-coverage-2027.md`): populated vs. missing MS elements per module, plus populated non-MS paths as ballot feedback candidates
* **Unfiltered validation master index** (`validation-master-index-2027-unfiltered.md`): all validator findings clustered by message id, classified testdata / upstream / offline artifact
* **Migration notes** (`2027-dependency-upgrade-errors.md`): every breaking change 2026 → 2027 ballot and its resolution
* **Per-module research notes** (`research-<modul>.md`): profile inventory and design decisions for newly authored modules

## Delivery

Generated test data is released as **NDJSON + zipped `fsh-generated`** via [GitHub release assets](https://github.com/medizininformatik-initiative/mii-testdata/releases). The bundles load cleanly into a FHIR server as transactions (verified against Blaze in CI).

## Contributing

See the [repository README](https://github.com/medizininformatik-initiative/mii-testdata) for test data requirements (full profile coverage, all Must-Support elements populated, referential integrity) and the contribution workflow.

