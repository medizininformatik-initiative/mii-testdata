# mii-exa-test-data-patient-1-specimen-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-specimen-1**

## Example Specimen: mii-exa-test-data-patient-1-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-1.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: PRIMÄRPROBE](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE) (Primärprobe)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000001

**status**: Available

**type**: Venous blood specimen (specimen)

**subject**: [Sabine Musterfrau Female, DoB: 1975-11-03 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-001)](Patient-mii-exa-test-data-biobank-patient-1.md)

**request**: Laborauftrag kleines Blutbild (Identifier: `https://www.charite.de/fhir/sid/Laboranforderungen`/LA_000001)

### Collections

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Collected[x]** | **Quantity** | **Method** | **BodySite** | **FastingStatus[x]** |
| * | 2024-02-15 11:05:00+0100 | 10 mL (Details: UCUM codemL = 'mL') | Puncture - action | Structure of dorsum of left hand (body structure) | Patient was fasting prior to the procedure. |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Procedure** | **Additive** | **Time[x]** |
| * |  | Storage of specimen (procedure) | [Substance Edetic acid (substance)](Substance-mii-exa-test-data-patient-1-substance-1.md) | 2024-02-15 11:05:00+0100 --> 2024-02-15 11:35:00+0100 |

### Containers

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** | **Additive[x]** |
| * | Tube, device (physical object) | 10 mL (Details: UCUM codeml = 'ml') | 10 mL (Details: UCUM codeml = 'ml') | [Substance Edetic acid (substance)](Substance-mii-exa-test-data-patient-1-substance-1.md) |

**note**: 

> 

Probe innerhalb von 30 Minuten nach Entnahme eingelagert.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-1-specimen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation",
    "valueReference" : {
      "reference" : "Organization/mii-exa-test-data-organization-biobank-charite"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-biobank-diagnose-1"
    }
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
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000001"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122555007",
      "display" : "Venous blood specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-1"
  },
  "request" : [{
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Laboranforderungen",
      "value" : "LA_000001"
    },
    "display" : "Laborauftrag kleines Blutbild"
  }],
  "collection" : {
    "collectedDateTime" : "2024-02-15T11:05:00+01:00",
    "quantity" : {
      "value" : 10,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "129300006"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "789218009",
        "display" : "Structure of dorsum of left hand (body structure)"
      }]
    },
    "fastingStatusCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
        "code" : "F",
        "display" : "Patient was fasting prior to the procedure."
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 15,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 25,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1186936003",
        "display" : "Storage of specimen (procedure)"
      }]
    },
    "additive" : [{
      "reference" : "Substance/mii-exa-test-data-patient-1-substance-1"
    }],
    "timePeriod" : {
      "start" : "2024-02-15T11:05:00+01:00",
      "end" : "2024-02-15T11:35:00+01:00"
    }
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "83059008",
        "display" : "Tube, device (physical object)"
      }]
    },
    "capacity" : {
      "value" : 10,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 10,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "additiveReference" : {
      "reference" : "Substance/mii-exa-test-data-patient-1-substance-1"
    }
  }],
  "note" : [{
    "text" : "Probe innerhalb von 30 Minuten nach Entnahme eingelagert."
  }]
}

```
