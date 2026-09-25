# mii-exa-test-data-biobank-diagnose-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-diagnose-3**

## Example Condition: mii-exa-test-data-biobank-diagnose-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Bösartige Neubildung: Kolon, nicht näher bezeichnet

**bodySite**: Colon structure (body structure)

**subject**: [Claudia Spender Female, DoB: 1962-05-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BIO-TEST-003)](Patient-mii-exa-test-data-biobank-patient-3.md)

**recordedDate**: 2022-03-20



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-biobank-diagnose-3",
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
      "code" : "C18.9",
      "display" : "Bösartige Neubildung: Kolon, nicht näher bezeichnet"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "version" : "2024",
      "code" : "I29723",
      "display" : "Bösartige Neubildung des Kolons o.n.A."
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "363406005",
      "display" : "Malignant tumor of colon (disorder)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "71854001",
      "display" : "Colon structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-biobank-patient-3"
  },
  "recordedDate" : "2022-03-20"
}

```
