# mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1**

## Example ServiceRequest: mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Therapieempfehlung Nicht-Medikamentös](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Empfehlung Priorität**: 2

**MII EX SE Empfehlung Publikation**: ESC Guidelines on Marfan Syndrome 2024

**status**: Draft

**intent**: Proposal

**category**: Früherkennung, Symptomatisch

**priority**: Routine

**code**: Jaehrliche kardiologische Kontrolle mittels Echokardiographie bei Marfan-Syndrom

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**occurrence**: Once per 1 year

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**performer**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

**reasonCode**: Marfan syndrome

**reasonReference**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)

**supportingInfo**: [Diagnostic Report for 'Genetic analysis report' for '->Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)'](DiagnosticReport-mii-exa-test-data-seltene-molgen-befundbericht-1.md)

**note**: 

> 

Jaehrliche Echokardiographie zur Frueherkennung von Aortenwurzeldilatation empfohlen gemaess aktueller Leitlinie.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-3-seltene-therapie-nicht-med-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet",
    "valuePositiveInt" : 2
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation",
    "valueString" : "ESC Guidelines on Marfan Syndrome 2024"
  }],
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "early-detection",
      "display" : "Früherkennung"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "symptomatic",
      "display" : "Symptomatisch"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "312851005",
      "display" : "Screening for disorder"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2026",
      "code" : "3-052",
      "display" : "Transthorakale Echokardiographie"
    },
    {
      "system" : "http://loinc.org",
      "code" : "34552-0",
      "display" : "Cardiology Diagnostic study"
    }],
    "text" : "Jaehrliche kardiologische Kontrolle mittels Echokardiographie bei Marfan-Syndrom"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "occurrenceTiming" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 1,
      "periodUnit" : "a"
    }
  },
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1"
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-seltene-molgen-befundbericht-1"
  }],
  "note" : [{
    "text" : "Jaehrliche Echokardiographie zur Frueherkennung von Aortenwurzeldilatation empfohlen gemaess aktueller Leitlinie."
  }]
}

```
