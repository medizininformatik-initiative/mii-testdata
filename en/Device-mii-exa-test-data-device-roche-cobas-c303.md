# mii-exa-test-data-device-roche-cobas-c303 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-device-roche-cobas-c303**

## Example Device: mii-exa-test-data-device-roche-cobas-c303

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/Laboratory-device-identifier`/RocheCobasC303

**status**: Active

**manufacturer**: Roche

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | cobas | Manufacturer name |

**modelNumber**: c 303

> **property****type**: MDC_DEV_ANALY_BLD_CHEM_MULTI_PARAM

> **property****type**: MDC_DEV_ANALY_URINE_CHEM

> **property****type**: MDC_DEV_METER_BLD_CHEM

**parent**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobas; status = active; manufacturer = Roche](Device-mii-exa-test-data-device-roche-cobas.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-device-roche-cobas-c303",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
    "value" : "RocheCobasC303"
  }],
  "status" : "active",
  "manufacturer" : "Roche",
  "deviceName" : [{
    "name" : "cobas",
    "type" : "manufacturer-name"
  }],
  "modelNumber" : "c 303",
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69684"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69652"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69844"
      }]
    }
  }],
  "parent" : {
    "reference" : "Device/mii-exa-test-data-device-roche-cobas"
  }
}

```
