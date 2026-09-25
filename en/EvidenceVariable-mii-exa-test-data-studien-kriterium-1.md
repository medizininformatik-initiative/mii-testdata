# mii-exa-test-data-studien-kriterium-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studien-kriterium-1**

## Example EvidenceVariable: mii-exa-test-data-studien-kriterium-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie EinAuschlussKriterium](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

> **characteristic****MII EX Studie Backport linkId**: krit-alter
> **MII EX Studie Backport DefinitionByTypeAndValue**
* type: Current chronological age
* value: >=18 year (Details: UCUM codea = 'a')

**description**: Alter mindestens 18 Jahre**definition**: Mindestalter**exclude**: false

> **characteristic****MII EX Studie Backport linkId**: krit-endokrin**description**: Gesicherte Diagnose einer endokrinen Erkrankung (z. B. Diabetes mellitus Typ 2)**definition**: Diabetes mellitus type 2 (disorder)**exclude**: false

> **characteristic****MII EX Studie Backport definitionCanonical**: [https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender)**description**: Geschlecht: alle**definition**: Alle**exclude**: false

> **characteristic****description**: Bestehende Schwangerschaft**definition**: Pregnancy (finding)**exclude**: true



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-test-data-studien-kriterium-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "characteristic" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
      "valueId" : "krit-alter"
    },
    {
      "extension" : [{
        "url" : "type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "424144002",
            "display" : "Current chronological age"
          }]
        }
      },
      {
        "url" : "value",
        "valueQuantity" : {
          "value" : 18,
          "comparator" : ">=",
          "unit" : "year",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        }
      }],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionByTypeAndValue"
    }],
    "description" : "Alter mindestens 18 Jahre",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "424144002",
        "display" : "Current chronological age (observable entity)"
      }],
      "text" : "Mindestalter"
    },
    "exclude" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId",
      "valueId" : "krit-endokrin"
    }],
    "description" : "Gesicherte Diagnose einer endokrinen Erkrankung (z. B. Diabetes mellitus Typ 2)",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "44054006",
        "display" : "Diabetes mellitus type 2 (disorder)"
      }]
    },
    "exclude" : false
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionCanonical",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/EvidenceVariable/administrative-gender"
    }],
    "description" : "Geschlecht: alle",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "263495000",
        "display" : "Gender (observable entity)"
      }],
      "text" : "Alle"
    },
    "exclude" : false
  },
  {
    "description" : "Bestehende Schwangerschaft",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "77386006",
        "display" : "Pregnancy (finding)"
      }]
    },
    "exclude" : true
  }]
}

```
