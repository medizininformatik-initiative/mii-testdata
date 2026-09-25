# mii-exa-test-data-patient-3-molgen-genotyp-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-genotyp-1**

## Example Observation: mii-exa-test-data-patient-3-molgen-genotyp-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Genotyp](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp), [Genotype](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genotype.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory, Genetics

**code**: Genotype display name

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**effective**: 2022-04-07

**issued**: 2022-04-12 10:30:00+0200

**value**: BRAF rs113488022 T>A

**method**: Sequencing

**specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-molgen-device-sequencer.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-3-molgen-variante-1.md)

> **component****code**: Gene studied [ID]**value**: BRAF

> **component****code**: Cytogenetic (chromosome) location**value**: 7q34

> **component****code**: Conclusion Text**value**: Heterozygote BRAF V600E Mutation nachgewiesen

> **component****code**: Human reference sequence assembly version**value**: GRCh38



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-molgen-genotyp-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
      "system" : "http://loinc.org",
      "code" : "84413-4",
      "display" : "Genotype display name"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "effectiveDateTime" : "2022-04-07",
  "issued" : "2022-04-12T10:30:00+02:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://www.ncbi.nlm.nih.gov/projects/SNP",
      "code" : "rs113488022",
      "display" : "BRAF V600E (c.1799T>A)"
    }],
    "text" : "BRAF rs113488022 T>A"
  },
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA26398-0",
      "display" : "Sequencing"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-molgen-device-sequencer"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-variante-1"
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
        "code" : "HGNC:1097",
        "display" : "BRAF"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48001-2",
        "display" : "Cytogenetic (chromosome) location"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:oid:2.16.840.1.113883.6.335",
        "code" : "7q34"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "conclusion-string"
      }]
    },
    "valueString" : "Heterozygote BRAF V600E Mutation nachgewiesen"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "62374-4",
        "display" : "Human reference sequence assembly version"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26806-2",
        "display" : "GRCh38"
      }]
    }
  }]
}

```
