# mii-exa-test-data-patient-13-symptom-hypohidrose - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-symptom-hypohidrose**

## Example Condition: mii-exa-test-data-patient-13-symptom-hypohidrose

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2024-01-15

**identifier**: `https://www.charite.de/fhir/sid/symptom-condition`/SYMP-CON-0013-2

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Mild (qualifier value)

**code**: Vermindertes Schwitzen mit ausgepraegter Hitzeintoleranz

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Innere Medizin; period = 2024-01-15 09:00:00+0100 --> 2024-01-15 13:00:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-3.md)

**onset**: 2014 --> (ongoing)

**recordedDate**: 2024-01-15

**note**: 

> 

Nie eigenstaendig aerztlich abgeklaert; von der Patientin selbst als Eigenheit beschrieben. Typisches Fruehsymptom des Morbus Fabry.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-13-symptom-hypohidrose",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-15"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-condition",
    "value" : "SYMP-CON-0013-2"
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
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255604002",
      "display" : "Mild (qualifier value)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45004005",
      "display" : "Hypohidrosis"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "L74.4",
      "display" : "Anhidrose"
    }],
    "text" : "Vermindertes Schwitzen mit ausgepraegter Hitzeintoleranz"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-3"
  },
  "onsetPeriod" : {
    "start" : "2014",
    "_start" : {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/lebensphase",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "263659003",
            "display" : "Adolescence (qualifier value)"
          }]
        }
      }]
    }
  },
  "recordedDate" : "2024-01-15",
  "note" : [{
    "text" : "Nie eigenstaendig aerztlich abgeklaert; von der Patientin selbst als Eigenheit beschrieben. Typisches Fruehsymptom des Morbus Fabry."
  }]
}

```
