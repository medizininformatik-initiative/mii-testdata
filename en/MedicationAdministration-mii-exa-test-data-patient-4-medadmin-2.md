# mii-exa-test-data-patient-4-medadmin-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-4-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000010

**status**: Completed

**category**: Inpatient

**medication**: [Medication Omeprazol](Medication-mii-exa-test-data-medication-omeprazol.md)

**subject**: [Anonymous Patient Male, DoB: 1962 ( pseudonymized)](Patient-mii-exa-test-data-patient-4.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2020-09-15 --> 2020-09-25](Encounter-mii-exa-test-data-patient-4-encounter-1.md)

**effective**: 2020-09-16 10:00:00+0200

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000012; status = active; intent = order; medication[x] = ->Medication Omeprazol; authoredOn = 2020-09-16 10:00:00+0200](MedicationRequest-mii-exa-test-data-patient-4-medrequest-2.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Omeprazol 20mg oral morgens | Oral use | 20 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-4-medadmin-2",
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
    "value" : "MA_0000010"
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
    "reference" : "Medication/mii-exa-test-data-medication-omeprazol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-4"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-4-encounter-1"
  },
  "effectiveDateTime" : "2020-09-16T10:00:00+02:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-4-medrequest-2"
  },
  "dosage" : {
    "text" : "Omeprazol 20mg oral morgens",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "dose" : {
      "value" : 20,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
