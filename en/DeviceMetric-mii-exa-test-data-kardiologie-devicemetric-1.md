# mii-exa-test-data-kardiologie-devicemetric-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-devicemetric-1**

## Example DeviceMetric: mii-exa-test-data-kardiologie-devicemetric-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio NBG Schrittmachermodus](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**type**: Brady-Stimulationsmodus nach NBG-Standard

**source**: [Device: status = active; manufacturer = Medtronic; expirationDate = 2033-03-12; type = Implantable defibrillator, device (physical object)](Device-mii-exa-test-data-kardiologie-device-1.md)

**category**: Setting



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "mii-exa-test-data-kardiologie-devicemetric-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "730752",
      "display" : "MDC_IDC_SET_BRADY_MODE"
    }],
    "text" : "Brady-Stimulationsmodus nach NBG-Standard"
  },
  "source" : {
    "reference" : "Device/mii-exa-test-data-kardiologie-device-1"
  },
  "category" : "setting"
}

```
