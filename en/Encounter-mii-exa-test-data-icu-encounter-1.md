# mii-exa-test-data-icu-encounter-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-icu-encounter-1**

## Example Encounter: mii-exa-test-data-icu-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**period**: 2024-05-01 --> 2024-05-14

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Condition** | **Use** | **Rank** |
| * | [Condition COVID-19, Virus nachgewiesen](Condition-mii-exa-test-data-icu-diagnose-1.md) | Admission diagnosis | 1 |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-icu-encounter-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "period" : {
    "start" : "2024-05-01",
    "end" : "2024-05-14"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-test-data-icu-diagnose-1"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    },
    "rank" : 1
  }]
}

```
