# mii-exa-test-data-studien-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studien-diagnose-1**

## Example Condition: mii-exa-test-data-studien-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Diabetes mellitus, Typ 2: Ohne Komplikationen: Nicht als entgleist bezeichnet

**subject**: [Felix Proband Male, DoB: 1990-03-20 ( https://www.charite.de/fhir/sid/patientenidentifikation#STUD-TEST-001)](Patient-mii-exa-test-data-studien-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-07-01 --> 2024-07-20](Encounter-mii-exa-test-data-studien-encounter-1.md)

**recordedDate**: 2024-06-01

**note**: 

> 

Diabetes mellitus Typ 2 ohne Komplikationen




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-studien-diagnose-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "E11.90"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-studien-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-studien-encounter-1"
  },
  "recordedDate" : "2024-06-01",
  "note" : [{
    "text" : "Diabetes mellitus Typ 2 ohne Komplikationen"
  }]
}

```
