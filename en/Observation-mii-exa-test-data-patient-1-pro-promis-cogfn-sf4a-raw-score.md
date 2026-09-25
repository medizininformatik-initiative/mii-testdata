# mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score**

## Example Observation: mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO PROMIS Cognitive Function SF 4a Raw Score](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-COGFN-RAW-PAT1-001

**status**: Final

**code**: PROMIS short form - cognitive function 4a - version 2.0 raw score

**subject**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**focus**: [Condition Mittelgradige depressive Episode](Condition-mii-exa-test-data-pro-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-06-01 --> 2024-06-15](Encounter-mii-exa-test-data-pro-encounter-1.md)

**effective**: 2024-03-15 12:00:00+0100

**performer**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**value**: 15 {score} (Details: UCUM code{score} = '{score}')

**interpretation**: Above average cognitive function

**note**: 

> 

Cognitive function screening as part of comprehensive PRO assessment


**method**: PROMIS Cognitive Function SF 4a

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 4 | 20 | Valid range for PROMIS Cognitive Function SF 4a raw scores |

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-phq9-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-pro-promis-cogfn-sf4a-raw-score",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-cognitive-function-sf4a-raw-score"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-cognitive-function-sf4a-raw-score"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-COGFN-RAW-PAT1-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81533-2",
      "display" : "PROMIS short form - cognitive function 4a - version 2.0 raw score"
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
  "effectiveDateTime" : "2024-03-15T12:00:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  }],
  "valueQuantity" : {
    "value" : 15,
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
    "text" : "Above average cognitive function"
  }],
  "note" : [{
    "text" : "Cognitive function screening as part of comprehensive PRO assessment"
  }],
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-questionnaire-catalogue",
      "code" : "promis-cognitive-function-sf4a",
      "display" : "PROMIS Cognitive Function Abilities 4a Short Form Questionnaire"
    }],
    "text" : "PROMIS Cognitive Function SF 4a"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 4
    },
    "high" : {
      "value" : 20
    },
    "text" : "Valid range for PROMIS Cognitive Function SF 4a raw scores"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-1-pro-phq9-response"
  }]
}

```
