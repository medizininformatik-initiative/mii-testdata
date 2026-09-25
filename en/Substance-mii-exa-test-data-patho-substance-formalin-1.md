# Formalin (Fixativ) - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Formalin (Fixativ)**

## Example Substance: Formalin (Fixativ)

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**code**: Neutral buffered formalin (substance)



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "mii-exa-test-data-patho-substance-formalin-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "434162003",
      "display" : "Neutral buffered formalin (substance)"
    }]
  }
}

```
