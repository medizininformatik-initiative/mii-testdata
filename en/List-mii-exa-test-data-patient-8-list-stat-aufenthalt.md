# Medikationsliste während stationärem Aufenthalt - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medikationsliste während stationärem Aufenthalt**

## Example List: Medikationsliste während stationärem Aufenthalt

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medikationsliste](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Medikationsliste während stationärem Aufenthalt

| | | |
| :--- | :--- | :--- |
| Mode: Working List | Status: Current | Code: Medication List |
| Subject:[Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-8.md) | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000021; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Heparin; effective[x] = 2023-11-12 08:00:00+0100 --> 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12](MedicationStatement-mii-exa-test-data-patient-8-medstatement-1.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000022; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Metoprolol; effective[x] = 2023-11-12 08:30:00+0100 --> 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12](MedicationStatement-mii-exa-test-data-patient-8-medstatement-2.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000023; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Atorvastatin; effective[x] = 2023-11-12 09:00:00+0100 --> 2023-11-15 14:00:00+0100; dateAsserted = 2023-11-12](MedicationStatement-mii-exa-test-data-patient-8-medstatement-3.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-8-list-stat-aufenthalt",
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
  "mode" : "working",
  "title" : "Medikationsliste während stationärem Aufenthalt",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-1"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-2"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-8-medstatement-3"
    }
  }]
}

```
