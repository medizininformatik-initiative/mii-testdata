# mii-exa-test-data-patient-7-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-diagnose-1**

## Example Condition: mii-exa-test-data-patient-7-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**code**: Akute Bronchitis

**bodySite**: Bronchial structure (body structure)

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**abatement**: 2024-01-20

**recordedDate**: 2024-01-08

**note**: 

> 

Akute Bronchitis, nicht näher bezeichnet




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-7-diagnose-1",
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
      "code" : "resolved"
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
      "code" : "J20.9"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "version" : "2024",
      "code" : "I25780",
      "display" : "Akute Bronchitis"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "10509002",
      "display" : "Acute bronchitis (disorder)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "955009",
      "display" : "Bronchial structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "abatementDateTime" : "2024-01-20",
  "recordedDate" : "2024-01-08",
  "note" : [{
    "text" : "Akute Bronchitis, nicht näher bezeichnet"
  }]
}

```
