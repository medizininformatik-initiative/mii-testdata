# mii-exa-test-data-patient-1-pro-schmerz-zusatz-response - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-schmerz-zusatz-response**

## Example QuestionnaireResponse: mii-exa-test-data-patient-1-pro-schmerz-zusatz-response



## Resource Content

```json
{
  "resourceType" : "QuestionnaireResponse",
  "id" : "mii-exa-test-data-patient-1-pro-schmerz-zusatz-response",
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
    "value" : "PRO-QR-SZ-PAT1-001"
  },
  "questionnaire" : "https://www.charite.de/fhir/kds-testdata/Questionnaire/pro-zusatzfragen-schmerz",
  "_questionnaire" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/display",
      "valueString" : "PRO-Zusatzfragen Schmerz"
    }]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "authored" : "2024-03-15T10:50:00+01:00",
  "author" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "item" : [{
    "linkId" : "zusatz-schmerz-vorhanden",
    "text" : "Hatten Sie in den letzten 7 Tagen Schmerzen?",
    "answer" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      },
      "item" : [{
        "linkId" : "zusatz-schmerz-lokalisation",
        "text" : "Wo hatten Sie diese Schmerzen hauptsächlich?",
        "answer" : [{
          "valueString" : "Unterer Rücken"
        }]
      },
      {
        "linkId" : "zusatz-schmerz-intensitaet",
        "text" : "Wie stark waren die Schmerzen im Durchschnitt (0 = kein Schmerz, 10 = stärkster vorstellbarer Schmerz)?",
        "answer" : [{
          "valueInteger" : 6
        }]
      }]
    }]
  }]
}

```
