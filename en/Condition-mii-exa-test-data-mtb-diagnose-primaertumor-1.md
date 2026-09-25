# MTB Diagnose Primaertumor - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Diagnose Primaertumor**

## Example Condition: MTB Diagnose Primaertumor

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2024-01-05

**MII EX Onko Histology Morphology Behavior ICDO3**: Adenokarzinom o.n.A.

**Condition Due To**: Smoker (finding)

**Condition Occurred Following**: Chronic disease of respiratory system (disorder)

**Condition Related**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-2.md)

**identifier**: `https://www.charite.de/fhir/sid/mtb-diagnose`/DIAG-2024-001

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Oberlappen (-Bronchus)

**bodySite**: Lungenoberlappen

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**onset**: 2023-12-15

**recordedDate**: 2024-01-05

> **stage****assessment**: [Observation Tumor stage](Observation-mii-exa-test-data-mtb-tumorausbreitung-1.md)**type**: Stage at Diagnosis

> **stage****assessment**: [Observation Histologic grade of neoplasm (observable entity)](Observation-mii-exa-test-data-mtb-oncotree-1.md)**type**: Histologic type of proliferative mass

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Cough (finding) | [List for 'Unspecified List Type' for '->Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)'](List-mii-exa-test-data-mtb-evidenz-liste-1.md) |

**note**: 

> 

Erstdiagnose eines EGFR-mutierten NSCLC des rechten Oberlappens.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-mtb-diagnose-primaertumor-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-05"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "8140/3",
        "display" : "Adenocarcinoma, NOS"
      }],
      "text" : "Adenokarzinom o.n.A."
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "77176002",
        "display" : "Smoker (finding)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "65958008",
        "display" : "Chronic disease of respiratory system (disorder)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-related",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-2"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-diagnose",
    "value" : "DIAG-2024-001"
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
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "7"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "55342001",
      "display" : "Neoplastic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT",
          "code" : "G",
          "display" : "Gesicherte Diagnose"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "R",
          "display" : "rechts"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen",
        "valueCoding" : {
          "system" : "http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen",
          "code" : "!"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C34.1",
      "display" : "Bösartige Neubildung: Oberlappen (-Bronchus)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C34.1",
      "display" : "Lungenoberlappen"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "45653009",
      "display" : "Structure of upper lobe of lung (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "onsetDateTime" : "2023-12-15",
  "recordedDate" : "2024-01-05",
  "stage" : [{
    "assessment" : [{
      "reference" : "Observation/mii-exa-test-data-mtb-tumorausbreitung-1"
    }],
    "type" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C19251",
        "display" : "Stage at Diagnosis"
      }]
    }
  },
  {
    "assessment" : [{
      "reference" : "Observation/mii-exa-test-data-mtb-oncotree-1"
    }],
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "371441004",
        "display" : "Histologic type of proliferative mass"
      }]
    }
  }],
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "49727002",
        "display" : "Cough (finding)"
      }]
    }],
    "detail" : [{
      "reference" : "List/mii-exa-test-data-mtb-evidenz-liste-1"
    }]
  }],
  "note" : [{
    "text" : "Erstdiagnose eines EGFR-mutierten NSCLC des rechten Oberlappens."
  }]
}

```
