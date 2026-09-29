# mii-exa-test-data-biobank-device-inkubator-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-device-inkubator-1**

## Example Device: mii-exa-test-data-biobank-device-inkubator-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/Geraete`/ZEBANC_INK_007

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | CO2-Inkubator Zellkulturbank 7 | User Friendly name |

**type**: Carbon dioxide laboratory incubator

**owner**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-biobank-device-inkubator-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Geraete",
    "value" : "ZEBANC_INK_007"
  }],
  "status" : "active",
  "deviceName" : [{
    "name" : "CO2-Inkubator Zellkulturbank 7",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "467301004",
      "display" : "Carbon dioxide laboratory incubator"
    }]
  },
  "owner" : {
    "reference" : "Organization/mii-exa-test-data-organization-biobank-charite"
  }
}

```
