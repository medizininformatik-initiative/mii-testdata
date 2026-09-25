# mii-exa-test-data-onko-therapieempfehlung-kombi-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-therapieempfehlung-kombi-1**

## Example RequestGroup: mii-exa-test-data-onko-therapieempfehlung-kombi-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: TE-KOMBI-2021-001

**status**: Active

**intent**: Proposal

**code**: Carboplatin + Paclitaxel (CarboTax)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**authoredOn**: 2021-06-20

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

> **action****title**: CarboTax Chemotherapie**code**: Chemotherapie

### Actions

| | | |
| :--- | :--- | :--- |
| - | **Title** | **Resource** |
| * | Carboplatin | [MedicationRequest: identifier = https://www.charite.de/fhir/sid/onko-beschluss#TE-MED-2021-001; status = active; intent = proposal; medication[x] = Carboplatin; authoredOn = 2021-06-20; reasonCode = Bösartige Neubildung des Ovars](MedicationRequest-mii-exa-test-data-onko-therapieempfehlung-medikation-1.md) |
| * | Paclitaxel | [MedicationRequest: status = active; intent = proposal; medication[x] = Paclitaxel; authoredOn = 2021-06-20](MedicationRequest-mii-exa-test-data-onko-therapieempfehlung-medikation-2.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-test-data-onko-therapieempfehlung-kombi-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "value" : "TE-KOMBI-2021-001"
  }],
  "status" : "active",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH",
      "display" : "Chemotherapie"
    }],
    "text" : "Carboplatin + Paclitaxel (CarboTax)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "authoredOn" : "2021-06-20",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "action" : [{
    "title" : "CarboTax Chemotherapie",
    "code" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
        "code" : "CH",
        "display" : "Chemotherapie"
      }]
    }],
    "action" : [{
      "title" : "Carboplatin",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-test-data-onko-therapieempfehlung-medikation-1"
      }
    },
    {
      "title" : "Paclitaxel",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-test-data-onko-therapieempfehlung-medikation-2"
      }
    }]
  }]
}

```
