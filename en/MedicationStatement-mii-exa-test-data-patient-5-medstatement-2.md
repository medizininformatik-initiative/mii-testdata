# mii-exa-test-data-patient-5-medstatement-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-5-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000015

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000014; status = active; intent = order; medication[x] = ->Medication Ibuprofen; authoredOn = 2023-07-11 09:30:00+0200](MedicationRequest-mii-exa-test-data-patient-5-medrequest-2.md)

**status**: Active

**category**: stationärer Aufenthalt

**medication**: [Medication Ibuprofen](Medication-mii-exa-test-data-medication-ibuprofen.md)

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**effective**: 2023-07-11 09:30:00+0200 --> 2023-07-18 10:00:00+0200

**dateAsserted**: 2023-07-11

> **dosage****text**: Ibuprofen 400mg bis zu 3x täglich bei Bedarf**timing**: 3 per 1 day**asNeeded**: true**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 400 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-5-medstatement-2",
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
    "value" : "MS_0000015"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-5-medrequest-2"
  }],
  "status" : "active",
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
    "reference" : "Medication/mii-exa-test-data-medication-ibuprofen"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-5"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-5-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2023-07-11T09:30:00+02:00",
    "end" : "2023-07-18T10:00:00+02:00"
  },
  "dateAsserted" : "2023-07-11",
  "dosage" : [{
    "text" : "Ibuprofen 400mg bis zu 3x täglich bei Bedarf",
    "timing" : {
      "repeat" : {
        "frequency" : 3,
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
        "value" : 400,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
