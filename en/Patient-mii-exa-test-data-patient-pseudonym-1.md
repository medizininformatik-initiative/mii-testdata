# mii-exa-test-data-patient-pseudonym-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-pseudonym-1**

## Example Patient: mii-exa-test-data-patient-pseudonym-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Person Patient (Pseudonymisiert)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Anonymous Patient Other, DoB: 1975 ( pseudonymized)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | Krankenversichertennummer/?ngen-9? |
| Contact Detail | Berlin 13051 DE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-patient-pseudonym-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code" : "PSEUDED"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/pseudonym",
    "value" : "PSN-TEST-0001"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
    },
    "assigner" : {
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "XX"
          }]
        },
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "987654321"
      }
    }
  }],
  "active" : true,
  "gender" : "other",
  "_gender" : {
    "extension" : [{
      "url" : "http://fhir.de/StructureDefinition/gender-amtlich-de",
      "valueCoding" : {
        "system" : "http://fhir.de/CodeSystem/gender-amtlich-de",
        "code" : "X",
        "display" : "unbestimmt"
      }
    }]
  },
  "birthDate" : "1975",
  "address" : [{
    "type" : "both",
    "city" : "Berlin",
    "_city" : {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/destatis/ags",
        "valueCoding" : {
          "system" : "http://fhir.de/sid/destatis/ags",
          "code" : "11000000"
        }
      }]
    },
    "postalCode" : "13051",
    "country" : "DE"
  }]
}

```
