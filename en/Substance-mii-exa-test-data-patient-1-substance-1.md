# mii-exa-test-data-patient-1-substance-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-substance-1**

## Example Substance: mii-exa-test-data-patient-1-substance-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Substance Additiv](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**category**: Chemical

**code**: Edetic acid (substance)

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Quantity** | **Substance[x]** |
| * | 1.8 mg (Details: UCUM codemg = 'mg')/1 mL (Details: UCUM codemL = 'mL') | Edetic acid (substance) |



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "mii-exa-test-data-patient-1-substance-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/substance-category",
      "code" : "chemical",
      "display" : "Chemical"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "69519002",
      "display" : "Edetic acid (substance)"
    }]
  },
  "ingredient" : [{
    "quantity" : {
      "numerator" : {
        "value" : 1.8,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    },
    "substanceCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "69519002",
        "display" : "Edetic acid (substance)"
      }]
    }
  }]
}

```
