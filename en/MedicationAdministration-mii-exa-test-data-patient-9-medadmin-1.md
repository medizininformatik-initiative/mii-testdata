# mii-exa-test-data-patient-9-medadmin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-medadmin-1**

## Example MedicationAdministration: mii-exa-test-data-patient-9-medadmin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000019

**status**: Completed

**category**: Inpatient

**medication**: [Medication Levonorgestrel und Ethinylestradiol](Medication-mii-exa-test-data-medication-ethinylestradiol-levonorgestrel.md)

**subject**: [Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-9.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2024-02-20 --> 2024-02-28](Encounter-mii-exa-test-data-patient-9-encounter-1.md)

**effective**: 2024-02-21 08:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000023; status = active; intent = order; medication[x] = ->Medication Levonorgestrel und Ethinylestradiol; authoredOn = 2024-02-21 10:00:00+0100](MedicationRequest-mii-exa-test-data-patient-9-medrequest-1.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | Verhütungspille 1 Tablette | Oral use | 1 1 (Details: UCUM code1 = '1') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-9-medadmin-1",
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
    "value" : "MA_0000019"
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
    "reference" : "Medication/mii-exa-test-data-medication-ethinylestradiol-levonorgestrel"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "effectiveDateTime" : "2024-02-21T08:00:00+01:00",
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-9-medrequest-1"
  },
  "dosage" : {
    "text" : "Verhütungspille 1 Tablette",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "dose" : {
      "value" : 1,
      "unit" : "1",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }
}

```
