# Aufnahmemedikation - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aufnahmemedikation**

## Example List: Aufnahmemedikation

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medikationsliste](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Aufnahmemedikation

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: Medication List |
| Subject:[Markus Wolf (official) Male, DoB: 1969-09-17 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-10.md) | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000025; status = active; category = stationärer Aufenthalt; medication[x] = ->Medication Sumatriptan; effective[x] = 2019-05-15 14:00:00+0200 --> 2019-05-22 10:00:00+0200; dateAsserted = 2019-05-15](MedicationStatement-mii-exa-test-data-patient-10-medstatement-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-10-list-aufnahmemedikation",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
    "reference" : "Patient/mii-exa-test-data-patient-10"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-10-medstatement-1"
    }
  }]
}

```
