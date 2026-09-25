# mii-exa-test-data-onko-tumorkonferenz-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tumorkonferenz-2**

## Example CarePlan: mii-exa-test-data-onko-tumorkonferenz-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: TK-2021-002

**status**: Completed

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**created**: 2021-10-15

**addresses**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Strahlentherapie | Completed |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | Chemotherapie | Cancelled | ja |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-onko-tumorkonferenz-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "value" : "TK-2021-002"
  }],
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "postop",
      "display" : "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "created" : "2021-10-15",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "ST",
          "display" : "Strahlentherapie"
        }]
      },
      "status" : "completed"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH",
          "display" : "Chemotherapie"
        }]
      },
      "status" : "cancelled",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
          "code" : "J",
          "display" : "ja"
        }]
      }
    }
  }]
}

```
