# mii-exa-test-data-onko-tumorkonferenz-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tumorkonferenz-1**

## Example CarePlan: mii-exa-test-data-onko-tumorkonferenz-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: TK-2021-001

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**created**: 2021-06-20

**addresses**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**supportingInfo**: [Diagnostic Report for 'Pathology report Cancer Narrative' for '->Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)'](DiagnosticReport-mii-exa-test-data-onko-befund-1.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Operation | Scheduled |


> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Chemotherapie | Scheduled |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-onko-tumorkonferenz-1",
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
    "value" : "TK-2021-001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "created" : "2021-06-20",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-onko-befund-1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "OP",
          "display" : "Operation"
        }]
      },
      "status" : "scheduled"
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
      "status" : "scheduled"
    }
  }]
}

```
