# MTB HRD Score - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB HRD Score**

## Example Observation: MTB HRD Score

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB HRD Score](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-befund`/HRD-2024-001

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**focus**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**effective**: 2024-03-01

**issued**: 2024-03-01 10:00:00+0100

**value**: 42

**interpretation**: Positive

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-mtb-einfache-variante-1.md)

> **component****code**: Large-Scale State Transition**value**: 15

> **component****code**: Telomeric Allelic Imbalance Region**value**: 14

> **component****code**: Loss of Heterozygosity**value**: 13



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-hrd-score-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-befund",
    "value" : "HRD-2024-001"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "107286-7"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "effectiveDateTime" : "2024-03-01",
  "issued" : "2024-03-01T10:00:00+01:00",
  "valueInteger" : 42,
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "POS",
      "display" : "Positive"
    }]
  }],
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-mtb-einfache-variante-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C120466",
        "display" : "Large-Scale State Transition"
      }]
    },
    "valueInteger" : 15
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C129774",
        "display" : "Telomeric Allelic Imbalance Region"
      }]
    },
    "valueInteger" : 14
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C18016",
        "display" : "Loss of Heterozygosity"
      }]
    },
    "valueInteger" : 13
  }]
}

```
