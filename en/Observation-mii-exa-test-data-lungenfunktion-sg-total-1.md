# mii-exa-test-data-lungenfunktion-sg-total-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-sg-total-1**

## Example Observation: mii-exa-test-data-lungenfunktion-sg-total-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion sG Total](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-sg-total)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Total body plethysmography (procedure)](Procedure-mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Specific airway conductance (observable entity)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 0.74 /kPA*s (Details: UCUM code/kPA.s = '/kPA.s')

**interpretation**: Low

**method**: Sitting upright (finding)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0.85 1/(kPa.s) (Details: UCUM code1/(kPa.s) = '1/(kPa.s)') | 2.1 1/(kPa.s) (Details: UCUM code1/(kPa.s) = '1/(kPa.s)') |

**hasMember**: 

* [Observation Total airway resistance (observable entity)](Observation-mii-exa-test-data-lungenfunktion-r-1.md)
* [Observation Functional residual capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-frc-1.md)

**derivedFrom**: [Observation Specific airway resistance (observable entity)](Observation-mii-exa-test-data-lungenfunktion-sr-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-sg-total-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-sg-total"],
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
      "code" : "79412009",
      "display" : "Specific airway conductance (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 0.74,
    "unit" : "/kPA*s",
    "system" : "http://unitsofmeasure.org",
    "code" : "/kPA.s"
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
      "value" : 0.85,
      "unit" : "1/(kPa.s)",
      "system" : "http://unitsofmeasure.org",
      "code" : "1/(kPa.s)"
    },
    "high" : {
      "value" : 2.1,
      "unit" : "1/(kPa.s)",
      "system" : "http://unitsofmeasure.org",
      "code" : "1/(kPa.s)"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-r-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-frc-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-sr-1"
  }]
}

```
