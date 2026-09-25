# mii-exa-test-data-patient-8-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-8-diagnose-1**

## Example Condition: mii-exa-test-data-patient-8-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Chronische ischämische Herzkrankheit

**bodySite**: Heart structure (body structure)

**subject**: [Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-8.md)

**recordedDate**: 2023-11-10

**note**: 

> 

Chronische ischämische Herzkrankheit, nicht näher bezeichnet




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-8-diagnose-1",
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
      "version" : "2023",
      "code" : "I25.9"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "version" : "2023",
      "code" : "I26852",
      "display" : "Chronische ischämische Herzkrankheit"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "413838009",
      "display" : "Chronic ischemic heart disease (disorder)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80891009",
      "display" : "Heart structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "recordedDate" : "2023-11-10",
  "note" : [{
    "text" : "Chronische ischämische Herzkrankheit, nicht näher bezeichnet"
  }]
}

```
