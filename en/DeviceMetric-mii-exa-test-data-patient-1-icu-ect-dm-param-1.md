# mii-exa-test-data-patient-1-icu-ect-dm-param-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-ect-dm-param-1**

## Example DeviceMetric: mii-exa-test-data-patient-1-icu-ect-dm-param-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU DeviceMetric Eingestellte Gemessene Parameter Extrakorporale Verfahren](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingest-gem-parameter-extrakorporale-verfahren)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**type**: Extracorporeal circulation procedure

**source**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#ICU-ECMO-001; status = active; type = Biomedical equipment (physical object)](Device-mii-exa-test-data-patient-1-icu-device-ecmo-1.md)

**category**: Measurement



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "mii-exa-test-data-patient-1-icu-ect-dm-param-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingest-gem-parameter-extrakorporale-verfahren"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182744004",
      "display" : "Extracorporeal circulation procedure"
    }]
  },
  "source" : {
    "reference" : "Device/mii-exa-test-data-patient-1-icu-device-ecmo-1"
  },
  "category" : "measurement"
}

```
