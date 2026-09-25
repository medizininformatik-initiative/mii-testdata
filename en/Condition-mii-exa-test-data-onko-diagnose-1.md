# mii-exa-test-data-onko-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-diagnose-1**

## Example Condition: mii-exa-test-data-onko-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2021-06-10

**Condition Occurred Following**: [Condition Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse](Condition-mii-exa-test-data-onko-fruehere-tumorerkrankung-1.md)

**MII EX Onko Histology Morphology Behavior ICDO3**: High-grade seröses Karzinom

**Condition Due To**: Hereditary breast and ovarian cancer syndrome (disorder)

**Condition Related**: [Condition Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse](Condition-mii-exa-test-data-onko-diagnose-2.md)

**identifier**: `https://www.charite.de/fhir/sid/onko-diagnose`/ONKO-DIAG-2021-001

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartige Neubildung des Ovars

**bodySite**: Links

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**recordedDate**: 2021-06-15

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Abdominal pain (finding) | [List for 'Unspecified List Type' for '->Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)'](List-mii-exa-test-data-onko-liste-evidenz-1.md) |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-onko-diagnose-1",
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
    "valueDateTime" : "2021-06-10"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-onko-fruehere-tumorerkrankung-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "8461/3",
        "display" : "Seröses Oberflächenpapillom"
      }],
      "text" : "High-grade seröses Karzinom"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "726019003",
        "display" : "Hereditary breast and ovarian cancer syndrome (disorder)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-related",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-onko-diagnose-2"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/onko-diagnose",
    "value" : "ONKO-DIAG-2021-001"
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
          "display" : "Gesicherte Diagnose"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "L",
          "display" : "links"
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
      "version" : "2021",
      "code" : "C56",
      "display" : "Bösartige Neubildung des Ovars"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
      "code" : "L",
      "display" : "Links"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C56.9",
      "display" : "Ovar"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "15497006",
      "display" : "Ovarian structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "recordedDate" : "2021-06-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "21522001",
        "display" : "Abdominal pain (finding)"
      }]
    }],
    "detail" : [{
      "reference" : "List/mii-exa-test-data-onko-liste-evidenz-1"
    }]
  }]
}

```
