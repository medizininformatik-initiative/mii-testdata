# MTB Genomic Study Analysis - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Genomic Study Analysis**

## Example Procedure: MTB Genomic Study Analysis

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Genomic Study Analysis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Genomic Study Analysis Method Type**: Next-Generation (NGS)/Massively parallel sequencing (MPS)

**Genomic Study Analysis Change Type**: SNV

**Genomic Study Analysis Genome Build**: GRCh38

> **Genomic Study Analysis Device**
* device: [Device: manufacturer = Illumina; type = Biomedical equipment](Device-mii-exa-test-data-mtb-device-sequencer-1.md)
* function: Sequenziergerät

**Genomic Study Analysis Title**: Comprehensive Genomic Profiling Panel (Solid Tumor, 523 Gene)

**Genomic Study Analysis Specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

> **Genomic Study Analysis Regions**
* description: Hybrid-Capture-Panel, kodierende Bereiche von 523 Genen (u.a. EGFR, ERBB2, ALK)
* studied: EGFR
* studied: ERBB2

**identifier**: `https://www.charite.de/fhir/sid/mtb-genomic-study`/GSA-2024-001

**status**: Completed

**category**: Laboratory

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**performed**: 2024-02-21



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-mtb-genomic-study-analysis-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs",
        "code" : "ngs-mps",
        "display" : "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0001483",
        "display" : "SNV"
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
    "extension" : [{
      "url" : "device",
      "valueReference" : {
        "reference" : "Device/mii-exa-test-data-mtb-device-sequencer-1"
      }
    },
    {
      "url" : "function",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
          "code" : "sequencing-device"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-title",
    "valueString" : "Comprehensive Genomic Profiling Panel (Solid Tumor, 523 Gene)"
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen",
    "valueReference" : {
      "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
    }
  },
  {
    "extension" : [{
      "url" : "description",
      "valueString" : "Hybrid-Capture-Panel, kodierende Bereiche von 523 Genen (u.a. EGFR, ERBB2, ALK)"
    },
    {
      "url" : "studied",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://www.genenames.org/geneId",
          "code" : "HGNC:3236",
          "display" : "EGFR"
        }]
      }
    },
    {
      "url" : "studied",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://www.genenames.org/geneId",
          "code" : "HGNC:3430",
          "display" : "ERBB2"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-genomic-study",
    "value" : "GSA-2024-001"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "performedDateTime" : "2024-02-21"
}

```
