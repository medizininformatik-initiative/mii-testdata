# mii-exa-test-data-patient-1-icu-muv-kopfumfang-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-muv-kopfumfang-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-muv-kopfumfang-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU MUV Kopfumfang](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-muv-kopfumfang-dar-1

**status**: Final

**category**: Vital Signs, Body measure (observable entity)

**code**: Head Occipital-frontal circumference

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-05 08:30:00+0200 --> 2024-05-05 08:35:00+0200

**dataAbsentReason**: Not Performed

**note**: 

> 

Kopfumfang nicht gemessen: bei der erwachsenen Intensivpatientin nicht Bestandteil der Routineerhebung.


**bodySite**: Head structure (body structure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-muv-kopfumfang-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-muv-kopfumfang-dar-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "248326004",
      "display" : "Body measure (observable entity)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "9843-4",
      "display" : "Head Occipital-frontal circumference"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "363812007"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-05-05T08:30:00+02:00",
    "end" : "2024-05-05T08:35:00+02:00"
  },
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "not-performed",
      "display" : "Not Performed"
    }]
  },
  "note" : [{
    "text" : "Kopfumfang nicht gemessen: bei der erwachsenen Intensivpatientin nicht Bestandteil der Routineerhebung."
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "69536005",
      "display" : "Head structure (body structure)"
    }]
  }
}

```
