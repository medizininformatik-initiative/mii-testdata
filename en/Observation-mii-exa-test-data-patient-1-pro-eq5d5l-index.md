# mii-exa-test-data-patient-1-pro-eq5d5l-index - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-pro-eq5d5l-index**

## Example Observation: mii-exa-test-data-patient-1-pro-eq5d5l-index

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation EQ-5D-5L Index](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-EQ5D-IDX-PAT1-001

**status**: Final

**code**: EuroQol five dimension five level index value (observable entity)

**subject**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**focus**: [Condition Mittelgradige depressive Episode](Condition-mii-exa-test-data-pro-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-06-01 --> 2024-06-15](Encounter-mii-exa-test-data-pro-encounter-1.md)

**effective**: 2024-03-15 11:00:00+0100

**performer**: [Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)](Patient-mii-exa-test-data-pro-patient-1.md)

**value**: 0.812 1 (Details: UCUM code1 = '1')

**interpretation**: Good health state

**note**: 

> 

Reference: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018). https://doi.org/10.1007/s40273-018-0615-8


**method**: EuroQoL five dimension five level questionnaire

**derivedFrom**: [Response to Questionnaire '->MII QST PRO PHQ-9' about '->Anna Fragebogen Female, DoB: 1988-12-05 ( https://www.charite.de/fhir/sid/patientenidentifikation#PRO-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-patient-1-pro-phq9-response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-pro-eq5d5l-index",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-index"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-index"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-EQ5D-IDX-PAT1-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736534008",
      "display" : "EuroQol five dimension five level index value (observable entity)"
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
    "value" : 0.812,
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
    "text" : "Good health state"
  }],
  "note" : [{
    "text" : "Reference: Ludwig, K., Graf von der Schulenburg, JM. & Greiner, W. German Value Set for the EQ-5D-5L. PharmacoEconomics 36, 663-674 (2018). https://doi.org/10.1007/s40273-018-0615-8"
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
