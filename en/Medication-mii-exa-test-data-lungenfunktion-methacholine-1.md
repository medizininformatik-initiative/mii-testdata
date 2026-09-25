# mii-exa-test-data-lungenfunktion-methacholine-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-methacholine-1**

## Example Medication: mii-exa-test-data-lungenfunktion-methacholine-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Methacholine](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-methacholine)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**code**: Methacholinchlorid 0,33% Loesung zur Inhalation (Provokit)

**form**: Loesung fuer einen Vernebler

> **ingredient****MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: IN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp#mii-cs-medikation-wirkstofftyp-IN) (ingredient)
> **MII EX Medikation Wirkstoffrelation**
* ingredientUri: [http://snomed.info/sct#109196007](http://hl7.org/fhir/R4/codesystem-snomedct.html)

**item**: Methacholinchlorid**isActive**: true**strength**: 33 mg (Details: UCUM codemg = 'mg')/10 ml (Details: UCUM codeml = 'ml')

> **ingredient****MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: IN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp#mii-cs-medikation-wirkstofftyp-IN) (ingredient)
> **MII EX Medikation Wirkstoffrelation**
* ingredientUri: [http://snomed.info/sct#11713004](http://hl7.org/fhir/R4/codesystem-snomedct.html)

**item**: Wasser fuer Injektionszwecke**isActive**: false



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-test-data-lungenfunktion-methacholine-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-methacholine"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "00171345",
      "display" : "Provokit® 0,33%"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2026",
      "code" : "V04CX03",
      "display" : "Methacholin"
    }],
    "text" : "Methacholinchlorid 0,33% Loesung zur Inhalation (Provokit)"
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11101000",
      "display" : "Nebuliser solution"
    }],
    "text" : "Loesung fuer einen Vernebler"
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
        "valueUri" : "http://snomed.info/sct#109196007"
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "109196007",
        "display" : "Methacholine chloride (substance)"
      }],
      "text" : "Methacholinchlorid"
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 33,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 10,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ml"
      }
    }
  },
  {
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
        "valueUri" : "http://snomed.info/sct#11713004"
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "11713004",
        "display" : "Water (substance)"
      }],
      "text" : "Wasser fuer Injektionszwecke"
    },
    "isActive" : false
  }]
}

```
