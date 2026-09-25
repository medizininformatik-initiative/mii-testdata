# mii-exa-test-data-kardiologie-device-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-device-1**

## Example Device: mii-exa-test-data-kardiologie-device-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Device](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**manufacturer**: Medtronic

**expirationDate**: 2033-03-12

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Medtronic Evera MRI XT VR | Manufacturer name |

**type**: Implantable defibrillator, device (physical object)

**patient**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-kardiologie-device-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "manufacturer" : "Medtronic",
  "expirationDate" : "2033-03-12",
  "deviceName" : [{
    "name" : "Medtronic Evera MRI XT VR",
    "type" : "manufacturer-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "72506001",
      "display" : "Implantable defibrillator, device (physical object)"
    }]
  },
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  }
}

```
