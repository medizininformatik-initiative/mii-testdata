# mii-exa-test-data-lungenfunktion-vc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-vc-1**

## Example Observation: mii-exa-test-data-lungenfunktion-vc-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion VC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-vc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Spirometry (procedure)](Procedure-mii-exa-test-data-lungenfunktion-spirometrie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Slow vital capacity (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 3.3 L (Details: UCUM codeL = 'L')

**interpretation**: Normal

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 2.96 L (Details: UCUM codeL = 'L') | 4.44 L (Details: UCUM codeL = 'L') |

**hasMember**: [Observation Expiratory reserve volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-irv-erv-1.md)

**derivedFrom**: [DocumentReference: status = current; type = Pulmonary function report (record artifact); date = 2025-02-18 11:45:00+0100](DocumentReference-mii-exa-test-data-lungenfunktion-docref-rohdaten-1.md)

> **component****code**: Vital capacity [Volume] Respiratory system Predicted**value**: 3.7 L (Details: UCUM codeL = 'L')

> **component****code**: Percentage of predicted vital capacity (observable entity)**value**: 89 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-vc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-vc"],
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
      "code" : "83411002",
      "display" : "Slow vital capacity (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "19866-3",
      "display" : "Vital capacity [Volume] Respiratory system by Spirometry"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 3.3,
    "unit" : "L",
    "system" : "http://unitsofmeasure.org",
    "code" : "L"
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "249862003",
      "display" : "Sitting upright (finding)"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 2.96,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    },
    "high" : {
      "value" : 4.44,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-irv-erv-1"
  }],
  "derivedFrom" : [{
    "reference" : "DocumentReference/mii-exa-test-data-lungenfunktion-docref-rohdaten-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "19865-5",
        "display" : "Vital capacity [Volume] Respiratory system Predicted"
      }]
    },
    "valueQuantity" : {
      "value" : 3.7,
      "unit" : "L",
      "system" : "http://unitsofmeasure.org",
      "code" : "L"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "445389005",
        "display" : "Percentage of predicted vital capacity (observable entity)"
      },
      {
        "system" : "http://loinc.org",
        "code" : "98088-8",
        "display" : "Vital capacity/predicted VC Respiratory system by Spirometry"
      }]
    },
    "valueQuantity" : {
      "value" : 89,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
