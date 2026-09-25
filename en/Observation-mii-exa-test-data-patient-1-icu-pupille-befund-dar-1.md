# mii-exa-test-data-patient-1-icu-pupille-befund-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-pupille-befund-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-pupille-befund-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Untersuchung Pupillenbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenbefund)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-pupille-befund-dar-1

**status**: Final

**category**: Exam

**code**: Pupil finding (finding)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-06 19:30:00+0200

**note**: 

> 

Pupillenstatus um 19:30 Uhr bei ausgepraegtem periorbitalem Lidoedem beidseits nicht durchfuehrbar; alle neun Einzelbefunde tragen denselben Grund.


**hasMember**: 

* [Observation Pupil afferent light reaction](Observation-mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-dar-1.md)
* [Observation Pupil afferent light reaction](Observation-mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-dar-1.md)
* [Observation Indirect light pupillary reflex](Observation-mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-dar-1.md)
* [Observation Indirect light pupillary reflex](Observation-mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-dar-1.md)
* [Observation Size of pupil](Observation-mii-exa-test-data-patient-1-icu-pupille-groesse-re-dar-1.md)
* [Observation Size of pupil](Observation-mii-exa-test-data-patient-1-icu-pupille-groesse-li-dar-1.md)
* [Observation Pupil shape](Observation-mii-exa-test-data-patient-1-icu-pupille-form-re-dar-1.md)
* [Observation Pupil shape](Observation-mii-exa-test-data-patient-1-icu-pupille-form-li-dar-1.md)
* [Observation Finding of proportion of pupil (finding)](Observation-mii-exa-test-data-patient-1-icu-pupille-symmetrie-dar-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-pupille-befund-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-untersuchung-pupillenbefund"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-pupille-befund-dar-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "247010007",
      "display" : "Pupil finding (finding)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "80310-6",
      "display" : "Pupil assessment panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-06T19:30:00+02:00",
  "note" : [{
    "text" : "Pupillenstatus um 19:30 Uhr bei ausgepraegtem periorbitalem Lidoedem beidseits nicht durchfuehrbar; alle neun Einzelbefunde tragen denselben Grund."
  }],
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-licht-dir-re-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-licht-dir-li-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-licht-ind-re-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-licht-ind-li-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-groesse-re-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-groesse-li-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-form-re-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-form-li-dar-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-icu-pupille-symmetrie-dar-1"
  }]
}

```
