# mii-exa-test-data-medication-dalbavancin - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-medication-dalbavancin**

## Example Medication: mii-exa-test-data-medication-dalbavancin

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation Medication](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: XYDALBA

**form**: Powder for concentrate for solution for infusion

> **ingredient****MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: IN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp#mii-cs-medikation-wirkstofftyp-IN) (ingredient)
> **MII EX Medikation Wirkstoffrelation**
* ingredientUri: [http://fhir.de/CodeSystem/ask#33395](https://simplifier.net/resolve?scope=de.gematik.ti@1.3.1&canonical=http://fhir.de/CodeSystem/ask)

**item**: Dalbavancin



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-medication-dalbavancin",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "15205222",
      "display" : "XYDALBA"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "J01XA04",
      "display" : "Dalbavancin"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50043000",
      "display" : "Powder for concentrate for solution for infusion"
    }]
  },
  "ingredient" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp",
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
        "code" : "IN",
        "display" : "ingredient"
      }
    },
    {
      "extension" : [{
        "url" : "ingredientUri",
        "valueUri" : "http://fhir.de/CodeSystem/ask#33395"
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "version" : "20260105",
        "code" : "33395",
        "display" : "Dalbavancin"
      },
      {
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "808UI9MS5K"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "171500-79-1"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "703917001",
        "display" : "Dalbavancin (substance)"
      }],
      "text" : "Dalbavancin"
    }
  }]
}

```
