# mii-exa-test-data-patient-1-icu-device-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-device-1**

## Example Device: mii-exa-test-data-patient-1-icu-device-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Device](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/device-identifier`/ICU-VENT-001

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Draeger Evita V500 | Manufacturer name |

**type**: Ventilator (physical object)

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | SW 2.64 |

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ValueQuantity** |
| * | MDC_VENT_VOL_TIDAL_SETTING | 340 mL (Details: UCUM codemL = 'mL') |

**patient**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-patient-1-icu-device-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/device-identifier",
    "value" : "ICU-VENT-001"
  }],
  "status" : "active",
  "deviceName" : [{
    "name" : "Draeger Evita V500",
    "type" : "manufacturer-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "706172005",
      "display" : "Ventilator (physical object)"
    }]
  },
  "version" : [{
    "value" : "SW 2.64"
  }],
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "16929196",
        "display" : "MDC_VENT_VOL_TIDAL_SETTING"
      }]
    },
    "valueQuantity" : [{
      "value" : 340,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  }
}

```
