# mii-exa-test-data-patient-1-medrequest-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medrequest-3**

## Example MedicationRequest: mii-exa-test-data-patient-1-medrequest-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000003

**status**: Cancelled

**intent**: Order

**medication**: [Medication Propofol](Medication-mii-exa-test-data-medication-propofol.md)

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Versorgungsstellenkontakt,Operation; serviceType = Thoraxchirurgie; period = 2024-02-20 10:00:00+0100 --> 2024-02-20 13:00:00+0100](Encounter-mii-exa-test-data-patient-1-encounter-2.md)

**authoredOn**: 2024-02-20 09:55:00+0100

> **dosageInstruction****timing**: Events: 2024-02-20 10:00:00+0100 , Once per 1 day**route**: Intravenous use**method**: Perfusion - action (qualifier value)

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 200 mg (Details: UCUM codemg = 'mg') | 5 mg/min (Details: UCUM codemg/min = 'mg/min') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-1-medrequest-3",
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
    "value" : "MO_0000003"
  }],
  "status" : "cancelled",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-propofol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-2"
  },
  "authoredOn" : "2024-02-20T09:55:00+01:00",
  "dosageInstruction" : [{
    "timing" : {
      "event" : ["2024-02-20T10:00:00+01:00"],
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2024-02-20T10:00:00+01:00",
          "end" : "2024-02-20T13:00:00+01:00"
        },
        "frequency" : 1,
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
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "129331004",
        "display" : "Perfusion - action (qualifier value)"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 200,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateQuantity" : {
        "value" : 5,
        "unit" : "mg/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/min"
      }
    }]
  }]
}

```
