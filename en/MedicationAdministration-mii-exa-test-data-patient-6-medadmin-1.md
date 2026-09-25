# mii-exa-test-data-patient-6-medadmin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-6-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-6-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000013

**status**: Completed

**category**: Inpatient

**medication**: [Medication Pantoprazol](Medication-mii-exa-test-data-medication-pantoprazol.md)

**subject**: [Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-6.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --> 2022-03-20](Encounter-mii-exa-test-data-patient-6-encounter-1.md)

**effective**: 2022-03-13 08:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000015; status = active; intent = order; medication[x] = ->Medication Pantoprazol; authoredOn = 2022-03-13 08:00:00+0100](MedicationRequest-mii-exa-test-data-patient-6-medrequest-1.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Pantoprazol 40mg oral morgens | Oral use | 40 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-6-medadmin-1",
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
    "value" : "MA_0000013"
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
    "reference" : "Medication/mii-exa-test-data-medication-pantoprazol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-6"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
  },
  "effectiveDateTime" : "2022-03-13T08:00:00+01:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-1"
  },
  "dosage" : {
    "text" : "Pantoprazol 40mg oral morgens",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "dose" : {
      "value" : 40,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
