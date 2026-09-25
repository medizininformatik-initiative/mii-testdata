# mii-exa-test-data-onko-melanom-ldh-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-melanom-ldh-1**

## Example Observation: mii-exa-test-data-onko-melanom-ldh-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Melanom LDH](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory

**code**: Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-06-18

**value**: 180 U/L (Details: UCUM codeU/L = 'U/L')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-melanom-ldh-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh"],
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
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "14804-9",
      "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "effectiveDateTime" : "2021-06-18",
  "valueQuantity" : {
    "value" : 180,
    "unit" : "U/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  }
}

```
