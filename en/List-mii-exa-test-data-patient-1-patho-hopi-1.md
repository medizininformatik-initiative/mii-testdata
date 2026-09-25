# mii-exa-test-data-patient-1-patho-hopi-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-patho-hopi-1**

## Example List: mii-exa-test-data-patient-1-patho-hopi-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho History Of Present Illness](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2024-02-15 | Mode: Snapshot List | Status: Current | Code: History of Present illness |
| Subject:[Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)Encounter:[Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --> 2024-02-20](Encounter-mii-exa-test-data-patho-encounter-1.md) | | | |

* **Items**: [Condition Malignant neoplasm of prostate](Condition-mii-exa-test-data-patient-1-patho-problem-list-item-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-1-patho-hopi-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8684-3",
      "display" : "History of Present illness"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
  },
  "date" : "2024-02-15",
  "entry" : [{
    "item" : {
      "reference" : "Condition/mii-exa-test-data-patient-1-patho-problem-list-item-1"
    }
  }]
}

```
