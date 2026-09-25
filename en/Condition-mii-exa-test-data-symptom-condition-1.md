# mii-exa-test-data-symptom-condition-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-condition-1**

## Example Condition: mii-exa-test-data-symptom-condition-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2025-03-04

**identifier**: `https://www.charite.de/fhir/sid/symptom-condition`/SYMP-CON-0001

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Moderate (severity modifier)

**code**: Chronische Spannungskopfschmerzen

**bodySite**: Head structure

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-03-04 --> 2025-03-04](Encounter-mii-exa-test-data-symptom-encounter-1.md)

**onset**: 2009 --> 2012

**recordedDate**: 2025-03-04

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Headache | [Observation Symptom](Observation-mii-exa-test-data-symptom-observation-1.md) |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-symptom-condition-1",
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
    "valueDateTime" : "2025-03-04"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-condition",
    "value" : "SYMP-CON-0001"
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
      "code" : "398057008",
      "display" : "Tension-type headache"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "G44.2",
      "display" : "Spannungskopfschmerz"
    }],
    "text" : "Chronische Spannungskopfschmerzen"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "69536005",
      "display" : "Head structure"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-symptom-encounter-1"
  },
  "onsetPeriod" : {
    "start" : "2009",
    "_start" : {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/lebensphase",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "263659003",
            "display" : "Adolescence (qualifier value)"
          }]
        }
      }]
    },
    "end" : "2012",
    "_end" : {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/lebensphase",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "263659003",
            "display" : "Adolescence (qualifier value)"
          }]
        }
      }]
    }
  },
  "recordedDate" : "2025-03-04",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "25064002",
        "display" : "Headache"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-symptom-observation-1"
    }]
  }]
}

```
