# mii-exa-test-data-patient-12-medadmin-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-12-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000031

**status**: Completed

**category**: Inpatient

**medication**: [Medication Meropenem](Medication-mii-exa-test-data-medication-meropenem.md)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-11 11:00:00+0100 --> 2025-03-11 14:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md) |

**reasonReference**: [Observation Multidrug resistant gram-negative organism classification [Type]](Observation-mii-exa-test-data-patient-12-mibi-mrgn-1.md)

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000032; status = completed; intent = order; priority = urgent; medication[x] = ->Medication Meropenem; authoredOn = 2025-03-11 10:45:00+0100; note = Umstellung 1 h 45 min nach Freigabe des Antibiogramms (09:00 befundet, 11:00 erste Gabe). Dauer 7 Tage bis 18.03., gesteuert ueber den Procalcitonin-Verlauf.](MedicationRequest-mii-exa-test-data-patient-12-medrequest-2.md)

**note**: 

> 

Verlaengerte Infusion ueber 3 h (pharmakokinetisch optimiert bei septischem Patienten).


### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Route** | **Dose** | **Rate[x]** |
| * | Intravenous use | 1 g (Details: UCUM codeg = 'g') | 1 g (Details: UCUM codeg = 'g')/3 Stunden (Details: UCUM codeh = 'h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-12-medadmin-1",
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
    "value" : "MA_0000031"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-meropenem"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectivePeriod" : {
    "start" : "2025-03-11T11:00:00+01:00",
    "end" : "2025-03-11T14:00:00+01:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  }],
  "reasonReference" : [{
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-mrgn-1"
  }],
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-12-medrequest-2"
  },
  "note" : [{
    "text" : "Verlaengerte Infusion ueber 3 h (pharmakokinetisch optimiert bei septischem Patienten)."
  }],
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 1,
      "unit" : "g",
      "system" : "http://unitsofmeasure.org",
      "code" : "g"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 1,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 3,
        "unit" : "Stunden",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
