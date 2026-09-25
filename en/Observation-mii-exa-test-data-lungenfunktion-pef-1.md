# mii-exa-test-data-lungenfunktion-pef-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-pef-1**

## Example Observation: mii-exa-test-data-lungenfunktion-pef-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion PEF](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-pef)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Spirometry (procedure)](Procedure-mii-exa-test-data-lungenfunktion-spirometrie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Peak expiratory flow rate (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 5.2 L/s (Details: UCUM codeL/s = 'L/s')

**interpretation**: Low

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 5.5 L/s (Details: UCUM codeL/s = 'L/s') | 8.3 L/s (Details: UCUM codeL/s = 'L/s') |

**hasMember**: [Observation Peak expiratory flow rate (observable entity)](Observation-mii-exa-test-data-lungenfunktion-pef-prov-1.md)

**derivedFrom**: [DocumentReference: status = current; type = Pulmonary function report (record artifact); date = 2025-02-18 11:45:00+0100](DocumentReference-mii-exa-test-data-lungenfunktion-docref-rohdaten-1.md)

> **component****code**: Expected peak expiratory flow rate (observable entity)**value**: 6.9 L/s (Details: UCUM codeL/s = 'L/s')

> **component****code**: Maximum expiratory gas flow/Predicted maximum expiratory gas flow Respiratory system airway --pre bronchodilation**value**: 75 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-pef-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-pef"],
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
      "code" : "18491006",
      "display" : "Peak expiratory flow rate (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "33452-4",
      "display" : "Maximum expiratory gas flow Respiratory system airway"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 5.2,
    "unit" : "L/s",
    "system" : "http://unitsofmeasure.org",
    "code" : "L/s"
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
      "value" : 5.5,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
    },
    "high" : {
      "value" : 8.3,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-pef-prov-1"
  }],
  "derivedFrom" : [{
    "reference" : "DocumentReference/mii-exa-test-data-lungenfunktion-docref-rohdaten-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "313192007",
        "display" : "Expected peak expiratory flow rate (observable entity)"
      },
      {
        "system" : "http://loinc.org",
        "code" : "69974-4",
        "display" : "Maximum expiratory gas flow Respiratory system airway Predicted"
      }]
    },
    "valueQuantity" : {
      "value" : 6.9,
      "unit" : "L/s",
      "system" : "http://unitsofmeasure.org",
      "code" : "L/s"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "69977-7",
        "display" : "Maximum expiratory gas flow/Predicted maximum expiratory gas flow Respiratory system airway --pre bronchodilation"
      }]
    },
    "valueQuantity" : {
      "value" : 75,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
