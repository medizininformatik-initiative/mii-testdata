# mii-exa-test-data-patient-3-molgen-therapeutische-implikation-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-therapeutische-implikation-3**

## Example Observation: mii-exa-test-data-patient-3-molgen-therapeutische-implikation-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Therapeutische Implikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation), [Therapeutic Implication](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-therapeutic-implication.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Related artifact**: No display for RelatedArtifact (type: citation; citation: Park K et al. Amivantamab in EGFR Exon 20 Insertion-Mutated Non-Small-Cell Lung Cancer Progressing on Platinum Chemotherapy (CHRYSALIS). J Clin Oncol. 2021;39(30):3391-3402. PMID 34339292; url: https://pubmed.ncbi.nlm.nih.gov/34339292/)

**status**: Final

**category**: Laboratory, Genetics

**code**: Therapeutic Implication

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**effective**: 2024-03-20

**issued**: 2024-03-25 10:00:00+0100

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-3-molgen-variante-3.md)

> **component****code**: Conclusion Text**value**: Nachweis einer EGFR-Exon-20-Insertion p.(Ala767_Val769dup). Diese Variante zeigt primaere Resistenz gegenueber gaengigen EGFR-TKIs (inkl. Osimertinib). Amivantamab (Rybrevant) ist EMA-zugelassen nach Versagen platinbasierter Chemotherapie (2L). Einsatz in der Erstlinie (PAPILLON-Schema: Amivantamab + Carboplatin/Pemetrexed) derzeit in Deutschland off-label.

> **component****code**: Medication assessed [ID]**value**: Amivantamab (Rybrevant) - EGFR/MET bispezifischer Antikoerper

> **component****code**: Level of evidence**value**: Tier I - Level B (AMP/ASCO/CAP, EMA-zugelassen 2L; 1L off-label, PAPILLON-Studie)

> **component****code**: Associated phenotype**value**: Non-small cell lung cancer



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-molgen-therapeutische-implikation-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact",
    "valueRelatedArtifact" : {
      "type" : "citation",
      "citation" : "Park K et al. Amivantamab in EGFR Exon 20 Insertion-Mutated Non-Small-Cell Lung Cancer Progressing on Platinum Chemotherapy (CHRYSALIS). J Clin Oncol. 2021;39(30):3391-3402. PMID 34339292",
      "url" : "https://pubmed.ncbi.nlm.nih.gov/34339292/"
    }
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
      "code" : "GE"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "therapeutic-implication",
      "display" : "Therapeutic Implication"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "effectiveDateTime" : "2024-03-20",
  "issued" : "2024-03-25T10:00:00+01:00",
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-variante-3"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "conclusion-string"
      }]
    },
    "valueString" : "Nachweis einer EGFR-Exon-20-Insertion p.(Ala767_Val769dup). Diese Variante zeigt primaere Resistenz gegenueber gaengigen EGFR-TKIs (inkl. Osimertinib). Amivantamab (Rybrevant) ist EMA-zugelassen nach Versagen platinbasierter Chemotherapie (2L). Einsatz in der Erstlinie (PAPILLON-Schema: Amivantamab + Carboplatin/Pemetrexed) derzeit in Deutschland off-label."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "51963-7",
        "display" : "Medication assessed [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/atc",
        "version" : "2026",
        "code" : "L01FX18",
        "display" : "Amivantamab"
      }],
      "text" : "Amivantamab (Rybrevant) - EGFR/MET bispezifischer Antikoerper"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "93044-6",
        "display" : "Level of evidence"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA30201-0",
        "display" : "Strong evidence pathogenic"
      }],
      "text" : "Tier I - Level B (AMP/ASCO/CAP, EMA-zugelassen 2L; 1L off-label, PAPILLON-Studie)"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81259-4"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "254637007",
        "display" : "Non-small cell lung cancer"
      }]
    }
  }]
}

```
