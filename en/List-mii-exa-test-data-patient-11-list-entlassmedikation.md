# Entlassmedikation - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entlassmedikation**

## Example List: Entlassmedikation

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medikationsliste](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Entlassmedikation

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2025-01-28 10:00:00+0100 | Mode: Snapshot List | Status: Current | Code: stationäre Entlassung |
| Subject:[Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)Encounter:[Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md) | | | |

* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000022; status = active; category = stationäre Entlassung; medication[x] = ->Medication Valsartan und Sacubitril; effective[x] = 2025-01-28 --> (ongoing); dateAsserted = 2025-01-28](MedicationStatement-mii-exa-test-data-patient-11-medstatement-2.md)
* **Items**: [MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000023; status = active; category = stationäre Entlassung; medication[x] = ->Medication Empagliflozin; effective[x] = 2025-01-28 --> (ongoing); dateAsserted = 2025-01-28](MedicationStatement-mii-exa-test-data-patient-11-medstatement-3.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-test-data-patient-11-list-entlassmedikation",
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
    "value" : "ML_0000021"
  }],
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Entlassmedikation",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E230",
      "display" : "stationäre Entlassung"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "date" : "2025-01-28T10:00:00+01:00",
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-2"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-test-data-patient-11-medstatement-3"
    }
  }]
}

```
