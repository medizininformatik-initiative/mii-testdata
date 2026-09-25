# mii-exa-test-data-lungenfunktion-kcoc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-kcoc-1**

## Example Observation: mii-exa-test-data-lungenfunktion-kcoc-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion KCOc](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-kcoc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Carbon monoxide diffusing capacity measurement (procedure)](Procedure-mii-exa-test-data-lungenfunktion-diffusion-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Diffusion capacity.carbon monoxide/Alveolar volume adjusted for hemoglobin

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 1.5 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')

**interpretation**: Normal

**method**: Single-breath technique (qualifier value)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 1.2 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)') | 1.8 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)') |

**hasMember**: 

* [Observation Transfer coefficient (respiratory measure) (observable entity)](Observation-mii-exa-test-data-lungenfunktion-kco-1.md)
* [Observation Hemoglobin (substance)](Observation-mii-exa-test-data-lungenfunktion-hb-1.md)

**derivedFrom**: 

* [Observation Single breath carbon monoxide diffusing capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-dlco-1.md)
* [Observation Alveolar volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-va-1.md)
* [Observation Hemoglobin (substance)](Observation-mii-exa-test-data-lungenfunktion-hb-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-kcoc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-kcoc"],
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
      "code" : "69578-3",
      "display" : "Diffusion capacity.carbon monoxide/Alveolar volume adjusted for hemoglobin"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 1.5,
    "unit" : "mmol/(min.kPa.L)",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/(min.kPa.L)"
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
      "value" : 1.2,
      "unit" : "mmol/(min.kPa.L)",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/(min.kPa.L)"
    },
    "high" : {
      "value" : 1.8,
      "unit" : "mmol/(min.kPa.L)",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/(min.kPa.L)"
    }
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-kco-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-hb-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dlco-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-va-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-hb-1"
  }]
}

```
