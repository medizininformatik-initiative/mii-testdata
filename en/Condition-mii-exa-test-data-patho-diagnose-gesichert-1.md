# Gesicherte Prostatakarzinom-Diagnose nach Biopsie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gesicherte Prostatakarzinom-Diagnose nach Biopsie**

## Example Condition: Gesicherte Prostatakarzinom-Diagnose nach Biopsie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2024-01-17

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease, Encounter Diagnosis

**code**: Bösartige Neubildung der Prostata

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --> 2024-02-20](Encounter-mii-exa-test-data-patho-encounter-1.md)

**onset**: 2024-01-17

**recordedDate**: 2024-01-17

### Stages

| | | |
| :--- | :--- | :--- |
| - | **Summary** | **Type** |
| * | IIA (AJCC) | Clinical staging (qualifier value) |

**note**: 

> 

Prostatakarzinom mit ISUP Grade Group 2 (Gleason 3+4=7), nachgewiesen in 1 von 2 Stanzen (rechts lateral basal). Klinisches Stadium cT2a cN0 cM0. Intermediäres Risiko nach D'Amico.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patho-diagnose-gesichert-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-17"
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
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "55342001",
      "display" : "Neoplastic disease"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "C61",
      "display" : "Bösartige Neubildung der Prostata"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "126906006",
      "display" : "Neoplasm of prostate (disorder)"
    },
    {
      "system" : "http://id.who.int/icd/release/10",
      "code" : "C61",
      "display" : "Malignant neoplasm of prostate"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "2C82",
      "display" : "Malignant neoplasms of prostate"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
  },
  "onsetDateTime" : "2024-01-17",
  "recordedDate" : "2024-01-17",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1222766008",
        "display" : "IIA (AJCC)"
      }]
    },
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260998006",
        "display" : "Clinical staging (qualifier value)"
      }]
    }
  }],
  "note" : [{
    "text" : "Prostatakarzinom mit ISUP Grade Group 2 (Gleason 3+4=7), nachgewiesen in 1 von 2 Stanzen (rechts lateral basal). Klinisches Stadium cT2a cN0 cM0. Intermediäres Risiko nach D'Amico."
  }]
}

```
