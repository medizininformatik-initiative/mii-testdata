# mii-exa-test-data-patient-12-encounter-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-encounter-1**

## Example Encounter: mii-exa-test-data-patient-12-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Visit number/MII_0000016

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Einrichtungskontakt, Normalstationär

**serviceType**: Innere Medizin

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**period**: 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100

> **diagnosis****condition**: [Condition Pneumonia caused by Klebsiella pneumoniae](Condition-mii-exa-test-data-patient-12-diagnose-1.md)**use**: Krankenhaus Hauptdiagnose**rank**: 1

> **diagnosis****condition**: [Condition Sepsis: Sonstige gramnegative Erreger](Condition-mii-exa-test-data-patient-12-diagnose-2.md)**use**: DRG-Nebendiagnose**rank**: 2

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
  "id" : "mii-exa-test-data-patient-12-encounter-1",
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
    "value" : "MII_0000016"
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
      "code" : "0100"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "period" : {
    "start" : "2025-03-08T14:20:00+01:00",
    "end" : "2025-03-25T11:00:00+01:00"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-1"
    },
    "use" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/KontaktDiagnoseProzedur",
        "code" : "hospital-main-diagnosis",
        "display" : "Krankenhaus Hauptdiagnose"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "DD",
        "display" : "Discharge diagnosis"
      }]
    },
    "rank" : 1
  },
  {
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-2"
    },
    "use" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/KontaktDiagnoseProzedur",
        "code" : "secondary-DRG",
        "display" : "DRG-Nebendiagnose"
      }]
    },
    "rank" : 2
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
            "code" : "01",
            "display" : "Behandlung regulär beendet"
          }
        },
        {
          "url" : "DritteStelle",
          "valueCoding" : {
            "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
            "code" : "2",
            "display" : "arbeitsunfähig entlassen"
          }
        }],
        "url" : "http://fhir.de/StructureDefinition/Entlassungsgrund"
      }]
    }
  },
  "serviceProvider" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite",
    "display" : "Charité - Universitätsmedizin Berlin"
  }
}

```
