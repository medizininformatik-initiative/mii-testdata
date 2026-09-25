# mii-exa-test-data-patient-9-medrequest-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-9-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000020

**status**: Active

**intent**: Order

**medication**: [Medication Paracetamol](Medication-mii-exa-test-data-medication-paracetamol.md)

**subject**: [Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-9.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2024-02-20 --> 2024-02-28](Encounter-mii-exa-test-data-patient-9-encounter-1.md)

**authoredOn**: 2024-02-22 16:00:00+0100

> **dosageInstruction****text**: Paracetamol 500mg bis zu 4x täglich bei Bedarf**timing**: 4 per 1 day**asNeeded**: true**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500 mg (Details: UCUM codemg = 'mg') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-9-medrequest-2",
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
    "value" : "MO_0000020"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-paracetamol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "authoredOn" : "2024-02-22T16:00:00+01:00",
  "dosageInstruction" : [{
    "text" : "Paracetamol 500mg bis zu 4x täglich bei Bedarf",
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 500,
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
