# mii-exa-test-data-patient-1-encounter-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-encounter-1**

## Example Encounter: mii-exa-test-data-patient-1-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **ExtensionAufnahmegrund**
* ErsteUndZweiteStelle: [CodeSystemAufnahmegrundErsteUndZweiteStelle: 01](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=http://fhir.de/CodeSystem/dkgev/AufnahmegrundErsteUndZweiteStelle#AufnahmegrundErsteUndZweiteStelle-01) (Krankenhausbehandlung, vollstationär)
* DritteStelle: [AufnahmegrundDritteStelle: 0](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=http://fhir.de/CodeSystem/dkgev/AufnahmegrundDritteStelle#AufnahmegrundDritteStelle-0) (Anderes)
* VierteStelle: [AufnahmegrundVierteStelle: 1](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=http://fhir.de/CodeSystem/dkgev/AufnahmegrundVierteStelle#AufnahmegrundVierteStelle-1) (Normalfall)

**identifier**: Visit number/MII_0000001

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Einrichtungskontakt, Normalstationär

**serviceType**: Innere Medizin

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**period**: 2024-02-14 --> 2024-02-22

> **diagnosis****condition**: [Condition Masern mit Otitis](Condition-mii-exa-test-data-patient-1-diagnose-1.md)**use**: Admission diagnosis**rank**: 1

> **diagnosis****condition**: [Condition A15.0](Condition-mii-exa-test-data-patient-1-todesursache-1.md)**use**: Discharge diagnosis**rank**: 2

**account**: Abrechnungsfall MII_0000001 (Identifier: `https://www.charite.de/fhir/sid/abrechnungsfallnummern`/ABR-0000001)

### Hospitalizations

| | | |
| :--- | :--- | :--- |
| - | **AdmitSource** | **DischargeDisposition** |
| * | Einweisung durch einen Arzt |  |

> **location****location**: RHC-06-210b (Identifier: `https://www.charite.de/fhir/sid/Zimmernummern`/RHC-06-210b)**status**: Active**physicalType**: Room

> **location****location**: RHC-06-210b-02 (Identifier: `https://www.charite.de/fhir/sid/Bettennummern`/RHC-06-210b-02)**status**: Active**physicalType**: Bed

> **location****location**: RHC-06 (Identifier: `https://www.charite.de/fhir/sid/Stationsnummern`/RHC-06)**status**: Active**physicalType**: Ward

**serviceProvider**: [Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-patient-1-encounter-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "ErsteUndZweiteStelle",
      "valueCoding" : {
        "system" : "http://fhir.de/CodeSystem/dkgev/AufnahmegrundErsteUndZweiteStelle",
        "code" : "01",
        "display" : "Krankenhausbehandlung, vollstationär"
      }
    },
    {
      "url" : "DritteStelle",
      "valueCoding" : {
        "system" : "http://fhir.de/CodeSystem/dkgev/AufnahmegrundDritteStelle",
        "code" : "0",
        "display" : "Anderes"
      }
    },
    {
      "url" : "VierteStelle",
      "valueCoding" : {
        "system" : "http://fhir.de/CodeSystem/dkgev/AufnahmegrundVierteStelle",
        "code" : "1",
        "display" : "Normalfall"
      }
    }],
    "url" : "http://fhir.de/StructureDefinition/Aufnahmegrund"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "VN"
      }]
    },
    "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
    "value" : "MII_0000001"
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
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "period" : {
    "start" : "2024-02-14",
    "end" : "2024-02-22"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-patient-1-diagnose-1"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    },
    "rank" : 1
  },
  {
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-patient-1-todesursache-1"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "DD",
        "display" : "Discharge diagnosis"
      }]
    },
    "rank" : 2
  }],
  "account" : [{
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/abrechnungsfallnummern",
      "value" : "ABR-0000001"
    },
    "display" : "Abrechnungsfall MII_0000001"
  }],
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
  "location" : [{
    "location" : {
      "identifier" : {
        "system" : "https://www.charite.de/fhir/sid/Zimmernummern",
        "value" : "RHC-06-210b"
      },
      "display" : "RHC-06-210b"
    },
    "status" : "active",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "ro"
      }]
    }
  },
  {
    "location" : {
      "identifier" : {
        "system" : "https://www.charite.de/fhir/sid/Bettennummern",
        "value" : "RHC-06-210b-02"
      },
      "display" : "RHC-06-210b-02"
    },
    "status" : "active",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "bd"
      }]
    }
  },
  {
    "location" : {
      "identifier" : {
        "system" : "https://www.charite.de/fhir/sid/Stationsnummern",
        "value" : "RHC-06"
      },
      "display" : "RHC-06"
    },
    "status" : "active",
    "physicalType" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "wa"
      }]
    }
  }],
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
