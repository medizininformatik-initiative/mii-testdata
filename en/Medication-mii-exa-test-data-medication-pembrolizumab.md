# mii-exa-test-data-medication-pembrolizumab - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-pembrolizumab**

## Example Medication: mii-exa-test-data-medication-pembrolizumab

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Pembrolizumab 100 mg/4 mL

**form**: Concentrate for solution for infusion

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Pembrolizumab | 100 milligram (Details: UCUM codemg = 'mg')/4 milliliter (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-pembrolizumab",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "L01FF02",
      "display" : "Pembrolizumab"
    }],
    "text" : "Pembrolizumab 100 mg/4 mL"
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50060000",
      "display" : "Concentrate for solution for infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "716125002",
        "display" : "Pembrolizumab (substance)"
      }],
      "text" : "Pembrolizumab"
    },
    "strength" : {
      "numerator" : {
        "value" : 100,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 4,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }]
}

```
