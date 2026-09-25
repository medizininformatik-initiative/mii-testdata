# MTB IHC MSI - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB IHC MSI**

## Example Observation: MTB IHC MSI

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Immunohistochemistry Microsatellite Instability](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-msi)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-befund`/IHC-2024-006

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Microsatellite instability [Presence] in Tissue by Immune stain

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**effective**: 2024-03-08

**issued**: 2024-03-10 09:00:00+0100

**value**: Stable

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-mtb-einfache-variante-1.md)

> **component****code**: Gene studied [ID]**value**: MLH1

> **component****code**: A characterization of a given biomarker observation.**value**: immune stain category



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-ihc-msi-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-msi"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-befund",
    "value" : "IHC-2024-006"
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
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "62862-8",
      "display" : "Microsatellite instability [Presence] in Tissue by Immune stain"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "effectiveDateTime" : "2024-03-08",
  "issued" : "2024-03-10T09:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA14122-8",
      "display" : "Stable"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-mtb-einfache-variante-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:7127",
        "display" : "MLH1"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "biomarker-category"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/molecular-biomarker-ontology-cs",
        "code" : "immuneStain",
        "display" : "immune stain category"
      }]
    }
  }]
}

```
