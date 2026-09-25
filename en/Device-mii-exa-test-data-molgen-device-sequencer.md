# mii-exa-test-data-molgen-device-sequencer - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-molgen-device-sequencer**

## Example Device: mii-exa-test-data-molgen-device-sequencer

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**manufacturer**: Illumina

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | MiSeq | Manufacturer name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-molgen-device-sequencer",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "manufacturer" : "Illumina",
  "deviceName" : [{
    "name" : "MiSeq",
    "type" : "manufacturer-name"
  }]
}

```
