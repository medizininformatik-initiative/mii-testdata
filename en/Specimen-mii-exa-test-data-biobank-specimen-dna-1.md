# mii-exa-test-data-biobank-specimen-dna-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-specimen-dna-1**

## Example Specimen: mii-exa-test-data-biobank-specimen-dna-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOT](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-ALIQUOT) (Aliquot)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000021

**status**: Available

**type**: Deoxyribonucleic acid specimen (specimen)

**subject**: [Sabine Musterfrau Female, DoB: 1975-11-03 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-001)](Patient-mii-exa-test-data-biobank-patient-1.md)

**receivedTime**: 2024-02-15 13:30:00+0100

**parent**: [Specimen: extension = ->Organization Zentrale Biobank der Charité,->Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000001; status = available; type = Venous blood specimen (specimen); note = Probe innerhalb von 30 Minuten nach Entnahme eingelagert.](Specimen-mii-exa-test-data-patient-1-specimen-1.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Collected[x]** | **Quantity** | **FastingStatus[x]** |
| * |  | 2024-02-15 11:05:00+0100 | 10 mL (Details: UCUM codemL = 'mL') | Patient was fasting prior to the procedure. |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Procedure** | **Additive** | **Time[x]** |
| * | DNA-Extraktion aus EDTA-Vollblut | Specimen centrifugation (procedure) | [Substance Edetic acid (substance)](Substance-mii-exa-test-data-patient-1-substance-1.md) | 2024-02-15 13:45:00+0100 --> 2024-02-15 14:30:00+0100 |

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 0.5 mL (Details: UCUM codemL = 'mL') | 0.2 mL (Details: UCUM codeml = 'ml') |

**note**: 

> 

DNA-Extraktion aus dem EDTA-Vollblut, Konzentration 50 ng/uL.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-biobank-specimen-dna-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "ALIQUOT",
      "display" : "Aliquot"
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
    "value" : "BP_000021"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258566005",
      "display" : "Deoxyribonucleic acid specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-1"
  },
  "receivedTime" : "2024-02-15T13:30:00+01:00",
  "parent" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-1-specimen-1"
  }],
  "collection" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
      "valueDateTime" : "2024-02-15T11:05:00+01:00"
    }],
    "collectedDateTime" : "2024-02-15T11:05:00+01:00",
    "quantity" : {
      "value" : 10,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
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
    "description" : "DNA-Extraktion aus EDTA-Vollblut",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "73373003",
        "display" : "Specimen centrifugation (procedure)"
      }]
    },
    "additive" : [{
      "reference" : "Substance/mii-exa-test-data-patient-1-substance-1"
    }],
    "timePeriod" : {
      "start" : "2024-02-15T13:45:00+01:00",
      "end" : "2024-02-15T14:30:00+01:00"
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
      "value" : 0.5,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "specimenQuantity" : {
      "value" : 0.2,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }],
  "note" : [{
    "text" : "DNA-Extraktion aus dem EDTA-Vollblut, Konzentration 50 ng/uL."
  }]
}

```
