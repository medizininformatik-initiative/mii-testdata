# mii-exa-test-data-patient-11-studien-kriterium-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-studien-kriterium-1**

## Example EvidenceVariable: mii-exa-test-data-patient-11-studien-kriterium-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie EinAuschlussKriterium](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

> **characteristic****MII EX Studie Backport linkId**: krit-alter
> **MII EX Studie Backport DefinitionByTypeAndValue**
* type: Current chronological age
* value: >=18 year (Details: UCUM codea = 'a')

**description**: Alter mindestens 18 Jahre**definition**: Mindestalter**exclude**: false

> **characteristic****MII EX Studie Backport linkId**: krit-hi**description**: Gesicherte chronische Herzinsuffizienz, mindestens NYHA II**definition**: Heart failure (disorder)**exclude**: false

> **characteristic****description**: Schwere kognitive Beeinträchtigung - selbständige Beantwortung der Fragebögen nicht möglich**definition**: Keine Selbstauskunft möglich**exclude**: true



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-test-data-patient-11-studien-kriterium-1",
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
      "valueId" : "krit-hi"
    }],
    "description" : "Gesicherte chronische Herzinsuffizienz, mindestens NYHA II",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "84114007",
        "display" : "Heart failure (disorder)"
      }]
    },
    "exclude" : false
  },
  {
    "description" : "Schwere kognitive Beeinträchtigung - selbständige Beantwortung der Fragebögen nicht möglich",
    "definitionCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "702956004",
        "display" : "Severe cognitive impairment (finding)"
      }],
      "text" : "Keine Selbstauskunft möglich"
    },
    "exclude" : true
  }]
}

```
