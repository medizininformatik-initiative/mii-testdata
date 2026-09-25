# mii-exa-test-data-patient-1-icu-device-monitor-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-device-monitor-1**

## Example Device: mii-exa-test-data-patient-1-icu-device-monitor-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Device](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/device-identifier`/ICU-MONITOR-001

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Philips IntelliVue MX800 | Manufacturer name |

**type**: Patientenmonitor (Multiparameter)

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | SW M.04.00 |

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ValueCode** |
| * | Heart rate (observable entity) | Continuous (qualifier value) |

**patient**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-patient-1-icu-device-monitor-1",
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
    "value" : "ICU-MONITOR-001"
  }],
  "status" : "active",
  "deviceName" : [{
    "name" : "Philips IntelliVue MX800",
    "type" : "manufacturer-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "303607000",
      "display" : "Biomedical equipment (physical object)"
    }],
    "text" : "Patientenmonitor (Multiparameter)"
  },
  "version" : [{
    "value" : "SW M.04.00"
  }],
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "364075005",
        "display" : "Heart rate (observable entity)"
      }]
    },
    "valueCode" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "255238004",
        "display" : "Continuous (qualifier value)"
      }]
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  }
}

```
