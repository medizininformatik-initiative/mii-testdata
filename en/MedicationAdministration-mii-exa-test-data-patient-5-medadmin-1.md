# mii-exa-test-data-patient-5-medadmin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-5-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000011

**status**: Completed

**category**: Inpatient

**medication**: [Medication Leuprorelin](Medication-mii-exa-test-data-medication-leuprorelin.md)

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**effective**: 2023-07-11 09:00:00+0200

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000013; status = active; intent = order; medication[x] = ->Medication Leuprorelin; authoredOn = 2023-07-11 09:00:00+0200](MedicationRequest-mii-exa-test-data-patient-5-medrequest-1.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Leuprorelin 3,75mg s.c. | Subcutaneous use | 3.75 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-5-medadmin-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
    "value" : "MA_0000011"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient",
      "display" : "Inpatient"
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
  "effectiveDateTime" : "2023-07-11T09:00:00+02:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-5-medrequest-1"
  },
  "dosage" : {
    "text" : "Leuprorelin 3,75mg s.c.",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20066000",
        "display" : "Subcutaneous use"
      }]
    },
    "dose" : {
      "value" : 3.75,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
