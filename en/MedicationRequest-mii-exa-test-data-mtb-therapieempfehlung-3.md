# MTB Therapieempfehlung - Trametinib - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Therapieempfehlung - Trametinib**

## Example MedicationRequest: MTB Therapieempfehlung - Trametinib

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Draft

**intent**: Option

**medication**: Trametinib

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**authoredOn**: 2024-03-28

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

### DosageInstructions

| | | |
| :--- | :--- | :--- |
| - | **Text** | **Timing** |
| * | Ausschleichen über 1-2 Wochen | Once |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-mtb-therapieempfehlung-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "draft",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "L01EE01",
      "display" : "Trametinib"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "authoredOn" : "2024-03-28",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "dosageInstruction" : [{
    "text" : "Ausschleichen über 1-2 Wochen",
    "timing" : {
      "repeat" : {
        "boundsRange" : {
          "low" : {
            "value" : 1,
            "unit" : "Wochen",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          },
          "high" : {
            "value" : 2,
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
