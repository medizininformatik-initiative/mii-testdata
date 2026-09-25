# mii-exa-test-data-patient-6-medrequest-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-6-medrequest-3**

## Example MedicationRequest: mii-exa-test-data-patient-6-medrequest-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000017

**status**: Active

**intent**: Order

**medication**: [Medication Clarithromycin](Medication-mii-exa-test-data-medication-clarithromycin.md)

**subject**: [Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-6.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --> 2022-03-20](Encounter-mii-exa-test-data-patient-6-encounter-1.md)

**authoredOn**: 2022-03-13 08:30:00+0100

> **dosageInstruction****text**: Clarithromycin 250mg 2x täglich**timing**: 2 per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 250 mg (Details: UCUM codemg = 'mg') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-6-medrequest-3",
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
    "value" : "MO_0000017"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-clarithromycin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-6"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
  },
  "authoredOn" : "2022-03-13T08:30:00+01:00",
  "dosageInstruction" : [{
    "text" : "Clarithromycin 250mg 2x täglich",
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 250,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
