# mii-exa-test-data-kardiologie-lvef-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-lvef-1**

## Example Observation: mii-exa-test-data-kardiologie-lvef-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Linksventrikulaere Ejektionsfraktion](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Imaging

**code**: Left ventricular ejection fraction (observable entity)

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**effective**: 2025-03-11 09:30:00+0100

**performer**: Facharzt fuer Kardiologie

**value**: 38 % (Details: UCUM code% = '%')

**interpretation**: Low

**bodySite**: Left cardiac ventricular structure (body structure)

**method**: Transthoracic echocardiography (procedure)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Text** |
| * | 40 % (Details: UCUM code% = '%') | Reduced |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-kardiologie-lvef-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "250908004",
      "display" : "Left ventricular ejection fraction (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "10230-1",
      "display" : "Left ventricular Ejection fraction"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "effectiveDateTime" : "2025-03-11T09:30:00+01:00",
  "performer" : [{
    "display" : "Facharzt fuer Kardiologie"
  }],
  "valueQuantity" : {
    "value" : 38,
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
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "87878005",
      "display" : "Left cardiac ventricular structure (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "433236007",
      "display" : "Transthoracic echocardiography (procedure)"
    }]
  },
  "referenceRange" : [{
    "high" : {
      "value" : 40,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "text" : "Reduced"
  }]
}

```
