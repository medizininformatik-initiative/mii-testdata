# Prostatastanze 03 - Rechts lateral apikal - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prostatastanze 03 - Rechts lateral apikal**

## Example Specimen: Prostatastanze 03 - Rechts lateral apikal

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Patho Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX Biobank Feature R5**
* type: Structure of apical part of peripheral zone of right half prostate (body structure)
* description: Markiert mit grüner Tinte

**identifier**: Placer Identifier/BX24_001_03_A, Filler Identifier/E_24_001_C

**accessionIdentifier**: `https://www.charite.de/fhir/sid/patho/befundbericht`/E_24_001

**status**: Available

**type**: Prostate tru-cut biopsy sample

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**request**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Ulrich Stanze ](Practitioner-mii-exa-test-data-patho-practitioner-2.md) | 2024-01-15 10:34:00+0100 | Tru-cut biopsy of prostate (procedure) | Structure of apical part of peripheral zone of right half prostate (body structure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | Neutral buffered formalin (substance) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patho-specimen-03-part",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716934008",
          "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Markiert mit grüner Tinte"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
    "value" : "BX24_001_03_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001_C"
  }],
  "accessionIdentifier" : {
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309134005",
      "display" : "Prostate tru-cut biopsy sample"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
    },
    "collectedDateTime" : "2024-01-15T10:34:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "301759007",
        "display" : "Tru-cut biopsy of prostate (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "716934008",
        "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
      }]
    }
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434746001",
        "display" : "Specimen vial (physical object)"
      }]
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434162003",
        "display" : "Neutral buffered formalin (substance)"
      }]
    }
  }]
}

```
