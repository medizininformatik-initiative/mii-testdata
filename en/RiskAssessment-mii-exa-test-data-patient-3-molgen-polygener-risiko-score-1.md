# mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1**

## Example RiskAssessment: mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Polygener Risiko Score](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/polygener-risiko-score)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/risiko-bewertungen`/PRS-CRC-2022-0407-001

**status**: Final

**code**: Polygener Risiko Score (PRS)

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**occurrence**: 2022-04-07

**condition**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-molgen-diagnose-1.md)

**basis**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-3-molgen-variante-1.md)

### Predictions

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Outcome** | **Probability[x]** | **QualitativeRisk** | **RelativeRisk** | **When[x]** |
| * | Kolorektales Karzinom | 0.32 | High likelihood | 2.8 | 50-80 years |



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/polygener-risiko-score"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/risiko-bewertungen",
    "value" : "PRS-CRC-2022-0407-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "721961004",
      "display" : "Risk assessment score (observable entity)"
    }],
    "text" : "Polygener Risiko Score (PRS)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "occurrenceDateTime" : "2022-04-07",
  "condition" : {
    "reference" : "Condition/mii-exa-test-data-molgen-diagnose-1"
  },
  "basis" : [{
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-variante-1"
  }],
  "prediction" : [{
    "outcome" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "363510005",
        "display" : "Malignant neoplasm of large intestine"
      }],
      "text" : "Kolorektales Karzinom"
    },
    "probabilityDecimal" : 0.32,
    "qualitativeRisk" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/risk-probability",
        "code" : "high",
        "display" : "High likelihood"
      }]
    },
    "relativeRisk" : 2.8,
    "whenRange" : {
      "low" : {
        "value" : 50,
        "unit" : "years",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      },
      "high" : {
        "value" : 80,
        "unit" : "years",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    }
  }]
}

```
