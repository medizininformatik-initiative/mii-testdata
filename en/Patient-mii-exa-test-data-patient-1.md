# mii-exa-test-data-patient-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1**

## Example Patient: mii-exa-test-data-patient-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Person Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient), [Consent Management: Patient](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)

-------

| | |
| :--- | :--- |
| Deceased: | 2024-02-22 |
| Other Id: | Krankenversichertennummer/A123456780 (use: official, ) |
| Contact Detail | Dorfstraße 9 Schloss Malchow Berlin 13051 DE |
| Links: | * Also see: [Anonymous Patient Other, DoB: 1975 ( pseudonymized)](Patient-mii-exa-test-data-patient-pseudonym-1.md)
 |
| Patient Nationality: | * code: Deutschland
* period: 1977-05-24 --> (ongoing)
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Potsdam DE |
| Person Recorded Sex Or Gender: | * value: Male (finding)
* type: Sex assigned at birth
* acquisitionDate: 1977-05-24
 |
| Patient Citizenship: | * code: Deutschland
* period: 1977-05-24 --> (ongoing)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-patient-1",
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
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "Potsdam",
      "country" : "DE"
    }
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "DE",
          "display" : "Deutschland"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "1977-05-24"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "DE",
          "display" : "Deutschland"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "1977-05-24"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  },
  {
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248153007",
          "display" : "Male (finding)"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex assigned at birth"
        }]
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "1977-05-24"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
        "code" : "KVZ10"
      }]
    },
    "system" : "http://fhir.de/sid/gkv/kvid-10",
    "value" : "A123456780",
    "assigner" : {
      "identifier" : {
        "use" : "official",
        "system" : "http://fhir.de/sid/arge-ik/iknr",
        "value" : "987654321"
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
    "value" : "808439625",
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
    "family" : "Markgraf von Brandenburg-Schwedt",
    "_family" : {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/humanname-namenszusatz",
        "valueString" : "Markgraf"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/humanname-own-name",
        "valueString" : "Brandenburg-Schwedt"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix",
        "valueString" : "von"
      }]
    },
    "given" : ["Christian", "Ludwig"],
    "prefix" : ["Prinz von Preußen"],
    "_prefix" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier",
        "valueCode" : "NB"
      }]
    }],
    "suffix" : ["aus dem Haus der Hohenzollern"]
  }],
  "gender" : "male",
  "birthDate" : "1977-05-24",
  "deceasedDateTime" : "2024-02-22",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-precinct",
      "valueString" : "Malchow"
    }],
    "type" : "both",
    "line" : ["Dorfstraße 9", "Schloss", "Malchow"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Dorfstraße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "9"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Schloss"
      }]
    },
    null],
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
  }],
  "link" : [{
    "other" : {
      "reference" : "Patient/mii-exa-test-data-patient-pseudonym-1"
    },
    "type" : "seealso"
  }]
}

```
