# mii-exa-test-data-onko-tumorkonferenz-molekular-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tumorkonferenz-molekular-1**

## Example CarePlan: mii-exa-test-data-onko-tumorkonferenz-molekular-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: MTB-2022-001

**status**: Active

**intent**: Plan

**category**: Molekulares Tumorboard

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**created**: 2022-03-10

**addresses**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Zielgerichtete Substanzen | Scheduled |


> **activity****progress**: 
> 

BRCA1 mutation detected - PARP inhibitor recommended


**reference**: [RequestGroup Zielgerichtete Substanzen](RequestGroup-mii-exa-test-data-onko-therapieempfehlung-parp-1.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-onko-tumorkonferenz-molekular-1",
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
    "value" : "MTB-2022-001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }],
    "text" : "Molekulares Tumorboard"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "created" : "2022-03-10",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "ZS",
          "display" : "Zielgerichtete Substanzen"
        }]
      },
      "status" : "scheduled"
    }
  },
  {
    "progress" : [{
      "text" : "BRCA1 mutation detected - PARP inhibitor recommended"
    }],
    "reference" : {
      "reference" : "RequestGroup/mii-exa-test-data-onko-therapieempfehlung-parp-1"
    }
  }]
}

```
