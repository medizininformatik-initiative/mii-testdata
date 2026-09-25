# mii-exa-test-data-patient-9-medadmin-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-9-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000022

**status**: Completed

**category**: Inpatient

**medication**: [Medication Paracetamol](Medication-mii-exa-test-data-medication-paracetamol.md)

**subject**: [Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-9.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2024-02-20 --> 2024-02-28](Encounter-mii-exa-test-data-patient-9-encounter-1.md)

**effective**: 2024-02-23 08:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000020; status = active; intent = order; medication[x] = ->Medication Paracetamol; authoredOn = 2024-02-22 16:00:00+0100](MedicationRequest-mii-exa-test-data-patient-9-medrequest-2.md)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** |
| * | Paracetamol 500mg oral bei postoperativen Schmerzen | Oral cavity structure (body structure) | Oral use | 500 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-9-medadmin-2",
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
    "value" : "MA_0000022"
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
    "reference" : "Medication/mii-exa-test-data-medication-paracetamol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "effectiveDateTime" : "2024-02-23T08:00:00+01:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-9-medrequest-2"
  },
  "dosage" : {
    "text" : "Paracetamol 500mg oral bei postoperativen Schmerzen",
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "74262004",
        "display" : "Oral cavity structure (body structure)"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "dose" : {
      "value" : 500,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
