# mii-exa-test-data-patient-13-seltene-diagnose-genetisch - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-seltene-diagnose-genetisch**

## Example Condition: mii-exa-test-data-patient-13-seltene-diagnose-genetisch

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Genetic Diagnosis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2023-12-08

**Condition Related**: [Condition Fabry's disease](Condition-mii-exa-test-data-patient-13-seltene-diagnose-klinisch.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Morbus Fabry, molekulargenetisch gesichert (GLA, heterozygot)

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Sonstige Fachabteilung; period = 2023-12-08 09:00:00+0100 --> 2023-12-08 10:45:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-2.md)

**recordedDate**: 2023-12-08

**recorder**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Heterozygote pathogene Variante im GLA-Gen (Sanger-Sequenzierung) | [Observation Genetic variant assessment](Observation-mii-exa-test-data-patient-13-molgen-variante.md) |

**note**: 

> 

Sanger-Sequenzierung des GLA-Gens: heterozygote pathogene Variante. X-chromosomaler Erbgang, daher Kaskadenscreening der Familie eingeleitet.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-13-seltene-diagnose-genetisch",
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
    "valueDateTime" : "2023-12-08"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-related",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-patient-13-seltene-diagnose-klinisch"
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
      "code" : "16652001",
      "display" : "Fabry's disease"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "324",
      "display" : "Fabry disease"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "E75.2",
      "display" : "Sonstige Sphingolipidosen"
    }],
    "text" : "Morbus Fabry, molekulargenetisch gesichert (GLA, heterozygot)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-2"
  },
  "recordedDate" : "2023-12-08",
  "recorder" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  },
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }],
      "text" : "Heterozygote pathogene Variante im GLA-Gen (Sanger-Sequenzierung)"
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-13-molgen-variante"
    }]
  }],
  "note" : [{
    "text" : "Sanger-Sequenzierung des GLA-Gens: heterozygote pathogene Variante. X-chromosomaler Erbgang, daher Kaskadenscreening der Familie eingeleitet."
  }]
}

```
