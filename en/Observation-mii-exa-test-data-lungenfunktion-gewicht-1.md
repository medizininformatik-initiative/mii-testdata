# mii-exa-test-data-lungenfunktion-gewicht-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-gewicht-1**

## Example Observation: mii-exa-test-data-lungenfunktion-gewicht-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Gewicht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-gewicht)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Total body plethysmography (procedure)](Procedure-mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Body weight (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 68 ug (Details: UCUM codeug = 'ug')

**interpretation**: Normal

**method**: Weighing patient (procedure)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 55 ug (Details: UCUM codeug = 'ug') | 85 ug (Details: UCUM codeug = 'ug') |

**hasMember**: [Observation Body weight (observable entity)](Observation-mii-exa-test-data-lungenfunktion-gewicht-2.md)

**derivedFrom**: [DocumentReference: status = current; type = Pulmonary function report (record artifact); date = 2025-02-18 11:45:00+0100](DocumentReference-mii-exa-test-data-lungenfunktion-docref-rohdaten-1.md)

> **component****code**: Ideal body weight**value**: 65 ug (Details: UCUM codeug = 'ug')

> **component****code**: Z-score calculation technique (qualifier value)**value**: 0.3 SD (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-gewicht-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-gewicht"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "27113001",
      "display" : "Body weight (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 68,
    "unit" : "ug",
    "system" : "http://unitsofmeasure.org",
    "code" : "ug"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "39857003",
      "display" : "Weighing patient (procedure)"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 55,
      "unit" : "ug",
      "system" : "http://unitsofmeasure.org",
      "code" : "ug"
    },
    "high" : {
      "value" : 85,
      "unit" : "ug",
      "system" : "http://unitsofmeasure.org",
      "code" : "ug"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-gewicht-2"
  }],
  "derivedFrom" : [{
    "reference" : "DocumentReference/mii-exa-test-data-lungenfunktion-docref-rohdaten-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "50064-5",
        "display" : "Ideal body weight"
      }]
    },
    "valueQuantity" : {
      "value" : 65,
      "unit" : "ug",
      "system" : "http://unitsofmeasure.org",
      "code" : "ug"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "1078210003",
        "display" : "Z-score calculation technique (qualifier value)"
      }]
    },
    "valueQuantity" : {
      "value" : 0.3,
      "unit" : "SD",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
