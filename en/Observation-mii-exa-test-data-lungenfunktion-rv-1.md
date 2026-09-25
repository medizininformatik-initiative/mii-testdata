# mii-exa-test-data-lungenfunktion-rv-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-rv-1**

## Example Observation: mii-exa-test-data-lungenfunktion-rv-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion RV](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rv)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Total body plethysmography (procedure)](Procedure-mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Residual respiratory volume (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 2.6 L (Details: UCUM codeL = 'L')

**interpretation**: High

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 1.4 L (Details: UCUM codeL = 'L') | 2.2 L (Details: UCUM codeL = 'L') |

**derivedFrom**: [DocumentReference: status = current; type = Pulmonary function report (record artifact); date = 2025-02-18 11:45:00+0100](DocumentReference-mii-exa-test-data-lungenfunktion-docref-rohdaten-1.md)

> **component****code**: Residual volume Predicted**value**: 2 L (Details: UCUM codeL = 'L')

> **component****code**: Residual volume/Predicted by Plethysmograph body box**value**: 130 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-rv-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-rv"],
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
      "code" : "42457008",
      "display" : "Residual respiratory volume (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "20146-7",
      "display" : "Residual volume"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 2.6,
    "unit" : "L",
    "system" : "http://unitsofmeasure.org",
    "code" : "L"
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
      "value" : 1.4,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    },
    "high" : {
      "value" : 2.2,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  }],
  "derivedFrom" : [{
    "reference" : "DocumentReference/mii-exa-test-data-lungenfunktion-docref-rohdaten-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "20145-9",
        "display" : "Residual volume Predicted"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "94125-2",
        "display" : "Residual volume/Predicted by Plethysmograph body box"
      }]
    },
    "valueQuantity" : {
      "value" : 130,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
