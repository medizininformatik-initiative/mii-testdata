# mii-exa-test-data-patient-1-icu-score-icdsc-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-score-icdsc-1**

## Example Observation: mii-exa-test-data-patient-1-icu-score-icdsc-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Score ICDSC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-icdsc)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey, Assessment scales (assessment scale)

**code**: Intensive Care Delirium Screening Checklist score (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-06 20:00:00+0200

**issued**: 2024-05-06 22:00:00+0200

**performer**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**value**: 6

**interpretation**: Positive

**hasMember**: [Observation Richmond Agitation Sedation Scale score (observable entity)](Observation-mii-exa-test-data-patient-1-icu-score-rass-1.md)

**derivedFrom**: [Observation Richmond Agitation Sedation Scale score (observable entity)](Observation-mii-exa-test-data-patient-1-icu-score-rass-1.md)

> **component****code**: Altered level of consciousness**value**: 1

> **component****code**: Inattention**value**: 1

> **component****code**: Disorientation**value**: 1

> **component****code**: Hallucination, delusion, or psychosis**value**: 0

> **component****code**: Psychomotor agitation or retardation**value**: 1

> **component****code**: Inappropriate speech or mood**value**: 0

> **component****code**: Sleep/wake cycle disturbance**value**: 1

> **component****code**: Symptom fluctuation**value**: 1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-score-icdsc-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-icdsc"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "273249006",
      "display" : "Assessment scales (assessment scale)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "1351995008",
      "display" : "Intensive Care Delirium Screening Checklist score (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-06T20:00:00+02:00",
  "issued" : "2024-05-06T22:00:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }],
  "valueInteger" : 6,
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "POS",
      "display" : "Positive"
    }]
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-score-rass-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-score-rass-1"
  }],
  "component" : [{
    "code" : {
      "text" : "Altered level of consciousness"
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "text" : "Inattention"
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "text" : "Disorientation"
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "text" : "Hallucination, delusion, or psychosis"
    },
    "valueInteger" : 0
  },
  {
    "code" : {
      "text" : "Psychomotor agitation or retardation"
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "text" : "Inappropriate speech or mood"
    },
    "valueInteger" : 0
  },
  {
    "code" : {
      "text" : "Sleep/wake cycle disturbance"
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "text" : "Symptom fluctuation"
    },
    "valueInteger" : 1
  }]
}

```
