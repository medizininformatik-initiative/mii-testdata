# mii-exa-test-data-patient-3-medrequest-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-3-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000009

**status**: Active

**intent**: Order

**medication**: [Medication Fluorouracil](Medication-mii-exa-test-data-medication-5-fluorouracil.md)

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**authoredOn**: 2022-04-25 09:00:00+0200

> **dosageInstruction****text**: 5-FU 1000mg/m² IV über 46 Stunden**timing**: Events: 2022-04-25 09:00:00+0200 **route**: Intravenous use

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 1000 mg (Details: UCUM codemg = 'mg') | 1000 mg (Details: UCUM codemg = 'mg')/46 h (Details: UCUM codeh = 'h') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-3-medrequest-2",
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
    "value" : "MO_0000009"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-5-fluorouracil"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "authoredOn" : "2022-04-25T09:00:00+02:00",
  "dosageInstruction" : [{
    "text" : "5-FU 1000mg/m² IV über 46 Stunden",
    "timing" : {
      "event" : ["2022-04-25T09:00:00+02:00"]
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
        "value" : 1000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 1000,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 46,
          "unit" : "h",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
