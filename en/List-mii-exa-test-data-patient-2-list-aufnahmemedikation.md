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
| Subject:[Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md) | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000007; status = active; category = stationärer Aufenthalt; medication[x] = ; effective[x] = 2024-03-06 08:00:00+0100 --> 2024-03-13 10:00:00+0100; dateAsserted = 2024-03-06](MedicationStatement-mii-exa-test-data-patient-2-medstatement-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-2-list-aufnahmemedikation",
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
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-1"
    }
  }]
}

```
