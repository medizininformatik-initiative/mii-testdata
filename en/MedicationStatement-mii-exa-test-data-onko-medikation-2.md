# mii-exa-test-data-onko-medikation-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-medikation-2**

## Example MedicationStatement: mii-exa-test-data-onko-medikation-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Systemische Therapie Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-test-data-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Carboplatin

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**effective**: 2021-07-05 --> 2021-09-05

**note**: 

> 

CarboTax Schema


### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Timing** | **AsNeeded[x]** |
| * | AUC5 i.v. bei Bedarfsanpassung nach Nierenfunktion | 30min , Morning, Once | Renal impairment (disorder) |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-onko-medikation-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01XA02",
      "display" : "Carboplatin"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "effectivePeriod" : {
    "start" : "2021-07-05",
    "end" : "2021-09-05"
  },
  "note" : [{
    "text" : "CarboTax Schema"
  }],
  "dosage" : [{
    "text" : "AUC5 i.v. bei Bedarfsanpassung nach Nierenfunktion",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 8,
          "unit" : "Wochen",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        },
        "when" : ["MORN"],
        "offset" : 30
      }
    },
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "428165003",
        "display" : "Renal impairment (disorder)"
      }]
    }
  }]
}

```
