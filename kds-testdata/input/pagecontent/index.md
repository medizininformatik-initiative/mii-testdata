# MII KDS Test Data

This Implementation Guide provides comprehensive test data compliant with the German Medical Informatics Initiative (MII) Core Data Set (KDS) modules — **2027 ballot generation**, built against the BOM package `de.medizininformatikinitiative.kerndatensatz.complete` (all 21 KDS modules pinned coherently).

**1369 example instances · 31 transaction bundles · every instance labeled `meta.security = HTEST` and carrying `meta.source`.**

## Three kinds of bundles

- **16 module bundles** (`mii-exa-test-data-bundle-<modul>-1`): technically complete, self-contained per-module test sets with their own patients — one per extension module: Bildgebung, Biobank, Dokument, ICU, **Kardiologie**, **Lungenfunktion**, Mikrobiologie, MolGen, MTB, Onkologie, Patho, PRO, Seltene, **Soziodemographie**, Studien, **Symptom** (bold = new with the 2027 generation).
- **10 patient bundles** (`mii-exa-test-data-bundle-pat-1 … -pat-10`): clinically coherent scenarios per patient across the **core** modules (Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent).
- **4 cross-module example patients** (`mii-exa-test-data-bundle-pat-11 … -pat-14`): one patient carrying core modules **and** extension modules, so that cross-module joins become testable. Each is modelled on a real MII research project — see [Cross-Module Example Patients](cross-module-patients.html).

The third kind closes a gap the first two leave open by construction: module bundles are complete but each has its **own** patient, so nothing joins across them; patient bundles 1–10 do join, but only across the core modules.

## Test Patients

- **Patient-1**: Comprehensive reference patient — **fully structured medication dosage** (timing + doseAndRate, coded medications)
- **Patient-2**: Lung cancer patient (deceased) with chemotherapy — **fully unstructured medication** (free-text dosage and medication, no Medication resources)
- **Patient-3**: Colorectal cancer patient with extensive molecular genetics data
- **Patient-4**: Gastric cancer patient with molecular genetics
- **Patient-5**: Endometriosis patient with hormone therapy
- **Patient-6**: Gastritis patient with H. pylori eradication therapy
- **Patient-7**: Bronchitis patient with antibiotic therapy
- **Patient-8**: Myocardial infarction patient (deceased) with cardiac interventions
- **Patient-9**: Ovarian cyst patient with laparoscopic surgery
- **Patient-10**: Migraine patient with neurological diagnostics

### Cross-module example patients

- **Patient-11**: Heart failure — research study + sociodemographics + **longitudinal PROMs** (T0/T3/T6)
- **Patient-12**: Sepsis on ICU — ventilation + SOFA course + microbiology, with the antibiotic switch causally linked to the resistance finding
- **Patient-13**: Morbus Fabry — symptoms from 2011, diagnosis in 2023: a **12-year diagnostic delay** measurable from the data
- **Patient-14**: MSI-high colorectal cancer — pathology → NGS → molecular tumor board → immunotherapy → response

Details: [Cross-Module Example Patients](cross-module-patients.html).

Patients 1 and 2 deliberately form a pair covering both permitted `DosageDE` worlds (structured vs. free-text) of the Medikation module.

## Quality instrumentation

The repository doubles as a measuring instrument over the KDS profiles. Analyses (regenerated per release) live in the [repository docs](https://github.com/medizininformatik-initiative/mii-testdata/tree/main/docs):

- **Profile coverage**: 360 of 450 instantiable BOM profiles covered (~80 %)
- **Must-Support coverage** (`ms-coverage-2027.md`): populated vs. missing MS elements per module, plus populated non-MS paths as ballot feedback candidates
- **Unfiltered validation master index** (`validation-master-index-2027-unfiltered.md`): all validator findings clustered by message id, classified testdata / upstream / offline artifact
- **Migration notes** (`2027-dependency-upgrade-errors.md`): every breaking change 2026 → 2027 ballot and its resolution
- **Per-module research notes** (`research-<modul>.md`): profile inventory and design decisions for newly authored modules

## Delivery

Generated test data is released as **NDJSON + zipped `fsh-generated`** via [GitHub release assets](https://github.com/medizininformatik-initiative/mii-testdata/releases). The bundles load cleanly into a FHIR server as transactions (verified against Blaze in CI).

## Contributing

See the [repository README](https://github.com/medizininformatik-initiative/mii-testdata) for test data requirements (full profile coverage, all Must-Support elements populated, referential integrity) and the contribution workflow.
