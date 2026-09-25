# mii-exa-test-data-patient-3-specimen-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-specimen-1**

## Example Specimen: mii-exa-test-data-patient-3-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Specimen Bioprobe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/Bioproben`/BP_000002

**status**: Available

**type**: Tissue specimen from colon (specimen)

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Collected[x]** | **BodySite** |
| * |  | 2022-03-24 12:44:00+0100 | Colon structure (body structure) |

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 5 mL (Details: UCUM codeml = 'ml') | 5 mL (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-3-specimen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Bioproben",
    "value" : "BP_000002"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "128159001",
      "display" : "Tissue specimen from colon (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "collection" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
      "valueDateTime" : "2022-03-24T12:30:00+01:00"
    }],
    "collectedDateTime" : "2022-03-24T12:44:00+01:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "71854001",
        "display" : "Colon structure (body structure)"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "C18.9",
        "display" : "Colon, NOS"
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
