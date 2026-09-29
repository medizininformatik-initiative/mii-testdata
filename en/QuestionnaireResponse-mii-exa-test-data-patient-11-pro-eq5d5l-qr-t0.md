# mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0**

## Example QuestionnaireResponse: mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "language" : "de",
  "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euroqol-eq5d5l-collectable",
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
  },
  "authored" : "2025-02-10T09:20:00+01:00",
  "item" : [{
    "linkId" : "euroqol-eq5d5l-q01-MO",
    "answer" : [{
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "3",
        "display" : "Ich habe mäßige Probleme herumzugehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-q02-SC",
    "answer" : [{
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "3",
        "display" : "Ich habe mäßige Probleme, mich selbst zu waschen oder anzuziehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-q03-UA",
    "answer" : [{
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "2",
        "display" : "Ich habe leichte Probleme, meinen alltäglichen Tätigkeiten nachzugehen"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-q04-PD",
    "answer" : [{
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "3",
        "display" : "Ich habe mäßige Schmerzen oder Beschwerden"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-q05-AD",
    "answer" : [{
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-eq-5d-value-set",
        "code" : "2",
        "display" : "Ich bin ein wenig ängstlich oder deprimiert"
      }
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-score-profile",
    "answer" : [{
      "valueInteger" : 33232
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-score-index",
    "answer" : [{
      "valueDecimal" : 0.512
    }]
  },
  {
    "linkId" : "euroqol-eq5d5l-vas",
    "answer" : [{
      "valueInteger" : 45
    }]
  }]
}

```
