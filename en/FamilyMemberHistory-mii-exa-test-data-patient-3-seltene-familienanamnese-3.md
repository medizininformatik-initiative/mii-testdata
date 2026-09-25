# mii-exa-test-data-patient-3-seltene-familienanamnese-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-familienanamnese-3**

## Example FamilyMemberHistory: mii-exa-test-data-patient-3-seltene-familienanamnese-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen**: No

**status**: Completed

**patient**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**date**: 2025-03-10

**relationship**: Natural brother

**sex**: Male

**age**: 27 Jahre (Details: UCUM codea = 'a')

**reasonCode**: Marfan syndrome

**reasonReference**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-3-seltene-familienanamnese-3",
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
  "date" : "2025-03-10",
  "relationship" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "60614009",
      "display" : "Natural brother"
    }]
  },
  "sex" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "code" : "male"
    }]
  },
  "ageAge" : {
    "value" : 27,
    "unit" : "Jahre",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "Q87.4",
      "display" : "Marfan-Syndrom"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1"
  }]
}

```
