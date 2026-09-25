# mii-exa-test-data-patient-3-specimen-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-specimen-2**

## Example Specimen: mii-exa-test-data-patient-3-specimen-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-1.md)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000004

**status**: Available

**type**: Serum specimen (specimen)

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

**parent**: [Specimen: extension = ->Organization Zentrale Biobank der Charité,->Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet; identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000005; status = available; type = Blood specimen with edetic acid (specimen)](Specimen-mii-exa-test-data-patient-3-specimen-3.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **BodySite** |
| * | 2022-04-05 07:15:00+0200 | Left upper arm structure (body structure) |

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 7 mL (Details: UCUM codeml = 'ml') | 7 mL (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-3-specimen-2",
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
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000004"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119364003",
      "display" : "Serum specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "parent" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-3-specimen-3"
  }],
  "collection" : {
    "collectedDateTime" : "2022-04-05T07:15:00+02:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "368208006",
        "display" : "Left upper arm structure (body structure)"
      }]
    }
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "83059008",
        "display" : "Tube, device (physical object)"
      }]
    },
    "capacity" : {
      "value" : 7,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 7,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }]
}

```
