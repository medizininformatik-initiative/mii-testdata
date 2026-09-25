# mii-exa-test-data-molgen-specimen-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-molgen-specimen-2**

## Example Specimen: mii-exa-test-data-molgen-specimen-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Available

**type**: Tissue

**subject**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-04-03 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-molgen-specimen-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
      "code" : "TISS",
      "display" : "Tissue"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "collection" : {
    "collectedDateTime" : "2024-04-03"
  }
}

```
