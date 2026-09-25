# mii-exa-test-data-patient-3-molgen-variante-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-variante-1**

## Example Observation: mii-exa-test-data-patient-3-molgen-variante-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante), [Variant](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-variant.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**basedOn**: [ServiceRequest Molecular genetic test (procedure)](ServiceRequest-mii-exa-test-data-patient-3-molgen-anforderung-1.md)

**status**: Final

**category**: Laboratory, Genetics

**code**: Genetic variant assessment

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**effective**: 2022-04-07

**issued**: 2022-04-12 10:30:00+0200

**value**: Present

**method**: Sequencing

**specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-molgen-device-sequencer.md)

> **component****code**: Gene studied [ID]**value**: BRAF

> **component****code**: Genomic reference sequence [ID]**value**: NM_004333.4

> **component****code**: DNA region name [Identifier]**value**: Exon #15

> **component****code**: DNA region name [Identifier]**value**: Codon #582 - #612

> **component****code**: DNA change (c.HGVS)**value**: NM_004333.4:c.1799T>A

> **component****code**: Amino acid change (pHGVS)**value**: p.(Val600Glu)

> **component****code**: Sample variant allelic frequency [NFr]**value**: 30.25 % (Details: UCUM code% = '%')

> **component****code**: Cytogenetic (chromosome) location**value**: 7q34

> **component****code**: DNA change type**value**: point_mutation

> **component****code**: Discrete genetic variant**value**: rs113488022

> **component****code**: Human reference sequence assembly version**value**: GRCh38

> **component****code**: Genomic allele start-end**value**: 140753336-140753336

> **component****code**: Genomic ref allele [ID]**value**: T

> **component****code**: Genomic alt allele [ID]**value**: A

> **component****code**: Genomic source class [Type]**value**: Somatic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-molgen-variante-1",
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
    "reference" : "ServiceRequest/mii-exa-test-data-patient-3-molgen-anforderung-1"
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
  "effectiveDateTime" : "2022-04-07",
  "issued" : "2022-04-12T10:30:00+02:00",
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
        "code" : "HGNC:1097",
        "display" : "BRAF"
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
        "code" : "NM_004333.4"
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
    "valueString" : "Exon #15"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47999-8",
        "display" : "DNA region name [Identifier]"
      }]
    },
    "valueString" : "Codon #582 - #612"
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
        "code" : "NM_004333.4:c.1799T>A"
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
        "code" : "p.(Val600Glu)"
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
      "value" : 30.25,
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
        "code" : "7q34"
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
        "code" : "rs113488022"
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
        "value" : 140753336
      },
      "high" : {
        "value" : 140753336
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
    "valueString" : "A"
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
