# mii-exa-test-data-onko-prostata-gleason-grade-group-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-prostata-gleason-grade-group-1**

## Example Observation: mii-exa-test-data-onko-prostata-gleason-grade-group-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Prostata Gleason Grade Group](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-06-10

**value**: International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)

**derivedFrom**: 

* [Observation Primary Gleason pattern (observable entity)](Observation-mii-exa-test-data-onko-prostata-gleason-primary-1.md)
* [Observation Secondary Gleason pattern (observable entity)](Observation-mii-exa-test-data-onko-prostata-gleason-secondary-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-prostata-gleason-grade-group-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group"],
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
      "code" : "1812491000004107",
      "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
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
  "effectiveDateTime" : "2021-06-10",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1279714001",
      "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
    }]
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-onko-prostata-gleason-primary-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-prostata-gleason-secondary-1"
  }]
}

```
