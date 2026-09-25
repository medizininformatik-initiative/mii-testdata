# Aufnahmemedikation - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aufnahmemedikation**

## Example List: Aufnahmemedikation

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medikationsliste](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Aufnahmemedikation

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2024-02-14 10:00:00+0100 | Mode: Snapshot List | Status: Current | Code: Medication List |
| Subject:[Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)Encounter:[Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md) | | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000001; status = active; category = stationäre Aufnahme; medication[x] = ASS 100 - 1a Pharma TAH Tabletten; effective[x] = 2020-08-30 --> (ongoing); dateAsserted = 2024-02-14; reasonCode = Direct thrombin inhibitor prophylaxis indicated (situation); note = Dauermedikation, Einnahme 30 Minuten nach dem Mittagessen.](MedicationStatement-mii-exa-test-data-patient-1-medstatement-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-1-list-aufnahmemedikation",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Medikationslisten",
    "value" : "ML_0000001"
  }],
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Aufnahmemedikation",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E210"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "date" : "2024-02-14T10:00:00+01:00",
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-1-medstatement-1"
    }
  }]
}

```
