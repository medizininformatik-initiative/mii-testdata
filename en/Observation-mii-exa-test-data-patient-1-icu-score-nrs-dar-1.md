# mii-exa-test-data-patient-1-icu-score-nrs-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-score-nrs-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-score-nrs-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Score Numerische Ratingskala](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-numerische-ratingskala)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey, Assessment scales (assessment scale)

**code**: Numeric Pain Rating Scale score

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-05 10:00:00+0200

**performer**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**dataAbsentReason**: Temporarily Unknown

**note**: 

> 

Selbstauskunft unter Sedierung (RASS -3) nicht erhebbar; Fremdeinschaetzung via ZOPA.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **DataAbsentReason** |
| * | Visuelle Analogskala als Gegenprobe | Not Performed |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-score-nrs-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-score-numerische-ratingskala"],
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
      "code" : "1284857008"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-05T10:00:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }],
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "temp-unknown",
      "display" : "Temporarily Unknown"
    }]
  },
  "note" : [{
    "text" : "Selbstauskunft unter Sedierung (RASS -3) nicht erhebbar; Fremdeinschaetzung via ZOPA."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "38214-3",
        "display" : "Pain severity [Score] Visual analog score"
      }],
      "text" : "Visuelle Analogskala als Gegenprobe"
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "not-performed",
        "display" : "Not Performed"
      }]
    }
  }]
}

```
