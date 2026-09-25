# mii-exa-test-data-studien-encounter-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studien-encounter-1**

## Example Encounter: mii-exa-test-data-studien-encounter-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Felix Proband Male, DoB: 1990-03-20 ( https://www.charite.de/fhir/sid/patientenidentifikation#STUD-TEST-001)](Patient-mii-exa-test-data-studien-patient-1.md)

**period**: 2024-07-01 --> 2024-07-20



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-studien-encounter-1",
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
    "reference" : "Patient/mii-exa-test-data-studien-patient-1"
  },
  "period" : {
    "start" : "2024-07-01",
    "end" : "2024-07-20"
  }
}

```
