# mii-exa-test-data-icu-servicerequest-monitoring-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-icu-servicerequest-monitoring-1**

## Example ServiceRequest: mii-exa-test-data-icu-servicerequest-monitoring-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-servicerequest-id`/icu-sr-monitoring-1

**status**: Active

**intent**: Order

**category**: Monitoring of patient

**code**: Monitoring of blood pressure, temperature, pulse rate and respiratory rate

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**occurrence**: 2024-05-01 12:00:00+0200 --> 2024-05-14 12:00:00+0200

**authoredOn**: 2024-05-01 12:00:00+0200

**requester**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-icu-servicerequest-monitoring-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-servicerequest-id",
    "value" : "icu-sr-monitoring-1"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182777000",
      "display" : "Monitoring of patient"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "304495004",
      "display" : "Monitoring of blood pressure, temperature, pulse rate and respiratory rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "occurrencePeriod" : {
    "start" : "2024-05-01T12:00:00+02:00",
    "end" : "2024-05-14T12:00:00+02:00"
  },
  "authoredOn" : "2024-05-01T12:00:00+02:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }
}

```
