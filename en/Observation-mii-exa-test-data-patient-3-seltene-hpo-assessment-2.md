# mii-exa-test-data-patient-3-seltene-hpo-assessment-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-hpo-assessment-2**

## Example Observation: mii-exa-test-data-patient-3-seltene-hpo-assessment-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE HPO Assessment](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Arachnodactyly

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**effective**: 2025-03-10

**note**: 

> 

Arachnodaktylie bei klinischer Untersuchung nicht nachweisbar. Armspanne/Koerpergroesse-Verhaeltnis im Normbereich.


**method**: Physical examination procedure

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Absent |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-seltene-hpo-assessment-2",
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
      "code" : "HP:0001166",
      "display" : "Arachnodactyly"
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
    "text" : "Arachnodaktylie bei klinischer Untersuchung nicht nachweisbar. Armspanne/Koerpergroesse-Verhaeltnis im Normbereich."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "5880005",
      "display" : "Physical examination procedure"
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
        "code" : "LA9634-2",
        "display" : "Absent"
      }]
    }
  }]
}

```
