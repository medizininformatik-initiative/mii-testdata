# mii-exa-test-data-lungenfunktion-untersuchung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-untersuchung-1**

## Example Procedure: mii-exa-test-data-lungenfunktion-untersuchung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**code**: Measurement of respiratory function (procedure)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-02-18 08:30:00+0100 --> 2025-02-18 12:30:00+0100](Encounter-mii-exa-test-data-lungenfunktion-encounter-1.md)

**performed**: 2025-02-18 09:00:00+0100 --> 2025-02-18 11:45:00+0100



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-lungenfunktion-untersuchung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "23426006",
      "display" : "Measurement of respiratory function (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2025-02-18T09:00:00+01:00",
    "end" : "2025-02-18T11:45:00+01:00"
  }
}

```
