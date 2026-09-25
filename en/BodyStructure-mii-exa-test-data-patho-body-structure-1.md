# Entnahmestelle Prostatastanze 01 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entnahmestelle Prostatastanze 01**

## Example BodyStructure: Entnahmestelle Prostatastanze 01

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**active**: true

**location**: Right basal peripheral zone of prostate

**patient**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-test-data-patho-body-structure-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "active" : true,
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "716902004",
      "display" : "Right basal peripheral zone of prostate"
    }]
  },
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  }
}

```
