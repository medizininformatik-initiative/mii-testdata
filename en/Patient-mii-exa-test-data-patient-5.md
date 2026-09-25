# mii-exa-test-data-patient-5 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5**

## Example Patient: mii-exa-test-data-patient-5

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Person Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient), [Consent Management: Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Other Id: | Krankenversichertennummer/C200919710 (use: official, ) |
| Alt. Name: | Müller (Name changed for Marriage) |
| Contact Detail | Kantstraße 47 München 80636 DE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-patient-5",
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
    "value" : "925847361",
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
    "value" : "C200919710",
    "assigner" : {
      "identifier" : {
        "use" : "official",
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "987654321"
      }
    }
  }],
  "name" : [{
    "use" : "official",
    "family" : "Weber",
    "given" : ["Sabine", "Maria"]
  },
  {
    "use" : "maiden",
    "family" : "Müller"
  }],
  "gender" : "female",
  "birthDate" : "1985-03-12",
  "deceasedBoolean" : false,
  "address" : [{
    "type" : "both",
    "line" : ["Kantstraße 47"],
    "city" : "München",
    "postalCode" : "80636",
    "country" : "DE"
  }]
}

```
