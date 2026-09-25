# mii-exa-test-data-onko-therapieempfehlung-medikation-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-therapieempfehlung-medikation-2**

## Example MedicationRequest: mii-exa-test-data-onko-therapieempfehlung-medikation-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Therapieempfehlung Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Proposal

**medication**: Paclitaxel

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**authoredOn**: 2021-06-20

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

### DosageInstructions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Timing** | **AsNeeded[x]** |
| * | 175 mg/m2 i.v. bei Bedarf nach Vertraeglichkeit | 30min , Morning, Once | Nausea (finding) |

**priorPrescription**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/onko-beschluss#TE-MED-2021-001; status = active; intent = proposal; medication[x] = Carboplatin; authoredOn = 2021-06-20; reasonCode = Bösartige Neubildung des Ovars](MedicationRequest-mii-exa-test-data-onko-therapieempfehlung-medikation-1.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-onko-therapieempfehlung-medikation-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01CD01",
      "display" : "Paclitaxel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "authoredOn" : "2021-06-20",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "dosageInstruction" : [{
    "text" : "175 mg/m2 i.v. bei Bedarf nach Vertraeglichkeit",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 8,
          "unit" : "Wochen",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        },
        "when" : ["MORN"],
        "offset" : 30
      }
    },
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422587007",
        "display" : "Nausea (finding)"
      }]
    }
  }],
  "priorPrescription" : {
    "reference" : "MedicationRequest/mii-exa-test-data-onko-therapieempfehlung-medikation-1"
  }
}

```
