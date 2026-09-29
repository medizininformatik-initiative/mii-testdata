# mii-exa-test-data-biobank-specimen-zellkultur-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-specimen-zellkultur-1**

## Example Specimen: mii-exa-test-data-biobank-specimen-zellkultur-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-3.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOT](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-ALIQUOT) (Aliquot)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**Specimen Focus**: [Substance Culture medium](Substance-mii-exa-test-data-biobank-substance-kulturmedium-1.md)

**MII EX Biobank Anzahl Aliquots**: 4

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000022

**status**: Available

**type**: Cell culture lysate specimen

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

**receivedTime**: 2022-04-12 12:00:00+0200

**parent**: [Specimen: extension = ->DocumentReference: status = current; date = 2022-03-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden,,3,6,->Substance Culture medium,->Organization Zentrale Biobank der Charité,->Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet,Aliquot (MII CS Biobank Probenebene#ALIQUOT),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000020; status = available; type = Specimen (specimen); receivedTime = 2022-03-24 14:00:00+0100; note = Kolon-Tumor-Organoid, Passage 3, aus der Gewebeprobe etabliert.](Specimen-mii-exa-test-data-biobank-organoid-1.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Quantity** |
| * | 2022-04-12 10:30:00+0200 | 1 mL (Details: UCUM codemL = 'mL') |

> **processing****MII EX Biobank Temperaturbedingungen**: -85--60 °C**Sample storage temperature**: between -60 and -85 degrees Celsius**description**: Einfrieren des Lysats bei -80 °C**procedure**: Specimen freezing (procedure)**time**: 2022-04-12 12:15:00+0200 --> (ongoing)

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 2 mL (Details: UCUM codemL = 'mL') | 1 mL (Details: UCUM codeml = 'ml') |

**note**: 

> 

Lysat aus Passage 3 der Organoid-Kultur, fuer RNA-Extraktion vorgesehen.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-biobank-specimen-zellkultur-1",
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
      "reference" : "Condition/mii-exa-test-data-biobank-diagnose-3"
    }
  },
  {
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
  },
  {
    "url" : "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus",
    "valueReference" : {
      "reference" : "Substance/mii-exa-test-data-biobank-substance-kulturmedium-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots",
    "valueInteger" : 4
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000022"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1404538009",
      "display" : "Cell culture lysate specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "receivedTime" : "2022-04-12T12:00:00+02:00",
  "parent" : [{
    "reference" : "Specimen/mii-exa-test-data-biobank-organoid-1"
  }],
  "collection" : {
    "collectedDateTime" : "2022-04-12T10:30:00+02:00",
    "quantity" : {
      "value" : 1,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : -85,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : -60,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    },
    {
      "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-storage-temperature-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-storage-temperature-cs",
          "code" : "-60to-85",
          "display" : "between -60 and -85 degrees Celsius"
        }]
      }
    }],
    "description" : "Einfrieren des Lysats bei -80 °C",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "27872000",
        "display" : "Specimen freezing (procedure)"
      }]
    },
    "timePeriod" : {
      "start" : "2022-04-12T12:15:00+02:00"
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
      "value" : 2,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "specimenQuantity" : {
      "value" : 1,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }],
  "note" : [{
    "text" : "Lysat aus Passage 3 der Organoid-Kultur, fuer RNA-Extraktion vorgesehen."
  }]
}

```
