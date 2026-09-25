# mii-exa-test-data-lungenfunktion-fev-fvc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-fev-fvc-1**

## Example Observation: mii-exa-test-data-lungenfunktion-fev-fvc-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion FEV/FVC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev-fvc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Spirometry (procedure)](Procedure-mii-exa-test-data-lungenfunktion-spirometrie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Forced expired volume in one second/forced vital capacity ratio (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 67.7 % (Details: UCUM code% = '%')

**interpretation**: Low

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 70 % (Details: UCUM code% = '%') | 85 % (Details: UCUM code% = '%') |

**hasMember**: 

* [Observation Forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-1.md)
* [Observation Forced vital capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fvc-1.md)

**derivedFrom**: 

* [Observation Forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-1.md)
* [Observation Forced vital capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fvc-1.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Expected forced expiratory volume in one second/Forced vital capacity ratio (observable entity) | 78 % (Details: UCUM code% = '%') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-fev-fvc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-fev-fvc"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-lungenfunktion-spirometrie-messung-1"
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
      "code" : "251944000",
      "display" : "Forced expired volume in one second/forced vital capacity ratio (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "19926-5",
      "display" : "FEV1/FVC"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 67.7,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "249862003",
      "display" : "Sitting upright (finding)"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 70,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "high" : {
      "value" : 85,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fvc-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fvc-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "310360002",
        "display" : "Expected forced expiratory volume in one second/Forced vital capacity ratio (observable entity)"
      },
      {
        "system" : "http://loinc.org",
        "code" : "19925-7",
        "display" : "FEV1/FVC Predicted"
      }]
    },
    "valueQuantity" : {
      "value" : 78,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
