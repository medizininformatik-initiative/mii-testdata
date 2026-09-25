# mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1**

## Example Observation: mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SDD Schwerbehindertenausweis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schwerbehindertenausweis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Social History, Survey

**code**: Schwerbehindertenausweis vorhanden

**subject**: [Renate Beispielmann Female, DoB: 1958-03-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#SDD-TEST-001)](Patient-mii-exa-test-data-soziodemographie-patient-1.md)

**effective**: 2025-05-12

**value**: Yes

> **component****code**: Grad der Behinderung**value**: 60 % (Details: UCUM code% = '%')

> **component****code**: Merkzeichen**value**: G – erhebliche Gehbehinderung

> **component****code**: Gültigkeitszeitraum von**value**: 2022-08-01

> **component****code**: Gültigkeitszeitraum bis**value**: 2027-07-31



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-schwerbehindertenausweis"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101720-1"
    }],
    "text" : "Schwerbehindertenausweis vorhanden"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-soziodemographie-patient-1"
  },
  "effectiveDateTime" : "2025-05-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
      "code" : "Y",
      "display" : "Yes"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "code" : "Y",
      "display" : "Yes"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schwerbehindertenausweis",
        "code" : "gdb",
        "display" : "Grad der Behinderung"
      }]
    },
    "valueQuantity" : {
      "value" : 60,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schwerbehindertenausweis",
        "code" : "merkzeichen",
        "display" : "Merkzeichen"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-merkzeichen",
        "code" : "G",
        "display" : "G – erhebliche Gehbehinderung"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schwerbehindertenausweis",
        "code" : "gueltig-von",
        "display" : "Gültigkeitszeitraum von"
      }]
    },
    "valueDateTime" : "2022-08-01"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-schwerbehindertenausweis",
        "code" : "gueltig-bis",
        "display" : "Gültigkeitszeitraum bis"
      }]
    },
    "valueDateTime" : "2027-07-31"
  }]
}

```
