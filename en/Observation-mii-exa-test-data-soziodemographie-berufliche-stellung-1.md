# mii-exa-test-data-soziodemographie-berufliche-stellung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-soziodemographie-berufliche-stellung-1**

## Example Observation: mii-exa-test-data-soziodemographie-berufliche-stellung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SDD Berufliche Stellung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Social History, Survey

**code**: Berufliche Stellung

**subject**: [Renate Beispielmann Female, DoB: 1958-03-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#SDD-TEST-001)](Patient-mii-exa-test-data-soziodemographie-patient-1.md)

**effective**: 2025-05-12

**value**: Zuletzt Angestellte



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-soziodemographie-berufliche-stellung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-berufliche-stellung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "67875-5"
    }],
    "text" : "Berufliche Stellung"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-soziodemographie-patient-1"
  },
  "effectiveDateTime" : "2025-05-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-berufliche-stellung-lang",
      "code" : "5",
      "display" : "Angestellte:r (Angestellte sind Beschäftigte mit überwiegend geistiger Arbeit/Bürotätigkeiten)"
    }],
    "text" : "Zuletzt Angestellte"
  }
}

```
