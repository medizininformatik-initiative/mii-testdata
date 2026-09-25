# mii-exa-test-data-patient-9-specimen-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-specimen-2**

## Example Specimen: mii-exa-test-data-patient-9-specimen-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Verwaltende Organisation**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**MII EX Biobank Diagnose**: [Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet](Condition-mii-exa-test-data-biobank-diagnose-1.md)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000017

**status**: Available

**type**: Serum specimen (specimen)

**subject**: [Ingrid Biopsie Female, DoB: 1983-10-04 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-009)](Patient-mii-exa-test-data-biobank-patient-9.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **BodySite** |
| * | 2024-02-22 06:30:00+0100 | Right upper arm structure (body structure) |

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 7 mL (Details: UCUM codeml = 'ml') | 7 mL (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-9-specimen-2",
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
    "value" : "BP_000017"
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
    "reference" : "Patient/mii-exa-test-data-biobank-patient-9"
  },
  "collection" : {
    "collectedDateTime" : "2024-02-22T06:30:00+01:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "368209003",
        "display" : "Right upper arm structure (body structure)"
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
