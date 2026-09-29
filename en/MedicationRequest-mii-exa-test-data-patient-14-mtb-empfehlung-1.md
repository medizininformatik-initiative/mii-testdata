# mii-exa-test-data-patient-14-mtb-empfehlung-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-empfehlung-1**

## Example MedicationRequest: mii-exa-test-data-patient-14-mtb-empfehlung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Empfehlung Priorität**: 1

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.

**MII EX MTB Empfehlung Publikation**: `https://pubmed.ncbi.nlm.nih.gov`/33264544

**status**: Active

**intent**: Proposal

**medication**: Pembrolizumab 200 mg alle drei Wochen i.v.

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**authoredOn**: 2024-04-18

**reasonReference**: 

* [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)
* [Observation Therapeutic Implication](Observation-mii-exa-test-data-patient-14-mtb-implikation-1.md)

**note**: 

> 

Erstlinientherapie. Ansprechkontrolle per CT nach drei Monaten.




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-14-mtb-empfehlung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1A"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "https://pubmed.ncbi.nlm.nih.gov",
      "value" : "33264544"
    }
  }],
  "status" : "active",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "L01FF02",
      "display" : "Pembrolizumab"
    }],
    "text" : "Pembrolizumab 200 mg alle drei Wochen i.v."
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "authoredOn" : "2024-04-18",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-implikation-1"
  }],
  "note" : [{
    "text" : "Erstlinientherapie. Ansprechkontrolle per CT nach drei Monaten."
  }]
}

```
