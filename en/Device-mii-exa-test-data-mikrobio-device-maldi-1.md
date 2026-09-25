# mii-exa-test-data-mikrobio-device-maldi-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mikrobio-device-maldi-1**

## Example Device: mii-exa-test-data-mikrobio-device-maldi-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/device-identifier`/MALDI-TOF-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | MALDI Biotyper | Model name |

**type**: Bacterial identification device (physical object)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-mikrobio-device-maldi-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/device-identifier",
    "value" : "MALDI-TOF-001"
  }],
  "deviceName" : [{
    "name" : "MALDI Biotyper",
    "type" : "model-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "469318003",
      "display" : "Bacterial identification device (physical object)"
    }]
  }
}

```
