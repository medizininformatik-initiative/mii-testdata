# mii-exa-test-data-symptom-condition-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-condition-2**

## Example Condition: mii-exa-test-data-symptom-condition-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2023-11-20

**identifier**: `https://www.charite.de/fhir/sid/symptom-condition`/SYMP-CON-0002

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Moderate (severity modifier)

**code**: Chronische Herzinsuffizienz

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-03-04 --> 2025-03-04](Encounter-mii-exa-test-data-symptom-encounter-1.md)

**onset**: 2023-11-20

**recordedDate**: 2025-03-04

### Stages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Summary** | **Assessment** | **Type** |
| * | New York Heart Association Classification - Class II | [Observation Symptom](Observation-mii-exa-test-data-symptom-observation-3.md) | Clinical staging (qualifier value) |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-symptom-condition-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2023-11-20"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-condition",
    "value" : "SYMP-CON-0002"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "Moderate (severity modifier)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84114007",
      "display" : "Heart failure"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "I50.9",
      "display" : "Herzinsuffizienz, nicht näher bezeichnet"
    }],
    "text" : "Chronische Herzinsuffizienz"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-symptom-encounter-1"
  },
  "onsetDateTime" : "2023-11-20",
  "recordedDate" : "2025-03-04",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "421704003",
        "display" : "New York Heart Association Classification - Class II"
      }]
    },
    "assessment" : [{
      "reference" : "Observation/mii-exa-test-data-symptom-observation-3"
    }],
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260998006",
        "display" : "Clinical staging (qualifier value)"
      }]
    }
  }]
}

```
