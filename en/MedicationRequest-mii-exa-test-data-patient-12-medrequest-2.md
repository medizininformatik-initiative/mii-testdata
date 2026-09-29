# mii-exa-test-data-patient-12-medrequest-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-12-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000032

**status**: Completed

**intent**: Order

**priority**: Urgent

**medication**: [Medication Meropenem](Medication-mii-exa-test-data-medication-meropenem.md)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**authoredOn**: 2025-03-11 10:45:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: 

* [Condition Sepsis: Sonstige gramnegative Erreger](Condition-mii-exa-test-data-patient-12-diagnose-2.md)
* [Observation Multidrug resistant gram-negative organism classification [Type]](Observation-mii-exa-test-data-patient-12-mibi-mrgn-1.md)
* [Observation Meropenem [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-meropenem.md)

**note**: 

> 

Umstellung 1 h 45 min nach Freigabe des Antibiogramms (09:00 befundet, 11:00 erste Gabe). Dauer 7 Tage bis 18.03., gesteuert ueber den Procalcitonin-Verlauf.


> **dosageInstruction****sequence**: 1**timing**: Duration 180days , 3 per 1 day**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 g (Details: UCUM codeg = 'g') |

**maxDosePerAdministration**: 2 g (Details: UCUM codeg = 'g')

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |

**priorPrescription**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000031; status = stopped; statusReason = Drug treatment stopped - medical advice; intent = order; medication[x] = ->Medication Piperacillin und Beta-Lactamase-Inhibitoren; authoredOn = 2025-03-08 18:55:00+0100; note = Kalkulierte Initialtherapie nach hausinternem Sepsis-Standard, begonnen 19:00 nach Abnahme der Blutkulturen. Beendet am 11.03. 11:00 nach Vorliegen des Antibiogramms (Erreger resistent).](MedicationRequest-mii-exa-test-data-patient-12-medrequest-1.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-12-medrequest-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
    "value" : "MO_0000032"
  }],
  "status" : "completed",
  "intent" : "order",
  "priority" : "urgent",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-meropenem"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "authoredOn" : "2025-03-11T10:45:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-mrgn-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-meropenem"
  }],
  "note" : [{
    "text" : "Umstellung 1 h 45 min nach Freigabe des Antibiogramms (09:00 befundet, 11:00 erste Gabe). Dauer 7 Tage bis 18.03., gesteuert ueber den Procalcitonin-Verlauf."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2025-03-11T11:00:00+01:00",
          "end" : "2025-03-18T11:00:00+01:00"
        },
        "duration" : 180,
        "durationUnit" : "min",
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }],
    "maxDosePerAdministration" : {
      "value" : 2,
      "unit" : "g",
      "system" : "http://unitsofmeasure.org",
      "code" : "g"
    }
  }],
  "substitution" : {
    "allowedBoolean" : false
  },
  "priorPrescription" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-12-medrequest-1"
  }
}

```
