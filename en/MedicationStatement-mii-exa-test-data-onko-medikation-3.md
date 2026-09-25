# mii-exa-test-data-onko-medikation-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-medikation-3**

## Example MedicationStatement: mii-exa-test-data-onko-medikation-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Systemische Therapie Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-test-data-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Niraparib

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**effective**: 2022-01-25 --> (ongoing)

**note**: 

> 

Erhaltungstherapie mit PARP-Inhibitor


### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Text** | **Timing** |
| * | Einschleichen über 2-4 Wochen | Once |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-onko-medikation-3",
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
      "version" : "2022",
      "code" : "L01XK02",
      "display" : "Niraparib"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "effectivePeriod" : {
    "start" : "2022-01-25"
  },
  "note" : [{
    "text" : "Erhaltungstherapie mit PARP-Inhibitor"
  }],
  "dosage" : [{
    "text" : "Einschleichen über 2-4 Wochen",
    "timing" : {
      "repeat" : {
        "boundsRange" : {
          "low" : {
            "value" : 2,
            "unit" : "Wochen",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          },
          "high" : {
            "value" : 4,
            "unit" : "Wochen",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          }
        }
      }
    }
  }]
}

```
