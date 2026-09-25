# mii-exa-test-data-bildgebung-endpoint-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bildgebung-endpoint-1**

## Example Endpoint: mii-exa-test-data-bildgebung-endpoint-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**connectionType**: [Endpoint Connection Type: dicom-wado-rs](http://terminology.hl7.org/7.4.0/CodeSystem-endpoint-connection-type.html#endpoint-connection-type-dicom-wado-rs) (DICOM WADO-RS)

**name**: Charite PACS WADO-RS

**payloadType**: Any

**address**: [https://pacs.charite.de/wado-rs](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://pacs.charite.de/wado-rs)



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "mii-exa-test-data-bildgebung-endpoint-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "connectionType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
    "code" : "dicom-wado-rs",
    "display" : "DICOM WADO-RS"
  },
  "name" : "Charite PACS WADO-RS",
  "payloadType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
      "code" : "any",
      "display" : "Any"
    }]
  }],
  "address" : "https://pacs.charite.de/wado-rs"
}

```
