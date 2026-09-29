# mii-exa-test-data-patient-1-pro-promis29-response - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-promis29-response**

## Example QuestionnaireResponse: mii-exa-test-data-patient-1-pro-promis29-response



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "mii-exa-test-data-patient-1-pro-promis29-response",
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
  "identifier" : {
    "system" : "https://www.charite.de/fhir/sid/pro-questionnaire-response-id",
    "value" : "PRO-QR-P29-PAT1-001"
  },
  "questionnaire" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29-de",
  "_questionnaire" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/display",
      "valueString" : "PROMIS-29 Profile v2.1 (deutsche Fassung)"
    }]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "authored" : "2024-03-15T10:30:00+01:00",
  "author" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "item" : [{
    "linkId" : "PROMIS-29.Anxiety",
    "text" : "ANGST",
    "item" : [{
      "linkId" : "promis-edanx01",
      "text" : "Ich fürchtete mich.",
      "answer" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA6270-8",
          "display" : "Never",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Nie"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      }]
    },
    {
      "linkId" : "promis-edanx41",
      "text" : "Meine Sorgen haben mich überwältigt.",
      "answer" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA10066-1",
          "display" : "Rarely",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Selten"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      }]
    }]
  },
  {
    "linkId" : "PROMIS-29.Depression",
    "text" : "DEPRESSION",
    "item" : [{
      "linkId" : "promis-eddep04",
      "text" : "Ich fühlte mich wertlos.",
      "answer" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA10066-1",
          "display" : "Rarely",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Selten"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      }]
    },
    {
      "linkId" : "promis-eddep29",
      "text" : "Ich fühlte mich niedergeschlagen.",
      "answer" : [{
        "valueCoding" : {
          "system" : "http://loinc.org",
          "code" : "LA10082-8",
          "display" : "Sometimes",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Manchmal"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      }]
    }]
  }]
}

```
