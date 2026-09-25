# mii-exa-test-data-patient-10 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-10**

## Example Patient: mii-exa-test-data-patient-10

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Person Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient), [Consent Management: Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Markus Wolf (official) Male, DoB: 1969-09-17 ( Medical record number (use: usual, ))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Other Id: | Krankenversichertennummer/H789012345 (use: official, ) |
| Contact Detail | Am Park 12 Frankfurt am Main 60311 DE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-patient-10",
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
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
    "value" : "654987321",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      },
      "display" : "Charité - Universitätsmedizin Berlin"
    }
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "H789012345",
    "assigner" : {
      "identifier" : {
        "use" : "official",
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "456789012"
      }
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Wolf",
    "given" : ["Markus"]
  }],
  "gender" : "male",
  "birthDate" : "1969-09-17",
  "deceasedBoolean" : false,
  "address" : [{
    "type" : "both",
    "line" : ["Am Park 12"],
    "city" : "Frankfurt am Main",
    "postalCode" : "60311",
    "country" : "DE"
  }]
}

```
