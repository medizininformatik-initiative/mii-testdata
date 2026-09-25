# mii-exa-test-data-onko-genetische-variante-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-genetische-variante-1**

## Example Observation: mii-exa-test-data-onko-genetische-variante-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Genetische Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory, Genetics

**code**: Genetic variant assessment

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-06-15

**issued**: 2021-06-16 09:00:00+0200

**value**: Present

**interpretation**: Mutation/positiv

**note**: 

> 

BRCA1 pathogene Variante nachgewiesen


**method**: Sequencing

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-onko-sequencer-1.md)

> **component****code**: Gene studied [ID]**value**: BRCA1

> **component****code**: Conclusion Text**value**: Pathogene BRCA1-Frameshift-Variante c.68_69del (p.Glu23fs) nachgewiesen.

> **component****code**: Cytogenetic (chromosome) location**value**: 17q21.31

> **component****code**: Human reference sequence assembly version**value**: GRCh38

> **component****code**: Chromosome [Identifier] in Blood or Tissue by Molecular genetics method**value**: Chromosom 17

> **component****code**: DNA change (c.HGVS)**value**: NM_007294.4:c.68_69del

> **component****code**: Genomic DNA change (gHGVS)**value**: NC_000017.11:g.43124027_43124028del

> **component****code**: Amino acid change (pHGVS)**value**: NP_009225.1:p.Glu23fs

> **component****code**: Genomic reference sequence [ID]**value**: NC_000017.11

> **component****code**: Transcript reference sequence [ID]**value**: NM_007294.4

> **component****code**: Genomic allele start-end**value**: 43124027-43124028

> **component****code**: Structural variant inner start and end**value**: 43124027-43124028

> **component****code**: Structural variant outer start and end**value**: 43124020-43124035

> **component****code**: Genomic ref allele [ID]**value**: TTC

> **component****code**: Genomic alt allele [ID]**value**: T

> **component****code**: DNA change type**value**: deletion

> **component****code**: Genomic source class [Type]**value**: Somatic

> **component****code**: Sample variant allelic frequency [NFr]**value**: 34 % (Details: UCUM code% = '%')

> **component****code**: Allelic read depth**value**: 120

> **component****code**: Allelic state**value**: Heterozygous

> **component****code**: Origin of germline genetic variant [Type]**value**: Somatisch

> **component****code**: Discrete genetic variant**value**: NM_007294.4(BRCA1):c.68_69del

> **component****code**: Genomic structural variant copy number**value**: 2

> **component****code**: Variant Confidence Status**value**: hohe Konfidenz

> **component****code**: Laboratory device Detection limit**value**: 5 % (Details: UCUM code% = '%')

> **component****code**: DNA region name [Identifier]**value**: Exon 2

> **component****code**: Gene fusion transcript details in Blood or Tissue by Molecular genetics method Narrative**value**: keine Genfusion nachweisbar



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-genetische-variante-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante"],
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
      "code" : "laboratory"
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
      "code" : "69548-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "effectiveDateTime" : "2021-06-15",
  "issued" : "2021-06-16T09:00:00+02:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA9633-4",
      "display" : "Present"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung",
      "code" : "M",
      "display" : "Mutation/positiv"
    }]
  }],
  "note" : [{
    "text" : "BRCA1 pathogene Variante nachgewiesen"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA26398-0",
      "display" : "Sequencing"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-onko-specimen-1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-onko-sequencer-1"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org",
        "code" : "HGNC:1100",
        "display" : "BRCA1"
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
    "valueString" : "Pathogene BRCA1-Frameshift-Variante c.68_69del (p.Glu23fs) nachgewiesen."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48001-2"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "17q21.31"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "62374-4"
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
        "code" : "48000-4"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Chromosom 17"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48004-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NM_007294.4:c.68_69del"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81290-9"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NC_000017.11:g.43124027_43124028del"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48005-3"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NP_009225.1:p.Glu23fs"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48013-7"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/refseq",
        "code" : "NC_000017.11"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "51958-7"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/refseq",
        "code" : "NM_007294.4"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81254-5"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 43124027
      },
      "high" : {
        "value" : 43124028
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81302-2"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 43124027
      },
      "high" : {
        "value" : 43124028
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81301-4"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 43124020
      },
      "high" : {
        "value" : 43124035
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "69547-8"
      }]
    },
    "valueString" : "TTC"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "69551-0"
      }]
    },
    "valueString" : "T"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48019-4"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0000159",
        "display" : "deletion"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48002-0"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6684-0",
        "display" : "Somatic"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81258-6"
      }]
    },
    "valueQuantity" : {
      "value" : 34,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "82121-5"
      }]
    },
    "valueQuantity" : {
      "value" : 120
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53034-5"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6706-1",
        "display" : "Heterozygous"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "94186-4"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6684-0",
        "display" : "Somatic"
      }],
      "text" : "Somatisch"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81252-9"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/clinvar",
        "code" : "17662",
        "display" : "NM_007294.4(BRCA1):c.68_69del"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "82155-3"
      }]
    },
    "valueQuantity" : {
      "value" : 2
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "variant-confidence-status"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/variant-confidence-status-cs",
        "code" : "high",
        "display" : "High"
      }],
      "text" : "hohe Konfidenz"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "87706-8"
      }]
    },
    "valueQuantity" : {
      "value" : 5,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47999-8"
      }]
    },
    "valueString" : "Exon 2"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "95123-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260415000",
        "display" : "Not detected"
      }],
      "text" : "keine Genfusion nachweisbar"
    }
  }]
}

```
