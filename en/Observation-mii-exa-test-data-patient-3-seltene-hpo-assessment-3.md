# mii-exa-test-data-patient-3-seltene-hpo-assessment-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-hpo-assessment-3**

## Example Observation: mii-exa-test-data-patient-3-seltene-hpo-assessment-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE HPO Assessment](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Ectopia lentis

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**effective**: 2025-03-10

**note**: 

> 

Moderate Linsensubluxation bilateral, ophthalmologisch dokumentiert.


**bodySite**: Lens structure

**method**: Ophthalmic examination

> **component****code**: Presence findings**value**: Present**interpretation**: Neu hinzugefügt

> **component****code**: Severity**value**: Moderate



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-seltene-hpo-assessment-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001083",
      "display" : "Ectopia lentis"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "effectiveDateTime" : "2025-03-10",
  "note" : [{
    "text" : "Moderate Linsensubluxation bilateral, ophthalmologisch dokumentiert."
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "78076003",
      "display" : "Lens structure"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "36228007",
      "display" : "Ophthalmic examination"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260411009",
        "display" : "Presence findings"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA9633-4",
        "display" : "Present"
      }]
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code" : "newly-added",
        "display" : "Neu hinzugefügt"
      }]
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012824",
        "display" : "Severity"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012826",
        "display" : "Moderate"
      }]
    }
  }]
}

```
