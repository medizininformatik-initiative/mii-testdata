# mii-exa-test-data-patient-9-medrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-9-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000023

**status**: Active

**intent**: Order

**medication**: [Medication Levonorgestrel und Ethinylestradiol](Medication-mii-exa-test-data-medication-ethinylestradiol-levonorgestrel.md)

**subject**: [Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-9.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2024-02-20 --> 2024-02-28](Encounter-mii-exa-test-data-patient-9-encounter-1.md)

**authoredOn**: 2024-02-21 10:00:00+0100

> **dosageInstruction****text**: Verhütungspille 1 Tablette täglich**timing**: Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 1 (Details: UCUM code1 = '1') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-9-medrequest-1",
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
    "value" : "MO_0000023"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-ethinylestradiol-levonorgestrel"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "authoredOn" : "2024-02-21T10:00:00+01:00",
  "dosageInstruction" : [{
    "text" : "Verhütungspille 1 Tablette täglich",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
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
        "value" : 1,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
