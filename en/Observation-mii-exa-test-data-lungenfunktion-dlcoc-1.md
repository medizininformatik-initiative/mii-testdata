# mii-exa-test-data-lungenfunktion-dlcoc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-dlcoc-1**

## Example Observation: mii-exa-test-data-lungenfunktion-dlcoc-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion DLCOc](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dlcoc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Carbon monoxide diffusing capacity measurement (procedure)](Procedure-mii-exa-test-data-lungenfunktion-diffusion-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Diffusion capacity.carbon monoxide adjusted for hemoglobin

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 7.45 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')

**interpretation**: Normal

**method**: Single-breath technique (qualifier value)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 6.2 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)') | 9.4 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)') |

**hasMember**: 

* [Observation Single breath carbon monoxide diffusing capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-dlco-1.md)
* [Observation Hemoglobin (substance)](Observation-mii-exa-test-data-lungenfunktion-hb-1.md)

**derivedFrom**: [Observation Hemoglobin (substance)](Observation-mii-exa-test-data-lungenfunktion-hb-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-dlcoc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dlcoc"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-lungenfunktion-diffusion-messung-1"
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
      "system" : "http://loinc.org",
      "code" : "19913-3",
      "display" : "Diffusion capacity.carbon monoxide adjusted for hemoglobin"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 7.45,
    "unit" : "mmol/(min.kPa)",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/(min.kPa)"
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
      "code" : "264284001",
      "display" : "Single-breath technique (qualifier value)"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 6.2,
      "unit" : "mmol/(min.kPa)",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/(min.kPa)"
    },
    "high" : {
      "value" : 9.4,
      "unit" : "mmol/(min.kPa)",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/(min.kPa)"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dlco-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-hb-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-hb-1"
  }]
}

```
