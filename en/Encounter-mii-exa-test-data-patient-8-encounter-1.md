# mii-exa-test-data-patient-8-encounter-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-8-encounter-1**

## Example Encounter: mii-exa-test-data-patient-8-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Visit number/MII_0000009

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Einrichtungskontakt, Normalstationär

**serviceType**: Kardiologie

**subject**: [Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-8.md)

**period**: 2023-11-10 --> 2023-11-15

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Condition** | **Use** | **Rank** |
| * | [Condition I21.9](Condition-mii-exa-test-data-patient-8-todesursache-1.md) | Discharge diagnosis | 1 |

### Hospitalizations

| | | |
| :--- | :--- | :--- |
| - | **AdmitSource** | **DischargeDisposition** |
| * | Notfall |  |

**serviceProvider**: [Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-patient-8-encounter-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
    "value" : "MII_0000009"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/Kontaktebene",
      "code" : "einrichtungskontakt"
    }]
  },
  {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/kontaktart-de",
      "code" : "normalstationaer"
    }]
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
      "code" : "0300"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "period" : {
    "start" : "2023-11-10",
    "end" : "2023-11-15"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-patient-8-todesursache-1"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "DD",
        "display" : "Discharge diagnosis"
      }]
    },
    "rank" : 1
  }],
  "hospitalization" : {
    "admitSource" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass",
        "code" : "N",
        "display" : "Notfall"
      }]
    },
    "dischargeDisposition" : {
      "extension" : [{
        "extension" : [{
          "url" : "ErsteUndZweiteStelle",
          "valueCoding" : {
            "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteStelle",
            "code" : "07",
            "display" : "Tod"
          }
        },
        {
          "url" : "DritteStelle",
          "valueCoding" : {
            "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
            "code" : "9",
            "display" : "keine Angabe"
          }
        }],
        "url" : "http://fhir.de/StructureDefinition/Entlassungsgrund"
      }]
    }
  },
  "serviceProvider" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite",
    "identifier" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
      "value" : "Charité"
    },
    "display" : "Charité - Universitätsmedizin Berlin"
  }
}

```
