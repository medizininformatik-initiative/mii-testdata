# mii-exa-test-data-patient-1-medrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-1-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000001

**status**: Active

**intent**: Order

**medication**: [Medication XYDALBA](Medication-mii-exa-test-data-medication-dalbavancin.md)

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**authoredOn**: 2024-02-16 08:37:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Cellulitis (disorder)

**reasonReference**: [Condition Masern mit Otitis](Condition-mii-exa-test-data-patient-1-diagnose-1.md)

**note**: 

> 

Zweitgabe nach 14 Tagen nur bei klinischem Ansprechen.


> **dosageInstruction****timing**: Events: 2024-02-16 , Count 2 times, Duration 30days , Once per 14-16 days**site**: Structure of dorsum of left hand (body structure)**route**: Intravenous use

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 1500 mg (Details: UCUM codemg = 'mg') | 1500 mg (Details: UCUM codemg = 'mg')/30 Minuten (Details: UCUM codemin = 'min') |

**maxDosePerAdministration**: 1500 mg (Details: UCUM codemg = 'mg')

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-1-medrequest-1",
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
    "value" : "MO_0000001"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-dalbavancin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "authoredOn" : "2024-02-16T08:37:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "128045006",
      "display" : "Cellulitis (disorder)"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-1-diagnose-1"
  }],
  "note" : [{
    "text" : "Zweitgabe nach 14 Tagen nur bei klinischem Ansprechen."
  }],
  "dosageInstruction" : [{
    "timing" : {
      "event" : ["2024-02-16"],
      "repeat" : {
        "boundsDuration" : {
          "value" : 4,
          "unit" : "Wochen",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        },
        "count" : 2,
        "countMax" : 3,
        "duration" : 30,
        "durationMax" : 60,
        "durationUnit" : "min",
        "frequency" : 1,
        "period" : 14,
        "periodMax" : 16,
        "periodUnit" : "d",
        "dayOfWeek" : ["fri"],
        "timeOfDay" : ["10:00:00"]
      }
    },
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
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1500,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 1500,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 30,
          "unit" : "Minuten",
          "system" : "http://unitsofmeasure.org",
          "code" : "min"
        }
      }
    }],
    "maxDosePerAdministration" : {
      "value" : 1500,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
