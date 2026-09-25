# mii-exa-test-data-patient-6-specimen-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-6-specimen-1**

## Example Specimen: mii-exa-test-data-patient-6-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-1.md)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000010

**status**: Available

**type**: Blood specimen with edetic acid (specimen)

**subject**: [Frank Blutprobe Male, DoB: 1955-12-07 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-006)](Patient-mii-exa-test-data-biobank-patient-6.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **BodySite** |
| * | 2022-03-14 06:15:00+0100 | Left upper arm structure (body structure) |

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 5 mL (Details: UCUM codeml = 'ml') | 5 mL (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-6-specimen-1",
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
    "value" : "BP_000010"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "445295009",
      "display" : "Blood specimen with edetic acid (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-6"
  },
  "collection" : {
    "collectedDateTime" : "2022-03-14T06:15:00+01:00",
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
      "value" : 5,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 5,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }]
}

```
