# MTB Diagnose Primaertumor (SCLC-Transformation) - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Diagnose Primaertumor (SCLC-Transformation)**

## Example Condition: MTB Diagnose Primaertumor (SCLC-Transformation)

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2024-09-12

**MII EX Onko Histology Morphology Behavior ICDO3**: Kleinzelliges Karzinom o.n.A.

**MII EX Onkologie Transformation von**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Oberlappen (-Bronchus)

**bodySite**: Lungenoberlappen

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**onset**: 2024-09-12

**recordedDate**: 2024-09-12

**note**: 

> 

Rebiopsie bei Progress unter Osimertinib: histologische Transformation in ein kleinzelliges Lungenkarzinom.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-mtb-diagnose-primaertumor-4",
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
    "valueDateTime" : "2024-09-12"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "8041/3",
        "display" : "Kleinzelliges Karzinom o.n.A."
      }],
      "text" : "Kleinzelliges Karzinom o.n.A."
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
    }
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "7",
      "display" : "histologische Untersuchung eines Primärtumors"
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
          "display" : "gesicherte Diagnose"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "R",
          "display" : "rechts"
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
  "onsetDateTime" : "2024-09-12",
  "recordedDate" : "2024-09-12",
  "note" : [{
    "text" : "Rebiopsie bei Progress unter Osimertinib: histologische Transformation in ein kleinzelliges Lungenkarzinom."
  }]
}

```
