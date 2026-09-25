# mii-exa-test-data-devicemetric-roche-cobas-c303-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-devicemetric-roche-cobas-c303-1**

## Example DeviceMetric: mii-exa-test-data-devicemetric-roche-cobas-c303-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/Laboratory-device-identifier`/RocheCobasC303-160192

**type**: MDC_CONC_GLU_VENOUS_WHOLEBLOOD

**source**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303](Device-mii-exa-test-data-device-roche-cobas-c303.md)

**category**: Measurement



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "mii-exa-test-data-devicemetric-roche-cobas-c303-1",
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
    "value" : "RocheCobasC303-160192"
  }],
  "type" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "code" : "160192"
    }]
  },
  "source" : {
    "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
  },
  "category" : "measurement"
}

```
