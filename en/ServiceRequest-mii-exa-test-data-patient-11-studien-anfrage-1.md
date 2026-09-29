# mii-exa-test-data-patient-11-studien-anfrage-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-studien-anfrage-1**

## Example ServiceRequest: mii-exa-test-data-patient-11-studien-anfrage-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Studieneinschluss Anfrage](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**intent**: Proposal

**category**: Clinical trial

**code**: Referral to clinical trial

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --> 2025-02-10 11:30:00+0100](Encounter-mii-exa-test-data-patient-11-encounter-2.md)

**authoredOn**: 2025-02-03

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**supportingInfo**: 

* [ResearchStudy PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz](ResearchStudy-mii-exa-test-data-patient-11-studie-1.md)
* [ResearchSubject: identifier = Anonymous identifier; status = on-study; period = 2025-02-10 --> 2026-02-09](ResearchSubject-mii-exa-test-data-patient-11-proband-1.md)

**note**: 

> 

Einschlusskriterien nach Index-Aufenthalt erfüllt; Ansprache zur Baseline-Visite geplant.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-11-studien-anfrage-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
  },
  "authoredOn" : "2025-02-03",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
  }],
  "supportingInfo" : [{
    "reference" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
  },
  {
    "reference" : "ResearchSubject/mii-exa-test-data-patient-11-proband-1"
  }],
  "note" : [{
    "text" : "Einschlusskriterien nach Index-Aufenthalt erfüllt; Ansprache zur Baseline-Visite geplant."
  }]
}

```
