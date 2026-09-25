# mii-exa-test-data-patient-3-seltene-consanguinity-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-consanguinity-1**

## Example Observation: mii-exa-test-data-patient-3-seltene-consanguinity-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Consanguinity](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Social History

**code**: Consanguinity

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**focus**: 

* [FamilyMemberHistory: extension = Yes; status = completed; date = 2025-03-10; relationship = Natural mother; sex = Female; born[x] = 1960; deceased[x] = false](FamilyMemberHistory-mii-exa-test-data-patient-3-seltene-familienanamnese-1.md)
* [FamilyMemberHistory: extension = No; status = completed; relationship = Father; sex = Male; born[x] = 1957; deceased[x] = No display for Age ](FamilyMemberHistory-mii-exa-test-data-patient-3-seltene-familienanamnese-2.md)

**effective**: 2024-03-05

**value**: Eltern nicht blutsverwandt



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-3-seltene-consanguinity-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity"],
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
      "code" : "social-history"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "842009",
      "display" : "Consanguinity"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "focus" : [{
    "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-3-seltene-familienanamnese-1"
  },
  {
    "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-3-seltene-familienanamnese-2"
  }],
  "effectiveDateTime" : "2024-03-05",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373067005",
      "display" : "No"
    }],
    "text" : "Eltern nicht blutsverwandt"
  }
}

```
