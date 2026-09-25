# mii-exa-test-data-patient-1-medstatement-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-1-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000002

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000001; status = active; intent = order; medication[x] = ->Medication XYDALBA; authoredOn = 2024-02-16 08:37:00+0100; reasonCode = Cellulitis (disorder); note = Zweitgabe nach 14 Tagen nur bei klinischem Ansprechen.](MedicationRequest-mii-exa-test-data-patient-1-medrequest-1.md)

**partOf**: [Procedure Intravenous antibiotic therapy](Procedure-mii-exa-test-data-patient-1-prozedur-2.md)

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication XYDALBA](Medication-mii-exa-test-data-medication-dalbavancin.md)

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**context**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2024-02-16 10:20:00+0100 --> 2024-02-16 10:50:00+0100

**dateAsserted**: 2024-02-16

**reasonReference**: [Condition Masern mit Otitis](Condition-mii-exa-test-data-patient-1-diagnose-1.md)

> **dosage****timing**: Events: 2024-02-16 10:20:00+0100 , Count 2 times, Duration 30days , Once per 14-16 days**site**: Structure of dorsum of left hand (body structure)**route**: Intravenous use

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 1500 mg (Details: UCUM codemg = 'mg') | 1500 mg (Details: UCUM codemg = 'mg')/30 Minuten (Details: UCUM codemin = 'min') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-1-medstatement-2",
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
    "value" : "MS_0000002"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-1-medrequest-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-1-prozedur-2"
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
    "reference" : "Medication/mii-exa-test-data-medication-dalbavancin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-02-16T10:20:00.000+01:00",
    "end" : "2024-02-16T10:50:00.000+01:00"
  },
  "dateAsserted" : "2024-02-16",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-1-diagnose-1"
  }],
  "dosage" : [{
    "timing" : {
      "event" : ["2024-02-16T10:20:00+01:00"],
      "repeat" : {
        "boundsDuration" : {
          "value" : 8,
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
        "dayOfWeek" : ["fri"]
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
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route (qualifier value)"
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
    }]
  }]
}

```
