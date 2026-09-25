# mii-exa-test-data-biobank-patient-8 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-patient-8**

## Example Patient: mii-exa-test-data-biobank-patient-8

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Heinrich Plasma Male, DoB: 1969-07-28 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-008)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-test-data-biobank-patient-8",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
    "value" : "BIO-TEST-008"
  }],
  "name" : [{
    "family" : "Plasma",
    "given" : ["Heinrich"]
  }],
  "gender" : "male",
  "birthDate" : "1969-07-28"
}

```
