# mii-exa-test-data-patient-11-medrequest-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-medrequest-2**

## Example MedicationRequest: mii-exa-test-data-patient-11-medrequest-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000022

**status**: Active

**intent**: Order

**medication**: [Medication Empagliflozin](Medication-mii-exa-test-data-medication-empagliflozin.md)

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**authoredOn**: 2025-01-28 09:42:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**note**: 

> 

Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2.


> **dosageInstruction****sequence**: 1**timing**: Morning, Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablet (Details: standardterms.edqm.eu code10219000 = 'Tablet') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-11-medrequest-2",
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
    "value" : "MO_0000022"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-empagliflozin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "authoredOn" : "2025-01-28T09:42:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
  }],
  "note" : [{
    "text" : "Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2025-01-28"
        },
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
        "value" : 1,
        "unit" : "Tablet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
