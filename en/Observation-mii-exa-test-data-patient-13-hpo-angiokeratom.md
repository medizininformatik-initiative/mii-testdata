# mii-exa-test-data-patient-13-hpo-angiokeratom - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-hpo-angiokeratom**

## Example Observation: mii-exa-test-data-patient-13-hpo-angiokeratom

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE HPO Assessment](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Angiokeratoma

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Innere Medizin; period = 2024-01-15 09:00:00+0100 --> 2024-01-15 13:00:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-3.md)

**effective**: 2024-01-15

**note**: 

> 

Keine Angiokeratome nachweisbar — bei heterozygoten Frauen haeufig fehlend. Der dokumentierte AUSSCHLUSS ist hier informativ, nicht das Fehlen der Ressource.


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
  "id" : "mii-exa-test-data-patient-13-hpo-angiokeratom",
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
      "code" : "HP:0001014",
      "display" : "Angiokeratoma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-3"
  },
  "effectiveDateTime" : "2024-01-15",
  "note" : [{
    "text" : "Keine Angiokeratome nachweisbar — bei heterozygoten Frauen haeufig fehlend. Der dokumentierte AUSSCHLUSS ist hier informativ, nicht das Fehlen der Ressource."
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
