# mii-exa-test-data-symptom-observation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-observation-1**

## Example Observation: mii-exa-test-data-symptom-observation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Observation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Supporting info**: [Condition Tension-type headache](Condition-mii-exa-test-data-symptom-condition-1.md)

**identifier**: `https://www.charite.de/fhir/sid/symptom-observation`/SYMP-OBS-0001

**status**: Final

**category**: Exam

**code**: Symptom

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**effective**: 2025-03-04

**issued**: 2025-03-04 10:30:00+0100

**value**: Drueckender, beidseitiger Kopfschmerz

**interpretation**: Abnormal

**bodySite**: Head structure

**method**: History taking

**hasMember**: [Observation Pain severity - 0-10 verbal numeric rating [Score] - Reported](Observation-mii-exa-test-data-symptom-observation-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Frequency (attribute) | Kopfschmerzen an mehr als 15 Tagen pro Monat |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-symptom-observation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-symptom-condition-1"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-observation",
    "value" : "SYMP-OBS-0001"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "75325-1",
      "display" : "Symptom"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "effectiveDateTime" : "2025-03-04",
  "issued" : "2025-03-04T10:30:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "25064002",
      "display" : "Headache"
    }],
    "text" : "Drueckender, beidseitiger Kopfschmerz"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "69536005",
      "display" : "Head structure"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84100007",
      "display" : "History taking"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-symptom-observation-2"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260864003",
        "display" : "Frequency (attribute)"
      }]
    },
    "valueString" : "Kopfschmerzen an mehr als 15 Tagen pro Monat"
  }]
}

```
