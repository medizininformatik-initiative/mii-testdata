# mii-exa-test-data-lungenfunktion-methacholine-anordnung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-methacholine-anordnung-1**

## Example MedicationRequest: mii-exa-test-data-lungenfunktion-methacholine-anordnung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**intent**: Order

**medication**: [Medication Provokit® 0,33%](Medication-mii-exa-test-data-lungenfunktion-methacholine-1.md)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-02-18 08:30:00+0100 --> 2025-02-18 12:30:00+0100](Encounter-mii-exa-test-data-lungenfunktion-encounter-1.md)

**authoredOn**: 2025-02-18 10:50:00+0100



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-lungenfunktion-methacholine-anordnung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-lungenfunktion-methacholine-1"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "authoredOn" : "2025-02-18T10:50:00+01:00"
}

```
