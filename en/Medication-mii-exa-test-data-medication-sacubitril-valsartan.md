# mii-exa-test-data-medication-sacubitril-valsartan - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-sacubitril-valsartan**

## Example Medication: mii-exa-test-data-medication-sacubitril-valsartan

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Sacubitril/Valsartan 49 mg/51 mg

**form**: Tablet

> **ingredient****item**: Sacubitril**strength**: 49 milligram (Details: UCUM codemg = 'mg')/1 Tablet (Details: standardterms.edqm.eu code10219000 = 'Tablet')

> **ingredient****item**: Valsartan**strength**: 51 milligram (Details: UCUM codemg = 'mg')/1 Tablet (Details: standardterms.edqm.eu code10219000 = 'Tablet')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-sacubitril-valsartan",
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
      "code" : "C09DX04",
      "display" : "Valsartan und Sacubitril"
    }],
    "text" : "Sacubitril/Valsartan 49 mg/51 mg"
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10219000",
      "display" : "Tablet"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "716072000",
        "display" : "Sacubitril (substance)"
      }],
      "text" : "Sacubitril"
    },
    "strength" : {
      "numerator" : {
        "value" : 49,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Tablet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "386876001",
        "display" : "Valsartan (substance)"
      }],
      "text" : "Valsartan"
    },
    "strength" : {
      "numerator" : {
        "value" : 51,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Tablet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000"
      }
    }
  }]
}

```
