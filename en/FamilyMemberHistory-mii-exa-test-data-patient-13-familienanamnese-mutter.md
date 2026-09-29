# mii-exa-test-data-patient-13-familienanamnese-mutter - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-familienanamnese-mutter**

## Example FamilyMemberHistory: mii-exa-test-data-patient-13-familienanamnese-mutter

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Von SE betroffen**: Yes

**status**: Completed

**patient**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**date**: 2024-01-15

**relationship**: Natural mother

**sex**: Female

**born**: 1962

**deceased**: false

**note**: 

> 

Nach der Diagnose der Indexpatientin im Kaskadenscreening ebenfalls als Traegerin identifiziert; klinisch bislang oligosymptomatisch.


### Conditions

| | | |
| :--- | :--- | :--- |
| - | **Code** | **ContributedToDeath** |
| * | Sonstige Sphingolipidosen | false |



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-13-familienanamnese-mutter",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-von-se-betroffen",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }]
    }
  }],
  "status" : "completed",
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "date" : "2024-01-15",
  "relationship" : {
    "coding" : [{
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "125678001",
          "display" : "First degree blood relative (person)"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-familiare-linie",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "72705000",
          "display" : "Mother (person)"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "65656005",
      "display" : "Natural mother"
    }]
  },
  "sex" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "code" : "female"
    }]
  },
  "bornDate" : "1962",
  "deceasedBoolean" : false,
  "note" : [{
    "text" : "Nach der Diagnose der Indexpatientin im Kaskadenscreening ebenfalls als Traegerin identifiziert; klinisch bislang oligosymptomatisch."
  }],
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "E75.2",
        "display" : "Sonstige Sphingolipidosen"
      },
      {
        "system" : "http://www.orpha.net",
        "code" : "324",
        "display" : "Fabry disease"
      }]
    },
    "contributedToDeath" : false
  }]
}

```
