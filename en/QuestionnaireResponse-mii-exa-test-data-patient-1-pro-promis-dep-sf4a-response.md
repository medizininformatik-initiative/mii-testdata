# mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response**

## Example QuestionnaireResponse: mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "mii-exa-test-data-patient-1-pro-promis-dep-sf4a-response",
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
  "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a",
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "authored" : "2024-03-15T10:15:00+01:00",
  "item" : [{
    "linkId" : "promis-eddep04",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA10066-1",
        "display" : "Rarely"
      }
    }]
  },
  {
    "linkId" : "promis-eddep06",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA10066-1",
        "display" : "Rarely"
      }
    }]
  },
  {
    "linkId" : "promis-eddep29",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6270-8",
        "display" : "Never"
      }
    }]
  },
  {
    "linkId" : "promis-eddep41",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA10066-1",
        "display" : "Rarely"
      }
    }]
  },
  {
    "linkId" : "promis-depression-score-raw",
    "answer" : [{
      "valueDecimal" : 7
    }]
  },
  {
    "linkId" : "promis-depression-score-tscore",
    "answer" : [{
      "valueDecimal" : 52.7
    }]
  }]
}

```
