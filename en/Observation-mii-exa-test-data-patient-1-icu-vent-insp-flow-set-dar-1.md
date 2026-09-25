# mii-exa-test-data-patient-1-icu-vent-insp-flow-set-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-vent-insp-flow-set-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-vent-insp-flow-set-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Eingestellter Inspiratorischer Gasfluss](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-vent-insp-flow-set-dar-1

**partOf**: [Procedure Controlled ventilation (procedure)](Procedure-mii-exa-test-data-patient-1-icu-vent-beatmung-1.md)

**status**: Final

**category**: Artificial ventilation (regime/therapy)

**code**: Inspiratory flow setting Ventilator

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-07 06:00:00+0200

**issued**: 2024-05-07 06:10:00+0200

**dataAbsentReason**: Not Applicable

**note**: 

> 

Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt.


**device**: [DeviceMetric: type = Artificial ventilation (regime/therapy); category = measurement](DeviceMetric-mii-exa-test-data-patient-1-icu-vent-dm-param-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-vent-insp-flow-set-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-vent-insp-flow-set-dar-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-1-icu-vent-beatmung-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "40617009",
      "display" : "Artificial ventilation (regime/therapy)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "76275-7",
      "display" : "Inspiratory flow setting Ventilator"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-07T06:00:00+02:00",
  "issued" : "2024-05-07T06:10:00+02:00",
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "not-applicable",
      "display" : "Not Applicable"
    }]
  },
  "note" : [{
    "text" : "Nicht anwendbar: Beatmungsgeraet am 07.05.2024 um 06:00 Uhr im Standby (Spontanatmungsversuch am T-Stueck) - es war kein Beatmungsparameter eingestellt."
  }],
  "device" : {
    "reference" : "DeviceMetric/mii-exa-test-data-patient-1-icu-vent-dm-param-1"
  }
}

```
