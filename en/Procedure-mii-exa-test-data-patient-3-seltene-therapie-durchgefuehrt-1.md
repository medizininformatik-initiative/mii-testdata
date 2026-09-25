# mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1**

## Example Procedure: mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Seltene Erkrankungen Therapie Durchgeführt](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**code**: Pharmakotherapie

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**performed**: 2025-03-15 --> 2025-09-15



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-3-seltene-therapie-durchgefuehrt-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp",
      "code" : "pharmakotherapie",
      "display" : "Pharmakotherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "performedPeriod" : {
    "start" : "2025-03-15",
    "end" : "2025-09-15"
  }
}

```
