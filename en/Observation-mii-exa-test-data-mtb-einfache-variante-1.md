# MTB Einfache Variante - EGFR - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Einfache Variante - EGFR**

## Example Observation: MTB Einfache Variante - EGFR

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Einfache Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-variante`/VAR-EGFR-001

**status**: Final

**category**: Laboratory, Genetics

**code**: Genetic variant assessment

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**focus**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**effective**: 2024-02-25

**issued**: 2024-03-01 09:00:00+0100

**value**: Present

**method**: Sequencing

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

**device**: [Device: manufacturer = Illumina; type = Biomedical equipment](Device-mii-exa-test-data-mtb-device-sequencer-1.md)

> **component****code**: Gene studied [ID]**value**: EGFR

> **component****code**: Amino acid change (pHGVS)**value**: NP_005219.2:p.Leu858Arg



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-einfache-variante-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-variante",
    "value" : "VAR-EGFR-001"
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
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "effectiveDateTime" : "2024-02-25",
  "issued" : "2024-03-01T09:00:00+01:00",
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
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mtb-device-sequencer-1"
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
        "code" : "48005-3",
        "display" : "Amino acid change (pHGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NP_005219.2:p.Leu858Arg"
      }]
    }
  }]
}

```
