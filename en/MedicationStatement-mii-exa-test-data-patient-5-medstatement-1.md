# mii-exa-test-data-patient-5-medstatement-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-5-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000014

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000013; status = active; intent = order; medication[x] = ->Medication Leuprorelin; authoredOn = 2023-07-11 09:00:00+0200](MedicationRequest-mii-exa-test-data-patient-5-medrequest-1.md)

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication Leuprorelin](Medication-mii-exa-test-data-medication-leuprorelin.md)

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**effective**: 2023-07-11 09:00:00+0200 --> 2023-07-11 09:05:00+0200

**dateAsserted**: 2023-07-11

> **dosage****text**: Leuprorelin 3,75mg s.c. alle 4 Wochen**timing**: Once per 4 weeks**route**: Subcutaneous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 3.75 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-5-medstatement-1",
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
    "value" : "MS_0000014"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-5-medrequest-1"
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
    "reference" : "Medication/mii-exa-test-data-medication-leuprorelin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-5"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-5-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2023-07-11T09:00:00+02:00",
    "end" : "2023-07-11T09:05:00+02:00"
  },
  "dateAsserted" : "2023-07-11",
  "dosage" : [{
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
  }]
}

```
