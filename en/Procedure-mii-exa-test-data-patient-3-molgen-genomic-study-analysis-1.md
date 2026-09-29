# mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1**

## Example Procedure: mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Genomic Study Analysis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Genomic Study Analysis Title**: BRAF Exon 15 Analyse

**Genomic Study Analysis Method Type**: Sequencing

**Genomic Study Analysis Change Type**: point_mutation

**Genomic Study Analysis Genome Build**: GRCh38

**Genomic Study Analysis Specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

> **Genomic Study Analysis Device**
* device: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-molgen-device-sequencer.md)

> **Genomic Study Analysis Regions**
* description: BRAF: Exon 15 (Codon 582-612)
* studied: BRAF

**Genomic Study Analysis Focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-molgen-diagnose-1.md)

> **Genomic Study Analysis Metrics**
* read-depth: 1200 x (Details: UCUM code1 = '1')
* sequencing-coverage: 99.4 percent (Details: UCUM code% = '%')
* metrics-description: Mittlere Lesetiefe 1200x, 99,4 % der Zielregion mit mindestens 100x abgedeckt

**status**: Completed

**category**: Laboratory

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-3-molgen-genomic-study-analysis-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-title",
    "valueString" : "BRAF Exon 15 Analyse"
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26398-0",
        "display" : "Sequencing"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://sequenceontology.org",
        "code" : "SO:1000008",
        "display" : "point_mutation"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26806-2",
        "display" : "GRCh38"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen",
    "valueReference" : {
      "reference" : "Specimen/mii-exa-test-data-molgen-specimen-1"
    }
  },
  {
    "extension" : [{
      "url" : "device",
      "valueReference" : {
        "reference" : "Device/mii-exa-test-data-molgen-device-sequencer"
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
  },
  {
    "extension" : [{
      "url" : "description",
      "valueString" : "BRAF: Exon 15 (Codon 582-612)"
    },
    {
      "url" : "studied",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://www.genenames.org/geneId",
          "code" : "HGNC:1097",
          "display" : "BRAF"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-focus",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-molgen-diagnose-1"
    }
  },
  {
    "extension" : [{
      "url" : "read-depth",
      "valueQuantity" : {
        "value" : 1200,
        "unit" : "x",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    {
      "url" : "sequencing-coverage",
      "valueQuantity" : {
        "value" : 99.4,
        "unit" : "percent",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "url" : "metrics-description",
      "valueString" : "Mittlere Lesetiefe 1200x, 99,4 % der Zielregion mit mindestens 100x abgedeckt"
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-metrics"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  }
}

```
