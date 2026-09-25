# mii-exa-test-data-patient-1-medadmin-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-1-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000002

**partOf**: [Procedure Intravenous antibiotic therapy](Procedure-mii-exa-test-data-patient-1-prozedur-2.md)

**status**: Entered in Error

**category**: Inpatient

**medication**: [Medication XYDALBA](Medication-mii-exa-test-data-medication-dalbavancin.md)

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**context**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2024-02-16 10:20:00+0100 --> (ongoing)

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000001; status = active; intent = order; medication[x] = ->Medication XYDALBA; authoredOn = 2024-02-16 08:37:00+0100; reasonCode = Cellulitis (disorder); note = Zweitgabe nach 14 Tagen nur bei klinischem Ansprechen.](MedicationRequest-mii-exa-test-data-patient-1-medrequest-1.md)

**note**: 

> 

abgebrochen fehlerhafte Eingabe


### Dosages

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** | **Rate[x]** |
| * | Dalbavancin 1500 mg als 30-minütige Infusion | Structure of dorsum of left hand (body structure) | Intravenous use | 1500 mg (Details: UCUM codemg = 'mg') | 1500 mg/Stunde (Details: UCUM codemg/h = 'mg/h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-1-medadmin-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
    "value" : "MA_0000002"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-1-prozedur-2"
  }],
  "status" : "entered-in-error",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient",
      "display" : "Inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-dalbavancin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-02-16T10:20:00.000+01:00"
  },
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-1-medrequest-1"
  },
  "note" : [{
    "text" : "abgebrochen fehlerhafte Eingabe"
  }],
  "dosage" : {
    "text" : "Dalbavancin 1500 mg als 30-minütige Infusion",
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "789218009",
        "display" : "Structure of dorsum of left hand (body structure)"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route (qualifier value)"
      }]
    },
    "dose" : {
      "value" : 1500,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateQuantity" : {
      "value" : 1500,
      "unit" : "mg/Stunde",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/h"
    }
  }
}

```
