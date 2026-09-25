# mii-exa-test-data-medication-glucoseloesung - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-glucoseloesung**

## Example Medication: mii-exa-test-data-medication-glucoseloesung

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Glucose 5% B.braun Ecoflac Plus

**status**: Active

**form**: Solution for infusion

> **ingredient****item**: Glucose**isActive**: true**strength**: 50 g (Details: UCUM codeg = 'g')/1000 ml (Details: UCUM codeml = 'ml')

> **ingredient****item**: Wasser für Injektionszwecke**isActive**: false



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-glucoseloesung",
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
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "03705422",
      "display" : "Glucose 5% B.braun Ecoflac Plus"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "V06DC01",
      "display" : "Glucose"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "version" : "2023",
      "code" : "V06DC01",
      "display" : "glucose"
    }]
  },
  "status" : "active",
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11210000",
      "display" : "Solution for infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "version" : "20260105",
        "code" : "12829",
        "display" : "Glucose"
      },
      {
        "system" : "urn:oid:2.16.840.1.113883.6.61",
        "code" : "50-99-7",
        "display" : "Glucose"
      },
      {
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "5SL0G7R0OK",
        "display" : "ANHYDROUS DEXTROSE"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "67079006",
        "display" : "Glucose (substance)"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 50,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 1000,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ml"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "version" : "20260105",
        "code" : "00343",
        "display" : "Wasser für Injektionszwecke"
      },
      {
        "system" : "urn:oid:2.16.840.1.113883.6.61",
        "code" : "7732-18-5",
        "display" : "WATER"
      },
      {
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "059QF0KO0R",
        "display" : "WATER"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "11713004",
        "display" : "Water (substance)"
      }]
    },
    "isActive" : false
  }]
}

```
