# mii-exa-test-data-patient-3-seltene-symptom-condition-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-symptom-condition-1**

## Example Condition: mii-exa-test-data-patient-3-seltene-symptom-condition-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE Symptom Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/seltene-symptom`/SE-SYMPTOM-2025-001

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Mild

**code**: Hochwuchs bei Marfan-Syndrom

**bodySite**: Entire body as a whole

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**onset**: 14 years (Details: UCUM codea = 'a')

**recordedDate**: 2025-03-10

### Stages

| | |
| :--- | :--- |
| - | **Summary** |
| * | Mild |

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Tall stature | [Observation Tall stature](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-4.md) |

**note**: 

> 

Hochwuchs seit der Adoleszenz, typisch fuer Marfan-Syndrom. 195 cm bei Alter 30.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-seltene-symptom-condition-1",
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
    "value" : "SE-SYMPTOM-2025-001"
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
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0012825",
      "display" : "Mild"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/hp.owl",
      "code" : "HP:0000098",
      "display" : "Tall stature"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "15456002",
      "display" : "Tall stature"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "E34.4",
      "display" : "Konstitutioneller Hochwuchs"
    },
    {
      "system" : "http://purl.obolibrary.org/obo/mondo.owl",
      "code" : "MONDO:0007064",
      "display" : "Marfan syndrome"
    }],
    "text" : "Hochwuchs bei Marfan-Syndrom"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "38266002",
      "display" : "Entire body as a whole"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "onsetAge" : {
    "value" : 14,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2025-03-10",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012825",
        "display" : "Mild"
      }]
    }
  }],
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000098",
        "display" : "Tall stature"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-4"
    }]
  }],
  "note" : [{
    "text" : "Hochwuchs seit der Adoleszenz, typisch fuer Marfan-Syndrom. 195 cm bei Alter 30."
  }]
}

```
