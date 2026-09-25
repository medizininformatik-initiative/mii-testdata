# MTB Immunohistochemistry HER2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Immunohistochemistry HER2**

## Example Observation: MTB Immunohistochemistry HER2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Immunohistochemistry](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-her2)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-befund`/IHC-2024-002

**status**: Final

**category**: Laboratory, Genetics, A characterization of a given biomarker observation.

**code**: HER2 Ag [Presence] in Tissue by Immune stain

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**focus**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**effective**: 2024-03-08

**issued**: 2024-03-10 09:00:00+0100

**value**: Positive

**interpretation**: Positive

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-mtb-einfache-variante-1.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | ERBB2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-immunohistochemistry-her2-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-her2"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-befund",
    "value" : "IHC-2024-002"
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
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE",
      "display" : "Genetics"
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
      "code" : "18474-7",
      "display" : "HER2 Ag [Presence] in Tissue by Immune stain"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
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
  "effectiveDateTime" : "2024-03-08",
  "issued" : "2024-03-10T09:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6576-8",
      "display" : "Positive"
    }]
  },
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
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      }]
    }
  }]
}

```
