# mii-exa-test-data-patient-3-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-diagnose-1**

## Example Condition: mii-exa-test-data-patient-3-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Bösartige anorektale Neubildung

**bodySite**: Structure of anus and/or rectum (body structure)

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**recordedDate**: 2022-04-02

**note**: 

> 

Bösartige anorektale Neubildung




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-diagnose-1",
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
      "version" : "2022",
      "code" : "C21.8"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "version" : "2022",
      "code" : "I29975",
      "display" : "Bösartige anorektale Neubildung"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "447886005",
      "display" : "Adenocarcinoma of anorectum (disorder)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "281088000",
      "display" : "Structure of anus and/or rectum (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "recordedDate" : "2022-04-02",
  "note" : [{
    "text" : "Bösartige anorektale Neubildung"
  }]
}

```
