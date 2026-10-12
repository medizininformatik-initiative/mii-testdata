# PRO-Zusatzfragen Schmerz (Testdaten) - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PRO-Zusatzfragen Schmerz (Testdaten)**

## Questionnaire: PRO-Zusatzfragen Schmerz (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.charite.de/fhir/kds-testdata/Questionnaire/pro-zusatzfragen-schmerz | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2024-03-01 | *Computable Name*:PROZusatzfragenSchmerz |

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [PRO QuestionnaireResponse: Zusatzfragen Schmerz fuer Patient 1 (Folgefragen unter der Antwort)](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-schmerz-zusatz-response.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "mii-exa-test-data-pro-questionnaire-schmerz-zusatz",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "language" : "de",
  "url" : "https://www.charite.de/fhir/kds-testdata/Questionnaire/pro-zusatzfragen-schmerz",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "PROZusatzfragenSchmerz",
  "title" : "PRO-Zusatzfragen Schmerz",
  "status" : "active",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2024-03-01",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "item" : [{
    "linkId" : "zusatz-schmerz-vorhanden",
    "text" : "Hatten Sie in den letzten 7 Tagen Schmerzen?",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    }],
    "item" : [{
      "linkId" : "zusatz-schmerz-lokalisation",
      "text" : "Wo hatten Sie diese Schmerzen hauptsächlich?",
      "type" : "string"
    },
    {
      "linkId" : "zusatz-schmerz-intensitaet",
      "text" : "Wie stark waren die Schmerzen im Durchschnitt (0 = kein Schmerz, 10 = stärkster vorstellbarer Schmerz)?",
      "type" : "integer"
    }]
  }]
}

```
