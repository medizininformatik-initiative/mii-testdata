# mii-exa-test-data-patient-1-pro-phq15-score - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-phq15-score**

## Example Observation: mii-exa-test-data-patient-1-pro-phq15-score

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation PHQ-15](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-15](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-15)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-PHQ15-PAT1-001

**status**: Final

**code**: Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]

**subject**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**focus**: [Condition Mittelgradige depressive Episode](Condition-mii-exa-test-data-pro-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-06-01 --> 2024-06-15](Encounter-mii-exa-test-data-pro-encounter-1.md)

**effective**: 2024-03-15 10:30:00+0100

**performer**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**value**: 12 {score} (Details: UCUM code{score} = '{score}')

**interpretation**: Medium somatic symptom severity (10-14)

**note**: 

> 

PHQ-15 als Ergaenzung zum PHQ-9-Depressionsscreening (somatische Symptomlast)


**method**: Patient Health Questionnaire-15 (PHQ-15)

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-15' about '->Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-phq15-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-pro-phq15-score",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-15"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-15"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-PHQ15-PAT1-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "70273-8",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-pro-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-pro-encounter-1"
  },
  "effectiveDateTime" : "2024-03-15T10:30:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  }],
  "valueQuantity" : {
    "value" : 12,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }],
    "text" : "Medium somatic symptom severity (10-14)"
  }],
  "note" : [{
    "text" : "PHQ-15 als Ergaenzung zum PHQ-9-Depressionsscreening (somatische Symptomlast)"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69728-4",
      "display" : "Patient Health Questionnaire 15 item (PHQ-15) [Reported]"
    }],
    "text" : "Patient Health Questionnaire-15 (PHQ-15)"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-1-pro-phq15-response"
  }]
}

```
