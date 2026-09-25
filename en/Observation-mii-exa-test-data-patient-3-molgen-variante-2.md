# mii-exa-test-data-patient-3-molgen-variante-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-variante-2**

## Example Observation: mii-exa-test-data-patient-3-molgen-variante-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante), [Variant](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-variant.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**basedOn**: [ServiceRequest Molecular genetic test (procedure)](ServiceRequest-mii-exa-test-data-patient-3-molgen-anforderung-2.md)

**status**: Final

**category**: Laboratory, Genetics

**code**: Genetic variant assessment

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**effective**: 2024-03-20

**issued**: 2024-03-25 10:00:00+0100

**value**: Present

**method**: Sequencing

**specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-molgen-device-sequencer.md)

> **component****code**: Gene studied [ID]**value**: EGFR

> **component****code**: Genomic reference sequence [ID]**value**: NM_005228.5

> **component****code**: DNA region name [Identifier]**value**: Exon 21

> **component****code**: DNA change (c.HGVS)**value**: NM_005228.5:c.2573T>G

> **component****code**: Amino acid change (pHGVS)**value**: p.(Leu858Arg)

> **component****code**: Sample variant allelic frequency [NFr]**value**: 42.3 % (Details: UCUM code% = '%')

> **component****code**: Cytogenetic (chromosome) location**value**: 7p11.2

> **component****code**: DNA change type**value**: point_mutation

> **component****code**: Discrete genetic variant**value**: rs121434568

> **component****code**: Human reference sequence assembly version**value**: GRCh38

> **component****code**: Genomic allele start-end**value**: 55191822-55191822

> **component****code**: Genomic ref allele [ID]**value**: T

> **component****code**: Genomic alt allele [ID]**value**: G

> **component****code**: Genomic source class [Type]**value**: Somatic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-molgen-variante-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-3-molgen-anforderung-2"
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
      "system" : "http://loinc.org",
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "effectiveDateTime" : "2024-03-20",
  "issued" : "2024-03-25T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA9633-4",
      "display" : "Present"
    }]
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
        "code" : "HGNC:3236",
        "display" : "EGFR"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48013-7",
        "display" : "Genomic reference sequence [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/refseq",
        "code" : "NM_005228.5"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47999-8",
        "display" : "DNA region name [Identifier]"
      }]
    },
    "valueString" : "Exon 21"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48004-6",
        "display" : "DNA change (c.HGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NM_005228.5:c.2573T>G"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48005-3",
        "display" : "Amino acid change (pHGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "p.(Leu858Arg)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81258-6",
        "display" : "Sample variant allelic frequency [NFr]"
      }]
    },
    "valueQuantity" : {
      "value" : 42.3,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
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
        "code" : "7p11.2"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48019-4",
        "display" : "DNA change type"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://sequenceontology.org",
        "code" : "SO:1000008",
        "display" : "point_mutation"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81252-9",
        "display" : "Discrete genetic variant"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/projects/SNP",
        "code" : "rs121434568"
      }]
    }
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
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81254-5",
        "display" : "Genomic allele start-end"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 55191822
      },
      "high" : {
        "value" : 55191822
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "69547-8",
        "display" : "Genomic ref allele [ID]"
      }]
    },
    "valueString" : "T"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "69551-0",
        "display" : "Genomic alt allele [ID]"
      }]
    },
    "valueString" : "G"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48002-0",
        "display" : "Genomic source class [Type]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6684-0",
        "display" : "Somatic"
      }]
    }
  }]
}

```
