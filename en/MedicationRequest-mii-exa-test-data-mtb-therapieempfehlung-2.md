# MTB Therapieempfehlung - Sotorasib - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Therapieempfehlung - Sotorasib**

## Example MedicationRequest: MTB Therapieempfehlung - Sotorasib

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Draft

**intent**: Option

**medication**: Sotorasib

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**authoredOn**: 2024-03-28

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

### DosageInstructions

| | | |
| :--- | :--- | :--- |
| - | **Timing** | **AsNeeded[x]** |
| * | 30min , Morning, Once | Nausea (finding) |

**priorPrescription**: [MedicationRequest: extension = 1,Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.,http://www.ncbi.nlm.nih.gov/pubmed#29151359; identifier = https://www.charite.de/fhir/sid/mtb-beschluss#TE-2024-001; status = draft; intent = proposal; medication[x] = Osimertinib; authoredOn = 2024-03-28; reasonCode = Bösartige Neubildung: Oberlappen (-Bronchus); note = Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-1.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-mtb-therapieempfehlung-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "draft",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "L01XX73",
      "display" : "Sotorasib"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "authoredOn" : "2024-03-28",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 7,
          "unit" : "Tage",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
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
    "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-1"
  }
}

```
