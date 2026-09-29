# mii-exa-test-data-patient-12-medstatement-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-12-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000031

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000032; status = completed; intent = order; priority = urgent; medication[x] = ->Medication Meropenem; authoredOn = 2025-03-11 10:45:00+0100; note = Umstellung 1 h 45 min nach Freigabe des Antibiogramms (09:00 befundet, 11:00 erste Gabe). Dauer 7 Tage bis 18.03., gesteuert ueber den Procalcitonin-Verlauf.](MedicationRequest-mii-exa-test-data-patient-12-medrequest-2.md)

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication Meropenem](Medication-mii-exa-test-data-medication-meropenem.md)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-11 --> 2025-03-18

**dateAsserted**: 2025-03-18

**informationSource**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Pneumonia caused by Klebsiella pneumoniae](Condition-mii-exa-test-data-patient-12-diagnose-1.md)

> **dosage****sequence**: 1**timing**: 3 per 1 day**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 g (Details: UCUM codeg = 'g') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-12-medstatement-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
    "value" : "MS_0000031"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-12-medrequest-2"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "inpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200",
      "display" : "stationärer Aufenthalt"
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
    "start" : "2025-03-11",
    "end" : "2025-03-18"
  },
  "dateAsserted" : "2025-03-18",
  "informationSource" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-1"
  }],
  "dosage" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
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
    }]
  }]
}

```
