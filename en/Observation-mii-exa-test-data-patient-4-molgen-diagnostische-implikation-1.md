# mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1**

## Example Observation: mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Diagnostische Implikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Related artifact**: No display for RelatedArtifact (type: citation; citation: ClinGen; url: https://search.clinicalgenome.org/kb/gene-dosage/HGNC:2509)

**status**: Final

**category**: Laboratory, Genetics

**code**: Diagnostic Implication

**subject**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-15](Encounter-mii-exa-test-data-molgen-encounter-2.md)

**effective**: 2022-11-30

**issued**: 2022-12-05 14:00:00+0100

**performer**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-4-molgen-variante-1.md)

> **component****code**: Conclusion Text**value**: Diese Variante wird nach den ACMG/AMP-Kriterien zusammenfassend als pathogen bewertet entsprechend IARC Class 5.

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic

> **component****code**: Associated phenotype**value**: Hereditary diffuse carcinoma of stomach (disorder)

> **component****code**: Level of evidence**value**: Very strong evidence pathogenic

> **component****code**: Condition Inheritance**value**: Autosomal dominant inheritance



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation"],
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
      "citation" : "ClinGen",
      "url" : "https://search.clinicalgenome.org/kb/gene-dosage/HGNC:2509"
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
      "code" : "diagnostic-implication",
      "display" : "Diagnostic Implication"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-2"
  },
  "effectiveDateTime" : "2022-11-30",
  "issued" : "2022-12-05T14:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-4-molgen-variante-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "conclusion-string"
      }]
    },
    "valueString" : "Diese Variante wird nach den ACMG/AMP-Kriterien zusammenfassend als pathogen bewertet entsprechend IARC Class 5."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53037-8"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6668-3",
        "display" : "Pathogenic"
      }]
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
        "code" : "716859000",
        "display" : "Hereditary diffuse carcinoma of stomach (disorder)"
      }]
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
        "code" : "LA30200-2",
        "display" : "Very strong evidence pathogenic"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "condition-inheritance"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000006",
        "display" : "Autosomal dominant inheritance"
      }]
    }
  }]
}

```
