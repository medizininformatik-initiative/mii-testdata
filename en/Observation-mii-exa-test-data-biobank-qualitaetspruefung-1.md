# mii-exa-test-data-biobank-qualitaetspruefung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-qualitaetspruefung-1**

## Example Observation: mii-exa-test-data-biobank-qualitaetspruefung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Observation Qualitätsprüfung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Quality monitoring (procedure)

**focus**: [Specimen: extension = ->Organization Zentrale Biobank der Charité,->Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet; identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000004; status = available; type = Serum specimen (specimen)](Specimen-mii-exa-test-data-patient-3-specimen-2.md)

**effective**: 2022-04-05 09:00:00+0200

> **component****code**: Test protocol used (attribute)**value**: Hemolysis screening test (procedure)

> **component****code**: Resulting in (attribute)**value**: Pass



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-biobank-qualitaetspruefung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "386404008",
      "display" : "Quality monitoring (procedure)"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-3-specimen-2"
  }],
  "effectiveDateTime" : "2022-04-05T09:00:00+02:00",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "246423001",
        "display" : "Test protocol used (attribute)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "401297005",
        "display" : "Hemolysis screening test (procedure)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "79409006",
        "display" : "Resulting in (attribute)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA10392-1",
        "display" : "Pass"
      }]
    }
  }]
}

```
