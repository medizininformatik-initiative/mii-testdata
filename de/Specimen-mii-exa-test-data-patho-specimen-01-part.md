# Prostatastanze 01 - Rechts lateral basal - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Prostatastanze 01 - Rechts lateral basal**

## Beispiel Specimen: Prostatastanze 01 - Rechts lateral basal

-------

**German**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Patho Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX Biobank Feature R5**
* type: Right basal peripheral zone of prostate
* description: Markiert mit roter Tinte

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: PRIMÄRPROBE](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE) (Primärprobe)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**identifier**: Placer Identifier/BX24_001_01_A, Filler Identifier/E_24_001_A

**accessionIdentifier**: `https://www.charite.de/fhir/sid/patho/befundbericht`/E_24_001

**status**: Available

**type**: Prostate tru-cut biopsy sample

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**receivedTime**: 2024-01-15 16:00:00+0100

**request**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

### Collections

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Collector** | **Collected[x]** | **Quantity** | **Method** | **BodySite** | **FastingStatus[x]** |
| * |  | [Practitioner Ulrich Stanze ](Practitioner-mii-exa-test-data-patho-practitioner-2.md) | 2024-01-15 10:30:00+0100 | 1 Stanzzylinder (Details: UCUM code1 = '1') | Tru-cut biopsy of prostate (procedure) | Right basal peripheral zone of prostate | The patient indicated they did not fast prior to the procedure. |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Procedure** | **Additive** | **Time[x]** |
| * | Formalinfixierung | Preparation of formalin fixed paraffin embedded tissue specimen | [Substance Neutral buffered formalin (substance)](Substance-mii-exa-test-data-patho-substance-formalin-1.md) | 2024-01-15 11:00:00+0100 --> 2024-01-16 07:30:00+0100 |

### Containers

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** | **Additive[x]** |
| * | Specimen vial (physical object) | 10 mL (Details: UCUM codemL = 'mL') | 2 mL (Details: UCUM codemL = 'mL') | Neutral buffered formalin (substance) |

**note**: 

> 

Stanze mit roter Tinte markiert, sofort in Formalin fixiert.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patho-specimen-01-part",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
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
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Markiert mit roter Tinte"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "PRIMÄRPROBE",
      "display" : "Primärprobe"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "409603009",
        "display" : "Biosafety level 2 (qualifier value)"
      }]
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
    "value" : "BX24_001_01_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001_A"
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
  "receivedTime" : "2024-01-15T16:00:00+01:00",
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
  }],
  "collection" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
      "valueDateTime" : "2024-01-15T10:29:00+01:00"
    }],
    "collector" : {
      "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
    },
    "collectedDateTime" : "2024-01-15T10:30:00+01:00",
    "quantity" : {
      "value" : 1,
      "unit" : "Stanzzylinder",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "301759007",
        "display" : "Tru-cut biopsy of prostate (procedure)"
      }]
    },
    "bodySite" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite",
        "valueReference" : {
          "reference" : "BodyStructure/mii-exa-test-data-patho-body-structure-1"
        }
      }],
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "716902004",
        "display" : "Right basal peripheral zone of prostate"
      }]
    },
    "fastingStatusCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
        "code" : "NF"
      }]
    }
  },
  "processing" : [{
    "description" : "Formalinfixierung",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "787376009",
        "display" : "Preparation of formalin fixed paraffin embedded tissue specimen"
      }]
    },
    "additive" : [{
      "reference" : "Substance/mii-exa-test-data-patho-substance-formalin-1"
    }],
    "timePeriod" : {
      "start" : "2024-01-15T11:00:00+01:00",
      "end" : "2024-01-16T07:30:00+01:00"
    }
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434746001",
        "display" : "Specimen vial (physical object)"
      }]
    },
    "capacity" : {
      "value" : 10,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "specimenQuantity" : {
      "value" : 2,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434162003",
        "display" : "Neutral buffered formalin (substance)"
      }]
    }
  }],
  "note" : [{
    "text" : "Stanze mit roter Tinte markiert, sofort in Formalin fixiert."
  }]
}

```
