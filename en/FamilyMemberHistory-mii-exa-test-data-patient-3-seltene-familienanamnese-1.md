# mii-exa-test-data-patient-3-seltene-familienanamnese-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-familienanamnese-1**

## Example FamilyMemberHistory: mii-exa-test-data-patient-3-seltene-familienanamnese-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen**: Yes

**status**: Completed

**patient**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**date**: 2025-03-10

**relationship**: Natural mother

**sex**: Female

**born**: 1960

**deceased**: false

> **condition****MII EX SE Penetrance**: Incomplete penetrance**code**: Marfan-Syndrom**contributedToDeath**: false**onset**: 25 years (Details: UCUM codea = 'a')

> **condition****code**: Aneurysma der Aorta thoracica, ohne Angabe einer Ruptur**contributedToDeath**: false**onset**: 50 years (Details: UCUM codea = 'a')



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-3-seltene-familienanamnese-1",
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
        "code" : "373066001",
        "display" : "Yes"
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
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "125678001",
          "display" : "First degree blood relative (person)"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsverhaeltnis",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "13646006",
          "display" : "Natural parent (person)"
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
  "bornDate" : "1960",
  "deceasedBoolean" : false,
  "condition" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0003829",
          "display" : "Incomplete penetrance"
        }]
      }
    }],
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "Q87.4",
        "display" : "Marfan-Syndrom"
      },
      {
        "system" : "http://www.orpha.net",
        "code" : "558",
        "display" : "Marfan syndrome"
      },
      {
        "system" : "http://purl.obolibrary.org/obo/mondo.owl",
        "code" : "MONDO:0007064",
        "display" : "Marfan syndrome"
      }]
    },
    "contributedToDeath" : false,
    "onsetAge" : {
      "value" : 25,
      "unit" : "years",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "I71.2",
        "display" : "Aneurysma der Aorta thoracica, ohne Angabe einer Ruptur"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "233985008",
        "display" : "Abdominal aortic aneurysm"
      }]
    },
    "contributedToDeath" : false,
    "onsetAge" : {
      "value" : 50,
      "unit" : "years",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  }]
}

```
