# mii-exa-test-data-patient-14-medadmin-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-14-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000051

**partOf**: [Procedure Immun-/Antikörpertherapie](Procedure-mii-exa-test-data-patient-14-onko-systemtherapie-1.md)

**status**: Completed

**category**: Outpatient

**medication**: [Medication Pembrolizumab](Medication-mii-exa-test-data-medication-pembrolizumab.md)

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**effective**: 2024-05-02 09:30:00+0200 --> 2024-05-02 10:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md) |

**reasonReference**: [Observation Therapeutic Implication](Observation-mii-exa-test-data-patient-14-mtb-implikation-1.md)

**note**: 

> 

Infusion ueber 30 Minuten, gut vertragen. Naechster Zyklus Tag 22.


### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Dose** |
| * | Intravenous use | 200 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-14-medadmin-1",
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
    "value" : "MA_0000051"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-14-onko-systemtherapie-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "outpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-pembrolizumab"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "effectivePeriod" : {
    "start" : "2024-05-02T09:30:00+02:00",
    "end" : "2024-05-02T10:00:00+02:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  }],
  "reasonReference" : [{
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-implikation-1"
  }],
  "note" : [{
    "text" : "Infusion ueber 30 Minuten, gut vertragen. Naechster Zyklus Tag 22."
  }],
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 200,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
