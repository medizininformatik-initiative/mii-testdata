# Antiinfektive Therapie Intensivaufenthalt - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiinfektive Therapie Intensivaufenthalt**

## Example List: Antiinfektive Therapie Intensivaufenthalt

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medikationsliste](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Antiinfektive Therapie Intensivaufenthalt

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2025-03-18 12:00:00+0100 | Mode: Working List | Status: Current | Code: stationärer Aufenthalt |
| Subject:[Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)Encounter:[Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md) | | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000031; status = completed; category = stationärer Aufenthalt; medication[x] = ->Medication Meropenem; effective[x] = 2025-03-11 --> 2025-03-18; dateAsserted = 2025-03-18](MedicationStatement-mii-exa-test-data-patient-12-medstatement-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-12-list-stat-aufenthalt",
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
    "value" : "ML_0000031"
  }],
  "status" : "current",
  "mode" : "working",
  "title" : "Antiinfektive Therapie Intensivaufenthalt",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200",
      "display" : "stationärer Aufenthalt"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "date" : "2025-03-18T12:00:00+01:00",
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-12-medstatement-1"
    }
  }]
}

```
