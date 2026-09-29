# mii-exa-test-data-symptom-observation-5 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-observation-5**

## Example Observation: mii-exa-test-data-symptom-observation-5

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Observation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/symptom-observation`/SYMP-OBS-0005

**status**: Final

**category**: Exam

**code**: Symptom

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**effective**: 2025-03-04

**issued**: 2025-03-04 11:20:00+0100

**value**: Rotverfaerbter Urin, vom Patienten berichtet und im Mittelstrahlurin bestaetigt

**interpretation**: Abnormal

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/symptom-specimen#SYMP-SPEC-0001; status = available; type = Urine specimen; receivedTime = 2025-03-04 10:15:00+0100](Specimen-mii-exa-test-data-symptom-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-symptom-observation-5",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-observation",
    "value" : "SYMP-OBS-0005"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam",
      "display" : "Exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "75325-1",
      "display" : "Symptom"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "effectiveDateTime" : "2025-03-04",
  "issued" : "2025-03-04T11:20:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "34436003",
      "display" : "Haematuria"
    }],
    "text" : "Rotverfaerbter Urin, vom Patienten berichtet und im Mittelstrahlurin bestaetigt"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-symptom-specimen-1"
  }
}

```
