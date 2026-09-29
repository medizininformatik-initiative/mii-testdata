# mii-exa-test-data-patient-12-icu-dm-vent - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-icu-dm-vent**

## Example DeviceMetric: mii-exa-test-data-patient-12-icu-dm-vent

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU DeviceMetric Eingestellte Gemessene Parameter Beatmung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingestellte-gemessene-parameter-beatmung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**type**: Artificial ventilation (regime/therapy)

**source**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#ICU-VENT-012; status = active; type = Ventilator (physical object)](Device-mii-exa-test-data-patient-12-icu-device-vent.md)

**category**: Measurement



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "mii-exa-test-data-patient-12-icu-dm-vent",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingestellte-gemessene-parameter-beatmung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "40617009",
      "display" : "Artificial ventilation (regime/therapy)"
    }]
  },
  "source" : {
    "reference" : "Device/mii-exa-test-data-patient-12-icu-device-vent"
  },
  "category" : "measurement"
}

```
