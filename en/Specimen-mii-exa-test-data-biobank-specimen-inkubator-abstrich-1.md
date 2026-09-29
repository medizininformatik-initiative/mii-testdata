# mii-exa-test-data-biobank-specimen-inkubator-abstrich-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-specimen-inkubator-abstrich-1**

## Example Specimen: mii-exa-test-data-biobank-specimen-inkubator-abstrich-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: PRIMÄRPROBE](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE) (Primärprobe)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**Specimen Focus**: [Device: identifier = https://www.charite.de/fhir/sid/Geraete#ZEBANC_INK_007; status = active; type = Carbon dioxide laboratory incubator](Device-mii-exa-test-data-biobank-device-inkubator-1.md)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000023

**status**: Available

**type**: Environmental swab

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

**receivedTime**: 2022-04-12 11:30:00+0200

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2022-04-12 11:00:00+0200 |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Description** | **Procedure** | **Time[x]** |
| * |  | Transport zum Mikrobiologie-Labor bei Raumtemperatur | Storage of specimen (procedure) | 2022-04-12 11:05:00+0200 --> 2022-04-12 11:30:00+0200 |

### Containers

| | |
| :--- | :--- |
| - | **Type** |
| * | Tube, device (physical object) |

**note**: 

> 

Routinemaessige Sterilitaetskontrolle des Inkubators, in dem die Organoid-Kultur gehalten wird.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-biobank-specimen-inkubator-abstrich-1",
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
  },
  {
    "url" : "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus",
    "valueReference" : {
      "reference" : "Device/mii-exa-test-data-biobank-device-inkubator-1"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000023"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "419695002",
      "display" : "Environmental swab"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "SpecimenEnvironment",
      "display" : "Specimen from environment"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "receivedTime" : "2022-04-12T11:30:00+02:00",
  "collection" : {
    "collectedDateTime" : "2022-04-12T11:00:00+02:00"
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
    "description" : "Transport zum Mikrobiologie-Labor bei Raumtemperatur",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1186936003",
        "display" : "Storage of specimen (procedure)"
      }]
    },
    "timePeriod" : {
      "start" : "2022-04-12T11:05:00+02:00",
      "end" : "2022-04-12T11:30:00+02:00"
    }
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "83059008",
        "display" : "Tube, device (physical object)"
      }]
    }
  }],
  "note" : [{
    "text" : "Routinemaessige Sterilitaetskontrolle des Inkubators, in dem die Organoid-Kultur gehalten wird."
  }]
}

```
