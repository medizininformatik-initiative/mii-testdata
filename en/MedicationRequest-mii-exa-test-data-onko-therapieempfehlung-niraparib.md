# mii-exa-test-data-onko-therapieempfehlung-niraparib - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-therapieempfehlung-niraparib**

## Example MedicationRequest: mii-exa-test-data-onko-therapieempfehlung-niraparib

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Therapieempfehlung Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Option

**medication**: Niraparib

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**authoredOn**: 2022-03-10

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**note**: 

> 

Erhaltungstherapie bei BRCA1-positivem Ovarialkarzinom


### DosageInstructions

| | | |
| :--- | :--- | :--- |
| - | **Text** | **Timing** |
| * | Einschleichen über 2-4 Wochen | Once |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-onko-therapieempfehlung-niraparib",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "option",
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
  "authoredOn" : "2022-03-10",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "note" : [{
    "text" : "Erhaltungstherapie bei BRCA1-positivem Ovarialkarzinom"
  }],
  "dosageInstruction" : [{
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
