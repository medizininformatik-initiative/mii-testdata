# mii-exa-test-data-patient-14 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14**

## Example Patient: mii-exa-test-data-patient-14

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Person Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient), [Consent Management: Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)

-------

| | |
| :--- | :--- |
| Other Id: | Krankenversichertennummer/P567890123 (use: official, ) |
| Contact Detail | Rigaer Straße 77 Berlin 10247 DE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-patient-14",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
    "http://fhir.de/ConsentManagement/StructureDefinition/Patient"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "P567890123",
    "assigner" : {
      "identifier" : {
        "use" : "official",
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "109519005"
      }
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
    "value" : "884612095",
    "assigner" : {
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "XX"
          }]
        },
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Brenneke",
    "given" : ["Hartmut"]
  }],
  "gender" : "male",
  "birthDate" : "1966-02-27",
  "address" : [{
    "type" : "both",
    "line" : ["Rigaer Straße 77"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Rigaer Straße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "77"
      }]
    }],
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
    "postalCode" : "10247",
    "country" : "DE"
  }]
}

```
