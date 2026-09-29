# mii-exa-test-data-patient-13-register-consent - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-register-consent**

## Example Consent: mii-exa-test-data-patient-13-register-consent

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Participants

* **Role**: Patient
  * **Details**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

This consent is made under the regulation Common Rule Informed Consent .

The subject has given their consent.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "mii-exa-test-data-patient-13-register-consent",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "research"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
      "code" : "research"
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "dateTime" : "2024-02-05",
  "policyRule" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
      "code" : "cric"
    }]
  }
}

```
