# mii-exa-test-data-patient-4-medadmin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-4-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000009

**status**: Completed

**category**: Inpatient

**medication**: [Medication Cisplatin](Medication-mii-exa-test-data-medication-cisplatin.md)

**subject**: [Anonymous Patient Male, DoB: 1962 ( pseudonymized)](Patient-mii-exa-test-data-patient-4.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2020-09-15 --> 2020-09-25](Encounter-mii-exa-test-data-patient-4-encounter-1.md)

**effective**: 2020-09-17 14:00:00+0200 --> 2020-09-17 16:00:00+0200

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000011; status = active; intent = order; medication[x] = ->Medication Cisplatin; authoredOn = 2020-09-17 14:00:00+0200](MedicationRequest-mii-exa-test-data-patient-4-medrequest-1.md)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** | **Rate[x]** |
| * | Cisplatin 75mg IV über 2 Stunden | Intravenous use | 75 mg (Details: UCUM codemg = 'mg') | 75 mg (Details: UCUM codemg = 'mg')/2 h (Details: UCUM codeh = 'h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-4-medadmin-1",
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
    "value" : "MA_0000009"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient",
      "display" : "Inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-cisplatin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-4"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-4-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2020-09-17T14:00:00+02:00",
    "end" : "2020-09-17T16:00:00+02:00"
  },
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-4-medrequest-1"
  },
  "dosage" : {
    "text" : "Cisplatin 75mg IV über 2 Stunden",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 75,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 75,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 2,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
