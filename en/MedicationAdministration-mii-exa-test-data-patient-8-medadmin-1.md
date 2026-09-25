# mii-exa-test-data-patient-8-medadmin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-8-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-8-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000017

**status**: Completed

**category**: Inpatient

**medication**: [Medication Heparin](Medication-mii-exa-test-data-medication-heparin.md)

**subject**: [Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-8.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2023-11-10 --> 2023-11-15](Encounter-mii-exa-test-data-patient-8-encounter-1.md)

**effective**: 2023-11-12 08:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000020; status = active; intent = order; medication[x] = ->Medication Heparin; authoredOn = 2023-11-12 08:00:00+0100](MedicationRequest-mii-exa-test-data-patient-8-medrequest-1.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Heparin 5000 IE s.c. | Subcutaneous use | 5000 IU (Details: UCUM code[iU] = '[iU]') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-8-medadmin-1",
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
    "value" : "MA_0000017"
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
    "reference" : "Medication/mii-exa-test-data-medication-heparin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
  },
  "effectiveDateTime" : "2023-11-12T08:00:00+01:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-8-medrequest-1"
  },
  "dosage" : {
    "text" : "Heparin 5000 IE s.c.",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20066000",
        "display" : "Subcutaneous use"
      }]
    },
    "dose" : {
      "value" : 5000,
      "unit" : "IU",
      "system" : "http://unitsofmeasure.org",
      "code" : "[iU]"
    }
  }
}

```
