# mii-exa-test-data-patient-6-medstatement-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-6-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-6-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000017

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000016; status = active; intent = order; medication[x] = ->Medication Amoxicillin; authoredOn = 2022-03-13 08:30:00+0100](MedicationRequest-mii-exa-test-data-patient-6-medrequest-2.md)

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication Amoxicillin](Medication-mii-exa-test-data-medication-amoxicillin.md)

**subject**: [Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-6.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --> 2022-03-20](Encounter-mii-exa-test-data-patient-6-encounter-1.md)

**effective**: 2022-03-13 08:30:00+0100 --> 2022-03-20 08:30:00+0100

**dateAsserted**: 2022-03-13

> **dosage****text**: Amoxicillin 500mg 3x täglich**timing**: 3 per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-6-medstatement-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
    "value" : "MS_0000017"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-2"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "inpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200",
      "display" : "stationärer Aufenthalt"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-amoxicillin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-6"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2022-03-13T08:30:00+01:00",
    "end" : "2022-03-20T08:30:00+01:00"
  },
  "dateAsserted" : "2022-03-13",
  "dosage" : [{
    "text" : "Amoxicillin 500mg 3x täglich",
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
  }]
}

```
