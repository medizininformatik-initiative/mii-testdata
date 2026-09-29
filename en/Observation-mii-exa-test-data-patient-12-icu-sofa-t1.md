# mii-exa-test-data-patient-12-icu-sofa-t1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-icu-sofa-t1**

## Example Observation: mii-exa-test-data-patient-12-icu-sofa-t1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Score SOFA](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-sofa)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey, Assessment scales (assessment scale)

**code**: Sequential Organ Failure Assessment SOFA

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-09 09:00:00+0100

**issued**: 2025-03-09 09:30:00+0100

**performer**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**value**: 12

**interpretation**: High

**note**: 

> 

Kreislauf 4 Punkte unter hochdosiertem Noradrenalin; Respiration 4 bei Horovitz < 100 unter Beatmung.


> **component****code**: Respiration [Score] SOFA**value**: 4

> **component****code**: Coagulation [Score] SOFA**value**: 2

> **component****code**: Liver [Score] SOFA**value**: 1

> **component****code**: Cardiovascular [Score] SOFA**value**: 4

> **component****code**: Central nervous system [Score] SOFA**value**: 1

> **component****code**: Renal [Score] SOFA**value**: 0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-icu-sofa-t1",
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
      "code" : "1187491009",
      "display" : "Sequential Organ Failure Assessment score (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-09T09:00:00+01:00",
  "issued" : "2025-03-09T09:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }],
  "valueInteger" : 12,
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "Kreislauf 4 Punkte unter hochdosiertem Noradrenalin; Respiration 4 bei Horovitz < 100 unter Beatmung."
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
    "valueInteger" : 4
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
    "valueInteger" : 2
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
    "valueInteger" : 1
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
    "valueInteger" : 4
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
    "valueInteger" : 1
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
    "valueInteger" : 0
  }]
}

```
