# mii-exa-test-data-kardiologie-diagnose-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-diagnose-2**

## Example Condition: mii-exa-test-data-kardiologie-diagnose-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Diagnose](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Related**: [Condition Akuter transmuraler Myokardinfarkt der Vorderwand](Condition-mii-exa-test-data-kardiologie-diagnose-1.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Hirninfarkt durch Embolie zerebraler Arterien

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2025-03-10 --> 2025-03-18](Encounter-mii-exa-test-data-kardiologie-encounter-1.md)

**onset**: 2023-08-02

**recordedDate**: 2025-03-10

**recorder**: Facharzt fuer Neurologie

**asserter**: Facharzt fuer Neurologie

**note**: 

> 

Embolischer Mediainfarkt links 08/2023 bei intermittierendem Vorhofflimmern.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-kardiologie-diagnose-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-related",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-kardiologie-diagnose-1"
    }
  }],
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
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "L",
          "display" : "links"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "I63.4",
      "display" : "Hirninfarkt durch Embolie zerebraler Arterien"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "75543006",
      "display" : "Cerebral embolism (disorder)"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
      "version" : "2027.0.0-ballot",
      "code" : "eg-cv",
      "display" : "Embolischer Gefäßverschluss cerebro-vaskulär"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-kardiologie-encounter-1"
  },
  "onsetDateTime" : "2023-08-02",
  "recordedDate" : "2025-03-10",
  "recorder" : {
    "display" : "Facharzt fuer Neurologie"
  },
  "asserter" : {
    "display" : "Facharzt fuer Neurologie"
  },
  "note" : [{
    "text" : "Embolischer Mediainfarkt links 08/2023 bei intermittierendem Vorhofflimmern."
  }]
}

```
