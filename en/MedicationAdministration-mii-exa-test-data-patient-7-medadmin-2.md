# mii-exa-test-data-patient-7-medadmin-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-7-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000016

**status**: Completed

**category**: Inpatient

**medication**: [Medication Salbutamol](Medication-mii-exa-test-data-medication-salbutamol.md)

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Pädiatrie; period = 2024-01-08 --> 2024-01-15](Encounter-mii-exa-test-data-patient-7-encounter-1.md)

**effective**: 2024-01-10 18:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000019; status = active; intent = order; medication[x] = ->Medication Salbutamol; authoredOn = 2024-01-10 16:30:00+0100](MedicationRequest-mii-exa-test-data-patient-7-medrequest-2.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Salbutamol 2 Hubs inhalativ | Inhalation use | 200 μg (Details: UCUM codeug = 'ug') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-7-medadmin-2",
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
    "value" : "MA_0000016"
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
    "reference" : "Medication/mii-exa-test-data-medication-salbutamol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "effectiveDateTime" : "2024-01-10T18:00:00+01:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-7-medrequest-2"
  },
  "dosage" : {
    "text" : "Salbutamol 2 Hubs inhalativ",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20020000",
        "display" : "Inhalation use"
      }]
    },
    "dose" : {
      "value" : 200,
      "unit" : "μg",
      "system" : "http://unitsofmeasure.org",
      "code" : "ug"
    }
  }
}

```
