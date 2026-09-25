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
| Subject:[Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md) | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000006; status = unknown; category = stationärer Aufenthalt; medication[x] = ->Medication Metamizol HEXAL® 500 mg; effective[x] = 2022-04-12 11:32:00+0100 --> (ongoing); dateAsserted = 2022-04-12](MedicationStatement-mii-exa-test-data-patient-3-medstatement-1.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000010; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Fluorouracil; effective[x] = 2022-04-25 09:00:00+0200 --> 2022-04-27 07:00:00+0200; dateAsserted = 2022-04-25](MedicationStatement-mii-exa-test-data-patient-3-medstatement-2.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000011; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Oxaliplatin; effective[x] = 2022-04-25 09:30:00+0200 --> 2022-04-25 11:30:00+0200; dateAsserted = 2022-04-25](MedicationStatement-mii-exa-test-data-patient-3-medstatement-3.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-3-list-stat-aufenthalt",
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
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-3-medstatement-1"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-3-medstatement-2"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-3-medstatement-3"
    }
  }]
}

```
