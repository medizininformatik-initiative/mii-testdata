# mii-exa-test-data-patient-11-pro-phq9-score-t0 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-pro-phq9-score-t0**

## Example Observation: mii-exa-test-data-patient-11-pro-phq9-score-t0

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation PHQ-9](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-PHQ9-PAT11-T0

**status**: Final

**code**: Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**focus**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --> 2025-02-10 11:30:00+0100](Encounter-mii-exa-test-data-patient-11-encounter-2.md)

**effective**: 2025-02-10 09:35:00+0100

**performer**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**value**: 14 {score} (Details: UCUM code{score} = '{score}')

**interpretation**: Moderate Depression (10-14)

**note**: 

> 

Screening im Rahmen der Studien-Baseline; Vorstellung in der Psychokardiologie empfohlen.


**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'](QuestionnaireResponse-mii-exa-test-data-patient-11-pro-phq9-qr-t0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-pro-phq9-score-t0",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-PHQ9-PAT11-T0"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44261-6",
      "display" : "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
  },
  "effectiveDateTime" : "2025-02-10T09:35:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-patient-11"
  }],
  "valueQuantity" : {
    "value" : 14,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }],
    "text" : "Moderate Depression (10-14)"
  }],
  "note" : [{
    "text" : "Screening im Rahmen der Studien-Baseline; Vorstellung in der Psychokardiologie empfohlen."
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-phq9-qr-t0"
  }]
}

```
