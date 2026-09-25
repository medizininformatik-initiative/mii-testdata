# mii-exa-test-data-patient-7-medrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-7-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000018

**status**: Active

**intent**: Order

**medication**: [Medication Amoxicillin und Beta-Lactamase-Inhibitoren](Medication-mii-exa-test-data-medication-amoxicillin-clavulansaeure.md)

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Pädiatrie; period = 2024-01-08 --> 2024-01-15](Encounter-mii-exa-test-data-patient-7-encounter-1.md)

**authoredOn**: 2024-01-10 16:00:00+0100

> **dosageInstruction****text**: Amoxicillin/Clavulansäure 1,2g IV alle 8 Stunden**timing**: 3 per 1 day**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1.2 g (Details: UCUM codeg = 'g') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-7-medrequest-1",
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
    "value" : "MO_0000018"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-amoxicillin-clavulansaeure"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "authoredOn" : "2024-01-10T16:00:00+01:00",
  "dosageInstruction" : [{
    "text" : "Amoxicillin/Clavulansäure 1,2g IV alle 8 Stunden",
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
        "value" : 1.2,
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
