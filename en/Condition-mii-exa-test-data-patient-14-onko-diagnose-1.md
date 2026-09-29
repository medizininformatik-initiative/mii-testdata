# mii-exa-test-data-patient-14-onko-diagnose-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-diagnose-1**

## Example Condition: mii-exa-test-data-patient-14-onko-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Diagnose Primärtumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2024-03-06

**MII EX Onko Histology Morphology Behavior ICDO3**: Mäßig differenziertes Adenokarzinom

**identifier**: `https://www.charite.de/fhir/sid/onko-diagnose`/ONKO-DIAG-2024-014

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Colon sigmoideum

**bodySite**: Colon sigmoideum

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Allgemeine Chirurgie; period = 2024-03-11 --> 2024-03-22](Encounter-mii-exa-test-data-patient-14-encounter-1.md)

**recordedDate**: 2024-03-06



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-14-onko-diagnose-1",
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
    "valueDateTime" : "2024-03-06"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "code" : "8140/3",
        "display" : "Adenokarzinom o.n.A."
      }],
      "text" : "Mäßig differenziertes Adenokarzinom"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/onko-diagnose",
    "value" : "ONKO-DIAG-2024-014"
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
          "display" : "gesicherte Diagnose"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C18.7",
      "display" : "Bösartige Neubildung: Colon sigmoideum"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C18.7",
      "display" : "Colon sigmoideum"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "60184004",
      "display" : "Sigmoid colon structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-1"
  },
  "recordedDate" : "2024-03-06"
}

```
