# mii-exa-test-data-patho-practitioner-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patho-practitioner-2**

## Example Practitioner: mii-exa-test-data-patho-practitioner-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://gematik.de/fhir/sid/telematik-id`/1-uro-test-0002

**name**: Ulrich Stanze 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "mii-exa-test-data-patho-practitioner-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://gematik.de/fhir/sid/telematik-id",
    "value" : "1-uro-test-0002"
  }],
  "name" : [{
    "family" : "Stanze",
    "given" : ["Ulrich"],
    "prefix" : ["Dr. med."]
  }]
}

```
