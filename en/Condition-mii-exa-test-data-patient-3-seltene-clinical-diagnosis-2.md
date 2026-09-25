# mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2**

## Example Condition: mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Clinical Diagnosis](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2023-05-04

**Condition Related**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Linsenluxation beidseits bei Marfan-Syndrom, nach Lensektomie behoben

**bodySite**: Structure of crystalline lens (body structure)

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**onset**: 25 Jahre (Details: UCUM codea = 'a')

**abatement**: 29 Jahre (Details: UCUM codea = 'a')

**recordedDate**: 2023-05-04

**note**: 

> 

Beidseitige Linsenluxation, operativ versorgt (Lensektomie mit IOL); seither behoben.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-3-seltene-clinical-diagnosis-2",
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
    "valueDateTime" : "2023-05-04"
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
      "code" : "resolved"
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
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "77638001",
      "display" : "Ectopia lentis (disorder)"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "B",
          "display" : "beiderseits"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2023",
      "code" : "H27.1",
      "display" : "Linsenluxation"
    }],
    "text" : "Linsenluxation beidseits bei Marfan-Syndrom, nach Lensektomie behoben"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "78076003",
      "display" : "Structure of crystalline lens (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "onsetAge" : {
    "value" : 25,
    "unit" : "Jahre",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "abatementAge" : {
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
    "value" : 29,
    "unit" : "Jahre",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2023-05-04",
  "note" : [{
    "text" : "Beidseitige Linsenluxation, operativ versorgt (Lensektomie mit IOL); seither behoben."
  }]
}

```
