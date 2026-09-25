# mii-exa-test-data-isik-vitalparameter-ideales-gewicht-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-ideales-gewicht-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-ideales-gewicht-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [SD MII ICU Ideales Koerpergewicht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-ideales-koerpergewicht)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Vital Signs

**code**: Ideal body weight (observable entity)

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 10:05:00+0200

**performer**: Pflegefachkraft Station 14i

**value**: 63 kilogram (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-ideales-gewicht-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-ideales-koerpergewicht"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "170804003",
      "display" : "Ideal body weight (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "50064-5",
      "display" : "Ideal body weight"
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "code" : "188796"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-isik-vitalparameter-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-isik-vitalparameter-encounter-1"
  },
  "effectiveDateTime" : "2026-05-12T10:05:00+02:00",
  "performer" : [{
    "display" : "Pflegefachkraft Station 14i"
  }],
  "valueQuantity" : {
    "value" : 63,
    "unit" : "kilogram",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
