# mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2**

## Example Condition: mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Genetic Diagnosis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 1995-03-01

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Transienter neonataler Diabetes mellitus (6q24), remittiert

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**onset**: 2 Wochen (Details: UCUM codewk = 'wk')

**abatement**: 9 Monate (Details: UCUM codemo = 'mo')

**recordedDate**: 2025-04-15

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Genetic finding | [Diagnostic Report for 'Genetic analysis report' for '->Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)'](DiagnosticReport-mii-exa-test-data-seltene-molgen-befundbericht-1.md) |

**note**: 

> 

Anamnestisch transienter neonataler Diabetes mellitus, unter Insulintherapie im Saeuglingsalter remittiert.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-seltene-genetic-diagnosis-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "1995-03-01"
  }],
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
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "782964007",
      "display" : "Genetic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "609569007",
      "display" : "Diabetes mellitus due to genetic defect in beta cell function (disorder)"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "99886",
      "display" : "Transient neonatal diabetes mellitus"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "P70.2",
      "display" : "Diabetes mellitus beim Neugeborenen"
    }],
    "text" : "Transienter neonataler Diabetes mellitus (6q24), remittiert"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "onsetAge" : {
    "extension" : [{
      "url" : "http://fhir.de/StructureDefinition/lebensphase",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255407002",
          "display" : "Neonatal (qualifier value)"
        }]
      }
    }],
    "value" : 2,
    "unit" : "Wochen",
    "system" : "http://unitsofmeasure.org",
    "code" : "wk"
  },
  "abatementAge" : {
    "extension" : [{
      "url" : "http://fhir.de/StructureDefinition/lebensphase",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "3658006",
          "display" : "Infancy (qualifier value)"
        }]
      }
    }],
    "value" : 9,
    "unit" : "Monate",
    "system" : "http://unitsofmeasure.org",
    "code" : "mo"
  },
  "recordedDate" : "2025-04-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "DiagnosticReport/mii-exa-test-data-seltene-molgen-befundbericht-1"
    }]
  }],
  "note" : [{
    "text" : "Anamnestisch transienter neonataler Diabetes mellitus, unter Insulintherapie im Saeuglingsalter remittiert."
  }]
}

```
