# mii-exa-test-data-biobank-organoid-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-organoid-1**

## Example Specimen: mii-exa-test-data-biobank-organoid-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Zellinie Organoid](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Kulturprotokoll**: [DocumentReference: status = current; date = 2022-03-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden](DocumentReference-mii-exa-test-data-biobank-kulturprotokoll-1.md)

> **MII EX Biobank Zelllinien-Modifikation**
* artDerModifikation: derives from cell with knockout gene
* zielGen: [HUGO Gene Nomenclature Committee Genes: TP53](http://terminology.hl7.org/6.5.0/CodeSystem-v3-hgnc.html#v3-hgnc-TP53) (tumor protein p53)
* protokoll: [DocumentReference: status = current; date = 2022-03-19 09:00:00+0100; description = CRISPR Knockout-Protokoll fuer TP53 in Kolon-Tumor-Organoiden](DocumentReference-mii-exa-test-data-biobank-crispr-protokoll-1.md)

**MII EX Biobank Anzahl Passagen**: 3

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-3.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOT](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-ALIQUOT) (Aliquot)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000020

**status**: Available

**type**: Specimen (specimen)

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

**receivedTime**: 2022-03-24 14:00:00+0100

**parent**: [Specimen: identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000002; status = available; type = Tissue specimen from colon (specimen)](Specimen-mii-exa-test-data-patient-3-specimen-1.md)

**request**: Anforderung Organoid-Kultur (Identifier: `https://www.charite.de/fhir/sid/Bioproben-Anforderungen`/BPA_000001)

### Collections

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Collected[x]** | **Quantity** | **Method** | **BodySite** | **FastingStatus[x]** |
| * |  | 2022-03-24 12:44:00+0100 | 1 mL (Details: UCUM codemL = 'mL') | Biopsy (procedure) | Colon structure (body structure) | The patient indicated they did not fast prior to the procedure. |

### Processings

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Procedure** | **Additive** | **Time[x]** |
| * |  | Storage of specimen (procedure) | [Substance Edetic acid (substance)](Substance-mii-exa-test-data-patient-1-substance-1.md) | 2022-04-01 10:00:00+0200 --> 2022-04-12 10:00:00+0200 |

### Containers

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** | **Additive[x]** |
| * | Tube, device (physical object) | 2 mL (Details: UCUM codemL = 'mL') | 1 mL (Details: UCUM codeml = 'ml') | Organoid-Kulturmedium mit Matrigel |

**note**: 

> 

Kolon-Tumor-Organoid, Passage 3, aus der Gewebeprobe etabliert.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-biobank-organoid-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-kulturprotokoll",
    "valueReference" : {
      "reference" : "DocumentReference/mii-exa-test-data-biobank-kulturprotokoll-1"
    }
  },
  {
    "extension" : [{
      "url" : "artDerModifikation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://purl.obolibrary.org/obo/clo.owl",
          "code" : "CLO:0037375",
          "display" : "derives from cell with knockout gene"
        }]
      }
    },
    {
      "url" : "zielGen",
      "valueCoding" : {
        "system" : "http://www.genenames.org",
        "code" : "TP53",
        "display" : "tumor protein p53"
      }
    },
    {
      "url" : "protokoll",
      "valueReference" : {
        "reference" : "DocumentReference/mii-exa-test-data-biobank-crispr-protokoll-1"
      }
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-passagen",
    "valueInteger" : 3
  },
  {
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
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000020"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "123038009",
      "display" : "Specimen (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "Organoid",
      "display" : "Organoids"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "receivedTime" : "2022-03-24T14:00:00+01:00",
  "parent" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-3-specimen-1"
  }],
  "request" : [{
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Bioproben-Anforderungen",
      "value" : "BPA_000001"
    },
    "display" : "Anforderung Organoid-Kultur"
  }],
  "collection" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
      "valueDateTime" : "2022-03-24T12:30:00+01:00"
    }],
    "collectedDateTime" : "2022-03-24T12:44:00+01:00",
    "quantity" : {
      "value" : 1,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "86273004",
        "display" : "Biopsy (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "71854001",
        "display" : "Colon structure (body structure)"
      }]
    },
    "fastingStatusCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
        "code" : "NF",
        "display" : "The patient indicated they did not fast prior to the procedure."
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 37,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 37,
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
      "start" : "2022-04-01T10:00:00+02:00",
      "end" : "2022-04-12T10:00:00+02:00"
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
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "105590001",
        "display" : "Substance (substance)"
      }],
      "text" : "Organoid-Kulturmedium mit Matrigel"
    }
  }],
  "note" : [{
    "text" : "Kolon-Tumor-Organoid, Passage 3, aus der Gewebeprobe etabliert."
  }]
}

```
