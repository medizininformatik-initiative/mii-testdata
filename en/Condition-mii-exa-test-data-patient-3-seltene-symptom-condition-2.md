# mii-exa-test-data-patient-3-seltene-symptom-condition-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-symptom-condition-2**

## Example Condition: mii-exa-test-data-patient-3-seltene-symptom-condition-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE Symptom Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/seltene-symptom`/SE-SYMPTOM-2025-002

**clinicalStatus**: Inactive

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Severe

**code**: Aortenwurzeldilatation

**bodySite**: Aortic arch structure

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**onset**: 2024-06-15

**abatement**: 2025-06-01

**recordedDate**: 2024-06-15

### Stages

| | |
| :--- | :--- |
| - | **Summary** |
| * | Severe |

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Aortic root aneurysm | [Observation Aortic root aneurysm](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-1.md) |

**note**: 

> 

Nach operativer Korrektur inaktiv.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-seltene-symptom-condition-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/seltene-symptom",
    "value" : "SE-SYMPTOM-2025-002"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "inactive",
      "display" : "Inactive"
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
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0012828",
      "display" : "Severe"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/hp.owl",
      "code" : "HP:0002616",
      "display" : "Aortic root aneurysm"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "128599005",
      "display" : "Structural disorder of heart"
    }],
    "text" : "Aortenwurzeldilatation"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57034009",
      "display" : "Aortic arch structure"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "onsetDateTime" : "2024-06-15",
  "abatementDateTime" : "2025-06-01",
  "recordedDate" : "2024-06-15",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012828",
        "display" : "Severe"
      }]
    }
  }],
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002616",
        "display" : "Aortic root aneurysm"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-1"
    }]
  }],
  "note" : [{
    "text" : "Nach operativer Korrektur inaktiv."
  }]
}

```
