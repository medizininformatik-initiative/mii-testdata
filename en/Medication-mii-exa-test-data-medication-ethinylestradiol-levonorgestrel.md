# mii-exa-test-data-medication-ethinylestradiol-levonorgestrel - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-ethinylestradiol-levonorgestrel**

## Example Medication: mii-exa-test-data-medication-ethinylestradiol-levonorgestrel

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Levonorgestrel und Ethinylestradiol

**status**: Active

**form**: Film-coated tablet

> **ingredient****item**: Ethinylestradiol**strength**: 0.03 mg (Details: UCUM codemg = 'mg')/1 1 (Details: UCUM code1 = '1')

> **ingredient****item**: Levonorgestrel**strength**: 0.15 mg (Details: UCUM codemg = 'mg')/1 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-ethinylestradiol-levonorgestrel",
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
      "version" : "2024",
      "code" : "G03AA07",
      "display" : "Levonorgestrel und Ethinylestradiol"
    }]
  },
  "status" : "active",
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10221000",
      "display" : "Film-coated tablet"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "version" : "20260105",
        "code" : "02200"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 0.03,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "version" : "20260105",
        "code" : "03335"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 0.15,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  }]
}

```
