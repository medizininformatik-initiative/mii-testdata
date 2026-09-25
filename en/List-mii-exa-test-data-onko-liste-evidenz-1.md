# Liste der Evidenz zum Erstdiagnosezeitpunkt - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Liste der Evidenz zum Erstdiagnosezeitpunkt**

## Example List: Liste der Evidenz zum Erstdiagnosezeitpunkt

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Evidenz Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Liste der Evidenz zum Erstdiagnosezeitpunkt

| | |
| :--- | :--- |
| Mode: Snapshot List | Status: Current |
| Subject:[Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)Encounter:[Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md) | |

* **Items**: [Diagnostic Report for 'Pathology report Cancer Narrative' for '->Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)'](DiagnosticReport-mii-exa-test-data-onko-befund-1.md)
  * Flag: Imaging (procedure)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-onko-liste-evidenz-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Liste der Evidenz zum Erstdiagnosezeitpunkt",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "363679005",
        "display" : "Imaging (procedure)"
      }]
    },
    "item" : {
      "reference" : "DiagnosticReport/mii-exa-test-data-onko-befund-1"
    }
  }]
}

```
