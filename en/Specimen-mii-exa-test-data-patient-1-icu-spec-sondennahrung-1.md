# mii-exa-test-data-patient-1-icu-spec-sondennahrung-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-spec-sondennahrung-1**

## Example Specimen: mii-exa-test-data-patient-1-icu-spec-sondennahrung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-specimen-id`/icu-spec-sondennahrung-1

**status**: Available

**type**: Food specimen

**receivedTime**: 2024-05-05 07:45:00+0200

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-05-05 07:30:00+0200 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-1-icu-spec-sondennahrung-1",
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
    "value" : "icu-spec-sondennahrung-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119320006",
      "display" : "Food specimen"
    }]
  },
  "receivedTime" : "2024-05-05T07:45:00+02:00",
  "collection" : {
    "collectedDateTime" : "2024-05-05T07:30:00+02:00"
  }
}

```
