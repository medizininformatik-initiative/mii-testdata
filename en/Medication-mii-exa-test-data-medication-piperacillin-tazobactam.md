# mii-exa-test-data-medication-piperacillin-tazobactam - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-piperacillin-tazobactam**

## Example Medication: mii-exa-test-data-medication-piperacillin-tazobactam

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Piperacillin/Tazobactam 4 g/0,5 g

**form**: Powder for concentrate for solution for infusion

> **ingredient****item**: Piperacillin**strength**: 4 gram (Details: UCUM codeg = 'g')/1 Powder for concentrate for solution for infusion (Details: standardterms.edqm.eu code50043000 = 'Powder for concentrate for solution for infusion')

> **ingredient****item**: Tazobactam**strength**: 500 milligram (Details: UCUM codemg = 'mg')/1 Powder for concentrate for solution for infusion (Details: standardterms.edqm.eu code50043000 = 'Powder for concentrate for solution for infusion')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-piperacillin-tazobactam",
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
      "code" : "J01CR05",
      "display" : "Piperacillin und Beta-Lactamase-Inhibitoren"
    }],
    "text" : "Piperacillin/Tazobactam 4 g/0,5 g"
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
        "code" : "372836004",
        "display" : "Piperacillin (substance)"
      }],
      "text" : "Piperacillin"
    },
    "strength" : {
      "numerator" : {
        "value" : 4,
        "unit" : "gram",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Powder for concentrate for solution for infusion",
        "system" : "http://standardterms.edqm.eu",
        "code" : "50043000"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "96007008",
        "display" : "Tazobactam (substance)"
      }],
      "text" : "Tazobactam"
    },
    "strength" : {
      "numerator" : {
        "value" : 500,
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
