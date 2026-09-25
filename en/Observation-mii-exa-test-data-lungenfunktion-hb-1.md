# mii-exa-test-data-lungenfunktion-hb-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-hb-1**

## Example Observation: mii-exa-test-data-lungenfunktion-hb-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Hb](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-hb)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Carbon monoxide diffusing capacity measurement (procedure)](Procedure-mii-exa-test-data-lungenfunktion-diffusion-messung-1.md)

**status**: Final

**category**: Procedure

**code**: Hemoglobin (substance)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**issued**: 2025-02-18 12:00:00+0100

**value**: 13.8 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL')

**interpretation**: Normal

**method**: Measured (qualifier value)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 12 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL') | 15.5 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-lungenfunktion-hb-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-hb"],
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
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "38082009",
      "display" : "Hemoglobin (substance)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "718-7",
      "display" : "Hemoglobin [Mass/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "issued" : "2025-02-18T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 13.8,
    "unit" : "g{Hemoglobin}/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g{Hemoglobin}/dL"
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
      "code" : "258104002",
      "display" : "Measured (qualifier value)"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 12,
      "unit" : "g{Hemoglobin}/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "g{Hemoglobin}/dL"
    },
    "high" : {
      "value" : 15.5,
      "unit" : "g{Hemoglobin}/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "g{Hemoglobin}/dL"
    }
  }]
}

```
