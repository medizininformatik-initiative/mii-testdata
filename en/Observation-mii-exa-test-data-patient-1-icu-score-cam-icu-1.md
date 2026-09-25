# mii-exa-test-data-patient-1-icu-score-cam-icu-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-score-cam-icu-1**

## Example Observation: mii-exa-test-data-patient-1-icu-score-cam-icu-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Score CAM-ICU](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-cam-icu)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey, Assessment scales (assessment scale)

**code**: Confusion Assessment Method for the ICU

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-06 08:30:00+0200

**issued**: 2024-05-06 10:30:00+0200

**performer**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**value**: Positive (qualifier value)

**interpretation**: Positive

**hasMember**: [Observation Richmond Agitation Sedation Scale score (observable entity)](Observation-mii-exa-test-data-patient-1-icu-score-rass-1.md)

**derivedFrom**: [Observation Richmond Agitation Sedation Scale score (observable entity)](Observation-mii-exa-test-data-patient-1-icu-score-rass-1.md)

> **component****code**: Acute change from mental status baseline or Fluctuation in mental status in past 24 hours [CAM.ICU]**value**: Present (qualifier value)

> **component****code**: Feature 2: Inattention**value**: Present (qualifier value)

> **component****code**: Feature 3: Altered level of consciousness**value**: Present (qualifier value)

> **component****code**: Feature 4: Disorganized thinking**value**: Absent (qualifier value)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-score-cam-icu-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-cam-icu"],
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
      "code" : "99844-5",
      "display" : "Confusion Assessment Method for the ICU"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "450740000",
      "display" : "Confusion Assessment Method for the intensive care unit score"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-06T08:30:00+02:00",
  "issued" : "2024-05-06T10:30:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive (qualifier value)"
    }]
  },
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85634-4",
        "display" : "Is there evidence of an acute change in mental status from the patient's baseline [CAM.CMS]"
      }],
      "text" : "Acute change from mental status baseline or Fluctuation in mental status in past 24 hours [CAM.ICU]"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "52101004",
        "display" : "Present (qualifier value)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85631-0",
        "display" : "Did the patient have difficulty focusing attention [CAM.CMS]"
      }],
      "text" : "Feature 2: Inattention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "52101004",
        "display" : "Present (qualifier value)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "95815-7",
        "display" : "Altered level of consciousness during assessment period [CAM.CMS]"
      }],
      "text" : "Feature 3: Altered level of consciousness"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "52101004",
        "display" : "Present (qualifier value)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85651-8",
        "display" : "Was the patient's thinking disorganized or incoherent [CAM.CMS]"
      }],
      "text" : "Feature 4: Disorganized thinking"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "2667000",
        "display" : "Absent (qualifier value)"
      }]
    }
  }]
}

```
