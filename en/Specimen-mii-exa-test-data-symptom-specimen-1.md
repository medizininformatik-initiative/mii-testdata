# mii-exa-test-data-symptom-specimen-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-specimen-1**

## Example Specimen: mii-exa-test-data-symptom-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/symptom-specimen`/SYMP-SPEC-0001

**status**: Available

**type**: Urine specimen

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**receivedTime**: 2025-03-04 10:15:00+0100

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2025-03-04 09:50:00+0100 | Collection of mid-stream specimen of urine |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-symptom-specimen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-specimen",
    "value" : "SYMP-SPEC-0001"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122575003",
      "display" : "Urine specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "receivedTime" : "2025-03-04T10:15:00+01:00",
  "collection" : {
    "collectedDateTime" : "2025-03-04T09:50:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "225271002",
        "display" : "Collection of mid-stream specimen of urine"
      }]
    }
  }
}

```
