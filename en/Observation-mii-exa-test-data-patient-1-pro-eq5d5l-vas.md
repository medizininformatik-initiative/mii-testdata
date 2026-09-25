# mii-exa-test-data-patient-1-pro-eq5d5l-vas - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-eq5d5l-vas**

## Example Observation: mii-exa-test-data-patient-1-pro-eq5d5l-vas

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation EQ-5D-5L VAS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-EQ5D-VAS-PAT1-001

**status**: Final

**code**: EuroQol visual analogue score (observable entity)

**subject**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**focus**: [Condition Mittelgradige depressive Episode](Condition-mii-exa-test-data-pro-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-06-01 --> 2024-06-15](Encounter-mii-exa-test-data-pro-encounter-1.md)

**effective**: 2024-03-15 11:00:00+0100

**performer**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**value**: 75 1 (Details: UCUM code1 = '1')

**interpretation**: Good self-rated health

**note**: 

> 

VAS scale 0-100, higher values indicate better health


**method**: EuroQoL five dimension five level questionnaire

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-phq9-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-pro-eq5d5l-vas",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-EQ5D-VAS-PAT1-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736535009",
      "display" : "EuroQol visual analogue score (observable entity)"
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
  "effectiveDateTime" : "2024-03-15T11:00:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-pro-patient-1"
  }],
  "valueQuantity" : {
    "value" : 75,
    "unit" : "1",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }],
    "text" : "Good self-rated health"
  }],
  "note" : [{
    "text" : "VAS scale 0-100, higher values indicate better health"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73041000052103",
      "display" : "EuroQoL five dimension five level questionnaire"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-1-pro-phq9-response"
  }]
}

```
