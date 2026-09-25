# mii-exa-test-data-patient-3-seltene-clinical-impression-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-clinical-impression-1**

## Example ClinicalImpression: mii-exa-test-data-patient-3-seltene-clinical-impression-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII Profile SE Clinical Impression](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/seltene-clinical-impression`/SE-CI-2025-001

**status**: Completed

**code**: Community health procedure

**description**: Marfan-Sprechstunde: Erstvorstellung zur Abklaerung erblicher Bindegewebserkrankung

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**effective**: 2025-03-10

**date**: 2025-03-10

**problem**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)

> **investigation****code**: Klinische Untersuchung und Bildgebung**item**: 
* [Observation Aortic root aneurysm](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-1.md)
* [Observation Ectopia lentis](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-3.md)
* [Observation Tall stature](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-4.md)

**summary**: Patient mit V.a. Marfan-Syndrom vorgestellt. Aortenwurzeldilatation und Linsensubluxation nachgewiesen. Ghent-Kriterien erfuellt. Genetische Testung veranlasst.

> **finding****itemCodeableConcept**: Aortic root aneurysm**itemReference**: [Observation Aortic root aneurysm](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-1.md)

> **finding****itemCodeableConcept**: Ectopia lentis**itemReference**: [Observation Ectopia lentis](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-3.md)

> **finding****itemCodeableConcept**: Tall stature**itemReference**: [Observation Tall stature](Observation-mii-exa-test-data-patient-3-seltene-hpo-assessment-4.md)

**supportingInfo**: 

* [Diagnostic Report for 'Genetic analysis report' for '->Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)'](DiagnosticReport-mii-exa-test-data-seltene-molgen-befundbericht-1.md)
* [Condition Tall stature](Condition-mii-exa-test-data-patient-3-seltene-symptom-condition-1.md)

**note**: , 

> 

Erstvorstellung in der Marfan-Sprechstunde. Klinische Diagnose gesichert, molekulargenetische Bestaetigung ausstehend.


> 

Therapieplan erstellt: Losartan 50mg taeglich, jaehrliche Echokardiographie.




## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-test-data-patient-3-seltene-clinical-impression-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/seltene-clinical-impression",
    "value" : "SE-CI-2025-001"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "389067005",
      "display" : "Community health procedure"
    }]
  },
  "description" : "Marfan-Sprechstunde: Erstvorstellung zur Abklaerung erblicher Bindegewebserkrankung",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "effectiveDateTime" : "2025-03-10",
  "date" : "2025-03-10",
  "problem" : [{
    "reference" : "Condition/mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1"
  }],
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271336007",
        "display" : "Examination / signs"
      }],
      "text" : "Klinische Untersuchung und Bildgebung"
    },
    "item" : [{
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-1"
    },
    {
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-3"
    },
    {
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-4"
    }]
  }],
  "summary" : "Patient mit V.a. Marfan-Syndrom vorgestellt. Aortenwurzeldilatation und Linsensubluxation nachgewiesen. Ghent-Kriterien erfuellt. Genetische Testung veranlasst.",
  "finding" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002616",
        "display" : "Aortic root aneurysm"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-1"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001083",
        "display" : "Ectopia lentis"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-3"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000098",
        "display" : "Tall stature"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/mii-exa-test-data-patient-3-seltene-hpo-assessment-4"
    }
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-seltene-molgen-befundbericht-1"
  },
  {
    "reference" : "Condition/mii-exa-test-data-patient-3-seltene-symptom-condition-1"
  }],
  "note" : [{
    "text" : "Erstvorstellung in der Marfan-Sprechstunde. Klinische Diagnose gesichert, molekulargenetische Bestaetigung ausstehend."
  },
  {
    "text" : "Therapieplan erstellt: Losartan 50mg taeglich, jaehrliche Echokardiographie."
  }]
}

```
