# mii-exa-test-data-patient-14-mtb-msi-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-msi-1**

## Example Observation: mii-exa-test-data-patient-14-mtb-msi-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Mikrosatelliteninstabilität](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Microsatellite instability [Interpretation] in Cancer specimen Qualitative

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**effective**: 2024-04-09

**issued**: 2024-04-09 15:00:00+0200

**value**: 0.42 ratio (Details: UCUM code1 = '1')

**interpretation**: MSI-H

**method**: Sequencing

**specimen**: [Specimen: identifier = ONKO-SPEC-014-1; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2024-08417; status = available; type = Specimen from colon obtained by sigmoidectomy](Specimen-mii-exa-test-data-patient-14-onko-specimen-1.md)

> **component****code**: Gene studied [ID]**value**: MLH1

> **component****code**: A characterization of a given biomarker observation.**value**: nucleic acid category



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-14-mtb-msi-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"],
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
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81695-9",
      "display" : "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "effectiveDateTime" : "2024-04-09",
  "issued" : "2024-04-09T15:00:00+02:00",
  "valueQuantity" : {
    "value" : 0.42,
    "unit" : "ratio",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA26203-2",
      "display" : "MSI-H"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA26398-0",
      "display" : "Sequencing"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-14-onko-specimen-1"
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
        "code" : "nucleicAcid",
        "display" : "nucleic acid category"
      }]
    }
  }]
}

```
