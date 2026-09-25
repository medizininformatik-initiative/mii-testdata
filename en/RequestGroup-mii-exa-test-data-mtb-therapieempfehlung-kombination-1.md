# MTB Therapieempfehlung Kombination - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Therapieempfehlung Kombination**

## Example RequestGroup: MTB Therapieempfehlung Kombination

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieempfehlung Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Empfehlung Priorität**: 2

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in the same tumor type.

**MII EX MTB Empfehlung Publikation**: `http://doi.org`/10.1056/NEJMoa2030428

**identifier**: `https://www.charite.de/fhir/sid/mtb-beschluss`/KOMBI-2024-001

**status**: Draft

**intent**: Proposal

**code**: zielgerichtete Substanzen

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**authoredOn**: 2024-03-28

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

> **action****code**: zielgerichtete Substanzen**resource**: [MedicationRequest: status = draft; intent = option; medication[x] = Sotorasib; authoredOn = 2024-03-28](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-2.md)

> **action****resource**: [MedicationRequest: status = draft; intent = option; medication[x] = Trametinib; authoredOn = 2024-03-28](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-3.md)



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-test-data-mtb-therapieempfehlung-kombination-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 2
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1B"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://doi.org",
      "value" : "10.1056/NEJMoa2030428"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-beschluss",
    "value" : "KOMBI-2024-001"
  }],
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "ZS",
      "display" : "zielgerichtete Substanzen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "authoredOn" : "2024-03-28",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "action" : [{
    "code" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
        "code" : "ZS",
        "display" : "zielgerichtete Substanzen"
      }]
    }],
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-2"
    }
  },
  {
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-3"
    }
  }]
}

```
