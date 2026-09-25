# mii-exa-test-data-patient-5-medrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-5-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000013

**status**: Active

**intent**: Order

**medication**: [Medication Leuprorelin](Medication-mii-exa-test-data-medication-leuprorelin.md)

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**authoredOn**: 2023-07-11 09:00:00+0200

> **dosageInstruction****text**: Leuprorelin 3,75mg s.c. alle 4 Wochen**timing**: Once per 4 weeks**route**: Subcutaneous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 3.75 mg (Details: UCUM codemg = 'mg') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-5-medrequest-1",
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
    "value" : "MO_0000013"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-leuprorelin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-5"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-5-encounter-1"
  },
  "authoredOn" : "2023-07-11T09:00:00+02:00",
  "dosageInstruction" : [{
    "text" : "Leuprorelin 3,75mg s.c. alle 4 Wochen",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 4,
        "periodUnit" : "wk"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20066000",
        "display" : "Subcutaneous use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 3.75,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
