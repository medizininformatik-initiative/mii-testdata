# mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1**

## Example Observation: mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Molekulare Konsequenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekulare-konsequenz), [Molecular Consequence](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-molecular-consequence.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Related artifact**: No display for RelatedArtifact (type: citation; citation: Richards et al., Genet Med. 2015; 17:405-24; url: https://pubmed.ncbi.nlm.nih.gov/25741868/)

**status**: Final

**category**: Laboratory, Genetics

**code**: Molecular Consequence

**subject**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-15](Encounter-mii-exa-test-data-molgen-encounter-2.md)

**effective**: 2022-11-30

**issued**: 2022-12-05 14:00:00+0100

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-4-molgen-variante-1.md)

> **component****code**: Conclusion Text**value**: Frameshift-Deletion fuehrt zu vorzeitigem Stopp-Codon und Verlust des alpha-E-Catenin-Proteins.

> **component****code**: Functional Effect**value**: Funktionsverlust des alpha-E-Catenin-Proteins

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic

> **component****code**: Level of evidence**value**: Very strong evidence pathogenic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekulare-konsequenz",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"],
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
      "citation" : "Richards et al., Genet Med. 2015; 17:405-24",
      "url" : "https://pubmed.ncbi.nlm.nih.gov/25741868/"
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
      "code" : "molecular-consequence",
      "display" : "Molecular Consequence"
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
    "valueString" : "Frameshift-Deletion fuehrt zu vorzeitigem Stopp-Codon und Verlust des alpha-E-Catenin-Proteins."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "functional-effect"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://sequenceontology.org",
        "code" : "SO:0002054",
        "display" : "loss_of_function_variant"
      }],
      "text" : "Funktionsverlust des alpha-E-Catenin-Proteins"
    }
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
        "code" : "93044-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA30200-2",
        "display" : "Very strong evidence pathogenic"
      }]
    }
  }]
}

```
