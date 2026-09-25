# mii-exa-test-data-practitioner-physician-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-practitioner-physician-1**

## Example Practitioner: mii-exa-test-data-practitioner-physician-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**active**: true

**name**: Rahel Hirsch 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "mii-exa-test-data-practitioner-physician-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "active" : true,
  "name" : [{
    "family" : "Hirsch",
    "given" : ["Rahel"]
  }]
}

```
