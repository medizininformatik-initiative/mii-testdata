# mii-exa-test-data-dokument-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-dokument-diagnose-1**

## Example Condition: mii-exa-test-data-dokument-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Pneumonie, nicht näher bezeichnet

**subject**: [Maria Beispiel Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)](Patient-mii-exa-test-data-dokument-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-10](Encounter-mii-exa-test-data-dokument-encounter-1.md)

**recordedDate**: 2024-04-01

**note**: 

> 

Pneumonie nicht naeher bezeichnet




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-dokument-diagnose-1",
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
      "code" : "J18.9"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-dokument-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-dokument-encounter-1"
  },
  "recordedDate" : "2024-04-01",
  "note" : [{
    "text" : "Pneumonie nicht naeher bezeichnet"
  }]
}

```
