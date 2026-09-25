# mii-exa-test-data-kardiologie-geraeteprogrammierung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-geraeteprogrammierung-1**

## Example Observation: mii-exa-test-data-kardiologie-geraeteprogrammierung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Geräteprogrammierung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-geraeteprogrammierung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Programmierter Brady-Stimulationsmodus (NBG)

**subject**: [Device: status = active; manufacturer = Medtronic; expirationDate = 2033-03-12; type = Implantable defibrillator, device (physical object)](Device-mii-exa-test-data-kardiologie-device-1.md)

**focus**: [DeviceMetric: type = MDC_IDC_SET_BRADY_MODE; category = setting](DeviceMetric-mii-exa-test-data-kardiologie-devicemetric-1.md)

**effective**: 2025-03-12 14:00:00+0100

**value**: MDC_IDC_ENUM_BRADY_MODE_VVI



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-kardiologie-geraeteprogrammierung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-geraeteprogrammierung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "730752",
      "display" : "MDC_IDC_SET_BRADY_MODE"
    }],
    "text" : "Programmierter Brady-Stimulationsmodus (NBG)"
  },
  "subject" : {
    "reference" : "Device/mii-exa-test-data-kardiologie-device-1"
  },
  "focus" : [{
    "reference" : "DeviceMetric/mii-exa-test-data-kardiologie-devicemetric-1"
  }],
  "effectiveDateTime" : "2025-03-12T14:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "754773",
      "display" : "MDC_IDC_ENUM_BRADY_MODE_VVI"
    }]
  }
}

```
