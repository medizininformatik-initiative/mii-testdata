# mii-exa-test-data-patient-13-familienanamnese-onkel - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-familienanamnese-onkel**

## Example FamilyMemberHistory: mii-exa-test-data-patient-13-familienanamnese-onkel

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Von SE betroffen**: Undetermined

**status**: Completed

**patient**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**date**: 2024-01-15

**relationship**: Uncle

**sex**: Male

**deceased**: 48 years (Details: UCUM codea = 'a')

**note**: 

> 

Dialysepflichtige Niereninsuffizienz unklarer Genese, verstorben 2004. Keine genetische Abklaerung zu Lebzeiten — retrospektiv mit hoher Wahrscheinlichkeit Morbus Fabry.


### Conditions

| | | |
| :--- | :--- | :--- |
| - | **Code** | **ContributedToDeath** |
| * | Chronische Nierenkrankheit, Stadium 5 | true |



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-13-familienanamnese-onkel",
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
        "code" : "373068000",
        "display" : "Undetermined"
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
          "code" : "699110007",
          "display" : "Second degree blood relative (person)"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "38048003",
      "display" : "Uncle"
    }]
  },
  "sex" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "code" : "male"
    }]
  },
  "deceasedAge" : {
    "value" : 48,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "note" : [{
    "text" : "Dialysepflichtige Niereninsuffizienz unklarer Genese, verstorben 2004. Keine genetische Abklaerung zu Lebzeiten — retrospektiv mit hoher Wahrscheinlichkeit Morbus Fabry."
  }],
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "N18.5",
        "display" : "Chronische Nierenkrankheit, Stadium 5"
      }]
    },
    "contributedToDeath" : true
  }]
}

```
