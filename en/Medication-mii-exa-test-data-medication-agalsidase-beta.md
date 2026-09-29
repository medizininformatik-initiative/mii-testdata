# mii-exa-test-data-medication-agalsidase-beta - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-agalsidase-beta**

## Example Medication: mii-exa-test-data-medication-agalsidase-beta

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Agalsidase beta 35 mg

**form**: Powder for concentrate for solution for infusion

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Agalsidase beta | 35 milligram (Details: UCUM codemg = 'mg')/1 Powder for concentrate for solution for infusion (Details: standardterms.edqm.eu code50043000 = 'Powder for concentrate for solution for infusion') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-agalsidase-beta",
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
      "code" : "A16AB04",
      "display" : "Agalsidase beta"
    }],
    "text" : "Agalsidase beta 35 mg"
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50043000",
      "display" : "Powder for concentrate for solution for infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "424725004",
        "display" : "Agalsidase beta (substance)"
      }],
      "text" : "Agalsidase beta"
    },
    "strength" : {
      "numerator" : {
        "value" : 35,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Powder for concentrate for solution for infusion",
        "system" : "http://standardterms.edqm.eu",
        "code" : "50043000"
      }
    }
  }]
}

```
