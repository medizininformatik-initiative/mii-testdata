# mii-exa-test-data-patient-1-pro-phq9-obs-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-phq9-obs-1**

## Example Observation: mii-exa-test-data-patient-1-pro-phq9-obs-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation PHQ-9](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-phq-9)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-phq-9)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-PHQ9-PROFIL-PAT1-001

**status**: Final

**code**: Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]

**subject**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**focus**: [Condition Mittelgradige depressive Episode](Condition-mii-exa-test-data-pro-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-06-01 --> 2024-06-15](Encounter-mii-exa-test-data-pro-encounter-1.md)

**effective**: 2024-03-15 10:00:00+0100

**performer**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**value**: 8 {score} (Details: UCUM code{score} = '{score}')

**interpretation**: Mild depression (5-9)

**note**: 

> 

Selbstauskunft im Rahmen der ambulanten Verlaufskontrolle.


**method**: Patient Health Questionnaire-9 (PHQ-9)

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-phq9-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-pro-phq9-obs-1",
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
    "value" : "PRO-OBS-PHQ9-PROFIL-PAT1-001"
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
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-pro-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-pro-encounter-1"
  },
  "effectiveDateTime" : "2024-03-15T10:00:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  }],
  "valueQuantity" : {
    "value" : 8,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }],
    "text" : "Mild depression (5-9)"
  }],
  "note" : [{
    "text" : "Selbstauskunft im Rahmen der ambulanten Verlaufskontrolle."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44249-1",
      "display" : "PHQ-9 quick depression assessment panel [Reported.PHQ]"
    }],
    "text" : "Patient Health Questionnaire-9 (PHQ-9)"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-1-pro-phq9-response"
  }]
}

```
