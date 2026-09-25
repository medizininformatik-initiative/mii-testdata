# mii-exa-test-data-studien-group-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studien-group-1**

## Example Group: mii-exa-test-data-studien-group-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**active**: true

**type**: Person

**actual**: false

**code**: Patient (person)

**managingEntity**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "mii-exa-test-data-studien-group-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "active" : true,
  "type" : "person",
  "actual" : false,
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "116154003",
      "display" : "Patient (person)"
    }]
  },
  "managingEntity" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  }
}

```
