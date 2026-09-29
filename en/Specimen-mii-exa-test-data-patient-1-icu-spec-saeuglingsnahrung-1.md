# mii-exa-test-data-patient-1-icu-spec-saeuglingsnahrung-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-spec-saeuglingsnahrung-1**

## Example Specimen: mii-exa-test-data-patient-1-icu-spec-saeuglingsnahrung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-specimen-id`/icu-spec-saeuglingsnahrung-1

**status**: Available

**type**: Formula milk sample

**receivedTime**: 2024-05-06 05:45:00+0200

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-05-06 05:30:00+0200 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-1-icu-spec-saeuglingsnahrung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-specimen-id",
    "value" : "icu-spec-saeuglingsnahrung-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258653001",
      "display" : "Formula milk sample"
    }]
  },
  "receivedTime" : "2024-05-06T05:45:00+02:00",
  "collection" : {
    "collectedDateTime" : "2024-05-06T05:30:00+02:00"
  }
}

```
