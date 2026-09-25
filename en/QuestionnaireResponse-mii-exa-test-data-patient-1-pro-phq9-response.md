# mii-exa-test-data-patient-1-pro-phq9-response - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-phq9-response**

## Example QuestionnaireResponse: mii-exa-test-data-patient-1-pro-phq9-response



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "mii-exa-test-data-patient-1-pro-phq9-response",
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
  "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9",
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "authored" : "2024-03-15T10:00:00+01:00",
  "item" : [{
    "linkId" : "phq-phq2a",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2b",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2c",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6570-1",
        "display" : "More than half the days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2d",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2e",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all"
      }
    }]
  },
  {
    "linkId" : "phq-phq2f",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2g",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq2h",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6568-5",
        "display" : "Not at all"
      }
    }]
  },
  {
    "linkId" : "phq-phq2i",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6569-3",
        "display" : "Several days"
      }
    }]
  },
  {
    "linkId" : "phq-phq9-score-total",
    "answer" : [{
      "valueDecimal" : 8
    }]
  },
  {
    "linkId" : "phq-phq9-difficulty",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://loinc.org",
        "code" : "LA6573-5",
        "display" : "Somewhat difficult"
      }
    }]
  }]
}

```
