# mii-exa-test-data-patient-3-seltene-therapieplan-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-therapieplan-1**

## Example CarePlan: mii-exa-test-data-patient-3-seltene-therapieplan-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Therapieplan](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Draft

**intent**: Proposal

**description**: Therapieplan fuer Patient mit Marfan-Syndrom: Medikamentoese Therapie mit Losartan, kardiologische Frueherkennung und Studieneinschluss

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**created**: 2025-03-10

**supportingInfo**: [Diagnostic Report for 'Genetic analysis report' for '->Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)'](DiagnosticReport-mii-exa-test-data-seltene-molgen-befundbericht-1.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Status** | **StatusReason** |
| * | Not Started | Keine therapeutische Konsequenz |


> **activity**

### Details

| | |
| :--- | :--- |
| - | **Status** |
| * | Scheduled |


> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-test-data-patient-3-seltene-studieneinschluss-1.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-patient-3-seltene-therapieplan-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "draft",
  "intent" : "proposal",
  "description" : "Therapieplan fuer Patient mit Marfan-Syndrom: Medikamentoese Therapie mit Losartan, kardiologische Frueherkennung und Studieneinschluss",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "created" : "2025-03-10",
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-seltene-molgen-befundbericht-1"
  }],
  "activity" : [{
    "detail" : {
      "status" : "not-started",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung",
          "code" : "no-target",
          "display" : "Keine therapeutische Konsequenz"
        }]
      }
    }
  },
  {
    "detail" : {
      "status" : "scheduled"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-test-data-patient-3-seltene-studieneinschluss-1"
    }
  }]
}

```
