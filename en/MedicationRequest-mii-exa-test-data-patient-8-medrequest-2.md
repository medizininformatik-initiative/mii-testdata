# mii-exa-test-data-patient-8-medrequest-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-8-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-8-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000021

**status**: Active

**intent**: Order

**medication**: [Medication Metoprolol](Medication-mii-exa-test-data-medication-metoprolol.md)

**subject**: [Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-8.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --> 2023-11-15](Encounter-mii-exa-test-data-patient-8-encounter-1.md)

**authoredOn**: 2023-11-12 08:30:00+0100

> **dosageInstruction****sequence**: 1**text**: Metoprolol 25mg morgens**timing**: Morning, Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 25 mg (Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 2**text**: Metoprolol 50mg abends**timing**: Evening, Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg (Details: UCUM codemg = 'mg') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-8-medrequest-2",
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
    "value" : "MO_0000021"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-metoprolol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
  },
  "authoredOn" : "2023-11-12T08:30:00+01:00",
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "Metoprolol 25mg morgens",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
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
        "value" : 25,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  },
  {
    "sequence" : 2,
    "text" : "Metoprolol 50mg abends",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["EVE"]
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
        "value" : 50,
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
