# mii-exa-test-data-patient-3-seltene-familienanamnese-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-familienanamnese-2**

## Example FamilyMemberHistory: mii-exa-test-data-patient-3-seltene-familienanamnese-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen**: No

**status**: Completed

**patient**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**relationship**: Father

**sex**: Male

**born**: 1957

**deceased**: 72 years (Details: UCUM codea = 'a')

### Conditions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **ContributedToDeath** | **Onset[x]** |
| * | Atherosklerotische Herzkrankheit | true | 60 years (Details: UCUM codea = 'a') |



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-3-seltene-familienanamnese-2",
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
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }]
    }
  }],
  "status" : "completed",
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "66839005",
      "display" : "Father"
    }]
  },
  "sex" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "code" : "male"
    }]
  },
  "bornDate" : "1957",
  "deceasedAge" : {
    "value" : 72,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "I25.1",
        "display" : "Atherosklerotische Herzkrankheit"
      }]
    },
    "contributedToDeath" : true,
    "onsetAge" : {
      "value" : 60,
      "unit" : "years",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  }]
}

```
