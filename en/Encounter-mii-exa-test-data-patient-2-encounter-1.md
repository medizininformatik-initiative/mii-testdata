# mii-exa-test-data-patient-2-encounter-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-encounter-1**

## Example Encounter: mii-exa-test-data-patient-2-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Visit number/MII_0000004

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Einrichtungskontakt, Normalstationär

**serviceType**: Hämatologie und internistische Onkologie

**subject**: [Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md)

**period**: 2024-03-02 --> 2024-03-13

### Hospitalizations

| | | |
| :--- | :--- | :--- |
| - | **AdmitSource** | **DischargeDisposition** |
| * | Einweisung durch einen Arzt |  |

**serviceProvider**: [Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-patient-2-encounter-1",
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
    "value" : "MII_0000004"
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
      "code" : "0500"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "period" : {
    "start" : "2024-03-02",
    "end" : "2024-03-13"
  },
  "hospitalization" : {
    "admitSource" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass",
        "code" : "E",
        "display" : "Einweisung durch einen Arzt"
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
