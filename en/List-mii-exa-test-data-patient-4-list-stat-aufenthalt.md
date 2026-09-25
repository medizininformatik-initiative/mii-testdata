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
| Subject:[Anonymous Patient Male, DoB: 1962 ( pseudonymized)](Patient-mii-exa-test-data-patient-4.md) | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000012; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Cisplatin; effective[x] = 2020-09-17 14:00:00+0200 --> 2020-09-17 16:00:00+0200; dateAsserted = 2020-09-17](MedicationStatement-mii-exa-test-data-patient-4-medstatement-1.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000013; status = active; category = stationärer Aufenthalt; medication[x] = ->Medication Omeprazol; effective[x] = 2020-09-16 10:00:00+0200 --> 2020-09-25 10:00:00+0200; dateAsserted = 2020-09-16](MedicationStatement-mii-exa-test-data-patient-4-medstatement-2.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-4-list-stat-aufenthalt",
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
    "reference" : "Patient/mii-exa-test-data-patient-4"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-4-medstatement-1"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-4-medstatement-2"
    }
  }]
}

```
