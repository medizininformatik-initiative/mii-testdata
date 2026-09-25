# mii-exa-test-data-onko-therapieempfehlung-parp-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-therapieempfehlung-parp-1**

## Example RequestGroup: mii-exa-test-data-onko-therapieempfehlung-parp-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Proposal

**code**: PARP-Inhibitor Erhaltungstherapie

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**authoredOn**: 2022-03-10

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Description** | **Resource** |
| * | Niraparib Erhaltung | PARP-Inhibitor basierend auf BRCA1 Mutationsstatus | [MedicationRequest: status = active; intent = option; medication[x] = Niraparib; authoredOn = 2022-03-10; note = Erhaltungstherapie bei BRCA1-positivem Ovarialkarzinom](MedicationRequest-mii-exa-test-data-onko-therapieempfehlung-niraparib.md) |



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-test-data-onko-therapieempfehlung-parp-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "ZS",
      "display" : "Zielgerichtete Substanzen"
    }],
    "text" : "PARP-Inhibitor Erhaltungstherapie"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "authoredOn" : "2022-03-10",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "action" : [{
    "title" : "Niraparib Erhaltung",
    "description" : "PARP-Inhibitor basierend auf BRCA1 Mutationsstatus",
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-test-data-onko-therapieempfehlung-niraparib"
    }
  }]
}

```
