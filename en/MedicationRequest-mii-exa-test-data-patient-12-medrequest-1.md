# mii-exa-test-data-patient-12-medrequest-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-12-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000031

**status**: Stopped

**statusReason**: Drug treatment stopped - medical advice

**intent**: Order

**medication**: [Medication Piperacillin und Beta-Lactamase-Inhibitoren](Medication-mii-exa-test-data-medication-piperacillin-tazobactam.md)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**authoredOn**: 2025-03-08 18:55:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Sepsis: Sonstige gramnegative Erreger](Condition-mii-exa-test-data-patient-12-diagnose-2.md)

**note**: 

> 

Kalkulierte Initialtherapie nach hausinternem Sepsis-Standard, begonnen 19:00 nach Abnahme der Blutkulturen. Beendet am 11.03. 11:00 nach Vorliegen des Antibiogramms (Erreger resistent).


> **dosageInstruction****sequence**: 1**timing**: 3 per 1 day**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 4.5 g (Details: UCUM codeg = 'g') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-12-medrequest-1",
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
    "value" : "MO_0000031"
  }],
  "status" : "stopped",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182840001",
      "display" : "Drug treatment stopped - medical advice"
    }]
  },
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-piperacillin-tazobactam"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "authoredOn" : "2025-03-08T18:55:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-2"
  }],
  "note" : [{
    "text" : "Kalkulierte Initialtherapie nach hausinternem Sepsis-Standard, begonnen 19:00 nach Abnahme der Blutkulturen. Beendet am 11.03. 11:00 nach Vorliegen des Antibiogramms (Erreger resistent)."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2025-03-08T19:00:00+01:00",
          "end" : "2025-03-11T11:00:00+01:00"
        },
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
        "value" : 4.5,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
