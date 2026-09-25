# mii-exa-test-data-patient-7-medrequest-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-7-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000019

**status**: Active

**intent**: Order

**medication**: [Medication Salbutamol](Medication-mii-exa-test-data-medication-salbutamol.md)

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Pädiatrie; period = 2024-01-08 --> 2024-01-15](Encounter-mii-exa-test-data-patient-7-encounter-1.md)

**authoredOn**: 2024-01-10 16:30:00+0100

> **dosageInstruction****text**: Salbutamol 2 Hubs inhalativ bei Bedarf**timing**: Once per 1 day**asNeeded**: true**route**: Inhalation use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 200 μg (Details: UCUM codeug = 'ug') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-7-medrequest-2",
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
    "value" : "MO_0000019"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-salbutamol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "authoredOn" : "2024-01-10T16:30:00+01:00",
  "dosageInstruction" : [{
    "text" : "Salbutamol 2 Hubs inhalativ bei Bedarf",
    "timing" : {
      "repeat" : {
        "frequencyMax" : 6,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20020000",
        "display" : "Inhalation use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 200,
        "unit" : "μg",
        "system" : "http://unitsofmeasure.org",
        "code" : "ug"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
