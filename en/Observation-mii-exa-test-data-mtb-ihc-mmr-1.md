# MTB IHC MMR - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB IHC MMR**

## Example Observation: MTB IHC MMR

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Immunohistochemistry Mismatch Repair Status](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-befund`/IHC-2024-005

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**focus**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**effective**: 2024-03-08

**issued**: 2024-03-10 09:00:00+0100

**value**: Positive

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-mtb-einfache-variante-1.md)

> **component****code**: Gene studied [ID]**value**: MLH1

> **component****code**: A characterization of a given biomarker observation.**value**: immune stain category

> **component****code**: MLH-1 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression

> **component****code**: DNA mismatch repair protein Mlh3 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression

> **component****code**: MSH-2 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression

> **component****code**: DNA mismatch repair protein Msh3 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression

> **component****code**: MSH-6 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression

> **component****code**: PMS2 Ag [Presence] in Cancer specimen by Immune stain**value**: Intact nuclear expression



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-ihc-mmr-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-befund",
    "value" : "IHC-2024-005"
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
      "code" : "85337-4",
      "display" : "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
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
        "code" : "48018-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:7127",
        "display" : "MLH1"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "biomarker-category"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/molecular-biomarker-ontology-cs",
        "code" : "immuneStain",
        "display" : "immune stain category"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81691-8",
        "display" : "MLH-1 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96272-0",
        "display" : "DNA mismatch repair protein Mlh3 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81692-6",
        "display" : "MSH-2 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "96271-2",
        "display" : "DNA mismatch repair protein Msh3 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81693-4",
        "display" : "MSH-6 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81694-2",
        "display" : "PMS2 Ag [Presence] in Cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      }]
    }
  }]
}

```
