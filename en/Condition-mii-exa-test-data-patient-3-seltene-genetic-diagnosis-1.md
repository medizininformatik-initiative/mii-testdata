# mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1**

## Example Condition: mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Genetic Diagnosis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Penetrance**: Incomplete penetrance

**Condition Asserted Date**: 2025-04-15

**Condition Related**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**severity**: Moderate severity

**code**: Marfan-Syndrom, genetisch bestaetigt (FBN1-Variante)

**bodySite**: Structure of cardiovascular system

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**onset**: 28 years (Details: UCUM codea = 'a')

**recordedDate**: 2025-04-15

**recorder**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**asserter**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

### Stages

| | | |
| :--- | :--- | :--- |
| - | **Assessment** | **Type** |
| * | [ClinicalImpression Community health procedure](ClinicalImpression-mii-exa-test-data-patient-3-seltene-clinical-impression-1.md) | Clinical staging |

> **evidence****code**: Genetic finding**detail**: 
* [Observation Genetic variant assessment](Observation-mii-exa-test-data-seltene-molgen-variante-1.md)
* [Diagnostic Report for 'Genetic analysis report' for '->Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)'](DiagnosticReport-mii-exa-test-data-seltene-molgen-befundbericht-1.md)

**note**: 

> 

Pathogene Variante im FBN1-Gen molekulargenetisch nachgewiesen. Diagnose genetisch gesichert. Unvollstaendige Penetranz dokumentiert.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-seltene-genetic-diagnosis-1",
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
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0003829",
        "display" : "Incomplete penetrance"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2025-04-15"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-related",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1"
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
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "Moderate severity"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "154700",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "558",
      "display" : "Marfan syndrome"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT",
          "code" : "G",
          "display" : "gesicherte Diagnose"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen",
        "valueCoding" : {
          "system" : "http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen",
          "code" : "!",
          "display" : "Ausrufezeichen"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "U",
          "display" : "unbekannt"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "Q87.4",
      "display" : "Marfan-Syndrom"
    }],
    "text" : "Marfan-Syndrom, genetisch bestaetigt (FBN1-Variante)"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "113257007",
      "display" : "Structure of cardiovascular system"
    }]
  }],
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
          "code" : "41847000",
          "display" : "Adulthood (qualifier value)"
        }]
      }
    }],
    "value" : 28,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2025-04-15",
  "recorder" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "asserter" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  },
  "stage" : [{
    "assessment" : [{
      "reference" : "ClinicalImpression/mii-exa-test-data-patient-3-seltene-clinical-impression-1"
    }],
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260998006",
        "display" : "Clinical staging"
      }]
    }
  }],
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-test-data-seltene-molgen-variante-1"
    },
    {
      "reference" : "DiagnosticReport/mii-exa-test-data-seltene-molgen-befundbericht-1"
    }]
  }],
  "note" : [{
    "text" : "Pathogene Variante im FBN1-Gen molekulargenetisch nachgewiesen. Diagnose genetisch gesichert. Unvollstaendige Penetranz dokumentiert."
  }]
}

```
