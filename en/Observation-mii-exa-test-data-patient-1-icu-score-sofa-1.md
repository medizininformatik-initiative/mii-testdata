# mii-exa-test-data-patient-1-icu-score-sofa-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-score-sofa-1**

## Example Observation: mii-exa-test-data-patient-1-icu-score-sofa-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Score SOFA](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey, Assessment scales (assessment scale)

**code**: Sequential Organ Failure Assessment SOFA

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-06 09:00:00+0200

**issued**: 2024-05-06 11:00:00+0200

**performer**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**value**: 9

**interpretation**: High

**hasMember**: [Observation Glasgow coma score total](Observation-mii-exa-test-data-patient-1-icu-score-gcs-1.md)

**derivedFrom**: 

* [Observation Glasgow coma score total](Observation-mii-exa-test-data-patient-1-icu-score-gcs-1.md)
* [Observation Horowitz index in Arterial blood](Observation-mii-exa-test-data-patient-1-icu-vent-horowitz-1.md)

> **component****code**: Respiration [Score] SOFA**value**: 3

> **component****code**: Coagulation [Score] SOFA**value**: 1

> **component****code**: Liver [Score] SOFA**value**: 0

> **component****code**: Cardiovascular [Score] SOFA**value**: 1

> **component****code**: Central nervous system [Score] SOFA**value**: 3

> **component****code**: Renal [Score] SOFA**value**: 1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-score-sofa-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa"],
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
      "system" : "http://loinc.org",
      "code" : "96789-3",
      "display" : "Sequential Organ Failure Assessment SOFA"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "1187491009",
      "display" : "Sequential Organ Failure Assessment score (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-06T09:00:00+02:00",
  "issued" : "2024-05-06T11:00:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }],
  "valueInteger" : 9,
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-score-gcs-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-score-gcs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-vent-horowitz-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96823-0",
        "display" : "Respiration [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxxx",
        "display" : "SOFA Subscore - Respiratory"
      }]
    },
    "valueInteger" : 3
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96824-8",
        "display" : "Coagulation [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxx",
        "display" : "SOFA Subscore - Coagulation"
      }]
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96825-5",
        "display" : "Liver [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxx",
        "display" : "SOFA Subscore - Hepatic"
      }]
    },
    "valueInteger" : 0
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96826-3",
        "display" : "Cardiovascular [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxx",
        "display" : "SOFA Subscore - Cardiovascular"
      }]
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96827-1",
        "display" : "Central nervous system [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxxx",
        "display" : "SOFA Subscore - Neurological"
      }]
    },
    "valueInteger" : 3
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96828-9",
        "display" : "Renal [Score] SOFA"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "xxx",
        "display" : "SOFA Subscore - Renal"
      }]
    },
    "valueInteger" : 1
  }]
}

```
