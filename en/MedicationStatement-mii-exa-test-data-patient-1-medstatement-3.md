# mii-exa-test-data-patient-1-medstatement-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medstatement-3**

## Example MedicationStatement: mii-exa-test-data-patient-1-medstatement-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000003

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000003; status = cancelled; intent = order; medication[x] = ->Medication Propofol; authoredOn = 2024-02-20 09:55:00+0100](MedicationRequest-mii-exa-test-data-patient-1-medrequest-3.md)

**status**: Entered in Error

**category**: stationärer Aufenthalt

**medication**: [Medication Propofol](Medication-mii-exa-test-data-medication-propofol.md)

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**context**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2024-02-20 09:55:00+0100 --> (ongoing)

**dateAsserted**: 2024-02-20

> **dosage****timing**: Events: 2024-02-20 09:55:00+0100 , Once**route**: Intravenous use
> **doseAndRate****dose**: 200 mg (Details: UCUM codemg = 'mg')**rate**: 5 mg/min (Details: UCUM codemg/min = 'mg/min')

> **doseAndRate****rate**: 4-6 mg/min



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-1-medstatement-3",
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
    "value" : "MS_0000003"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-1-medrequest-3"
  }],
  "status" : "entered-in-error",
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
    "reference" : "Medication/mii-exa-test-data-medication-propofol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-02-20T09:55:00+01:00"
  },
  "dateAsserted" : "2024-02-20",
  "dosage" : [{
    "timing" : {
      "event" : ["2024-02-20T09:55:00+01:00"],
      "repeat" : {
        "boundsRange" : {
          "low" : {
            "value" : 1,
            "unit" : "Stunde",
            "system" : "http://unitsofmeasure.org",
            "code" : "h"
          },
          "high" : {
            "value" : 2,
            "unit" : "Stunden",
            "system" : "http://unitsofmeasure.org",
            "code" : "h"
          }
        },
        "timeOfDay" : ["09:55:00"]
      }
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
        "value" : 200,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateQuantity" : {
        "value" : 5,
        "unit" : "mg/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/min"
      }
    },
    {
      "rateRange" : {
        "low" : {
          "value" : 4,
          "unit" : "mg/min",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/min"
        },
        "high" : {
          "value" : 6,
          "unit" : "mg/min",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/min"
        }
      }
    }]
  }]
}

```
