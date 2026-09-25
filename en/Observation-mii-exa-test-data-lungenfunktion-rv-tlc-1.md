# mii-exa-test-data-lungenfunktion-rv-tlc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-rv-tlc-1**

## Example Observation: mii-exa-test-data-lungenfunktion-rv-tlc-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Anteil Residualvolumen an Lungenkapazität](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rvl-tlc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Total body plethysmography (procedure)](Procedure-mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Residual volume/total lung capacity ratio (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 44 % (Details: UCUM code% = '%')

**interpretation**: High

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 25 % (Details: UCUM code% = '%') | 35 % (Details: UCUM code% = '%') |

**hasMember**: 

* [Observation Residual respiratory volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-rv-1.md)
* [Observation Total lung capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-tlc-1.md)

**derivedFrom**: 

* [Observation Residual respiratory volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-rv-1.md)
* [Observation Total lung capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-tlc-1.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Residual volume/Total capacity Predicted | 36 % (Details: UCUM code% = '%') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-rv-tlc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rvl-tlc"],
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
      "code" : "1366666000",
      "display" : "Residual volume/total lung capacity ratio (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "81454-1",
      "display" : "Residual volume/Total capacity --pre bronchodilation"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 44,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
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
      "value" : 25,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "high" : {
      "value" : 35,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-rv-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-tlc-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-rv-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-tlc-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "43252-6",
        "display" : "Residual volume/Total capacity Predicted"
      }]
    },
    "valueQuantity" : {
      "value" : 36,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
