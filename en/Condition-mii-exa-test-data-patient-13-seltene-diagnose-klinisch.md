# mii-exa-test-data-patient-13-seltene-diagnose-klinisch - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-seltene-diagnose-klinisch**

## Example Condition: mii-exa-test-data-patient-13-seltene-diagnose-klinisch

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Clinical Diagnosis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2023-12-08

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**severity**: Moderate (severity modifier)

**code**: Morbus Fabry (Alpha-Galaktosidase-A-Mangel), heterozygot

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Sonstige Fachabteilung; period = 2023-12-08 09:00:00+0100 --> 2023-12-08 10:45:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-2.md)

**onset**: 22 years (Details: UCUM codea = 'a')

**recordedDate**: 2023-12-08

**recorder**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**asserter**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

> **evidence****code**: Acroparesthesia**detail**: [Observation Acroparesthesia](Observation-mii-exa-test-data-patient-13-hpo-akroparaesthesie.md)

> **evidence****code**: Hypohidrosis**detail**: [Observation Hypohidrosis](Observation-mii-exa-test-data-patient-13-hpo-hypohidrose.md)

> **evidence****code**: Proteinuria**detail**: [Observation Proteinuria](Observation-mii-exa-test-data-patient-13-hpo-proteinurie.md)

> **evidence****code**: Corneal opacity**detail**: [Observation Corneal opacity](Observation-mii-exa-test-data-patient-13-hpo-cornea.md)

**note**: 

> 

Diagnostische Latenz 12 Jahre (Erstsymptom 2011, Diagnose 2023-12-08). Ausloeser der Abklaerung war die Proteinurie, nicht die seit der Jugend bestehenden Schmerzattacken.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-13-seltene-diagnose-klinisch",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2023-12-08"
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
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "Moderate (severity modifier)"
    }]
  },
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
      "code" : "E75.2",
      "display" : "Sonstige Sphingolipidosen"
    }],
    "text" : "Morbus Fabry (Alpha-Galaktosidase-A-Mangel), heterozygot"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-2"
  },
  "onsetAge" : {
    "value" : 22,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2023-12-08",
  "recorder" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "asserter" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  },
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0031006",
        "display" : "Acroparesthesia"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-13-hpo-akroparaesthesie"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000966",
        "display" : "Hypohidrosis"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-13-hpo-hypohidrose"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000093",
        "display" : "Proteinuria"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-13-hpo-proteinurie"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0007957",
        "display" : "Corneal opacity"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-patient-13-hpo-cornea"
    }]
  }],
  "note" : [{
    "text" : "Diagnostische Latenz 12 Jahre (Erstsymptom 2011, Diagnose 2023-12-08). Ausloeser der Abklaerung war die Proteinurie, nicht die seit der Jugend bestehenden Schmerzattacken."
  }]
}

```
