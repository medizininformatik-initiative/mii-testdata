# mii-exa-test-data-patient-13-symptom-obs-hitzeintoleranz - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-symptom-obs-hitzeintoleranz**

## Example Observation: mii-exa-test-data-patient-13-symptom-obs-hitzeintoleranz

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Observation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Supporting info**: [Condition Hypohidrosis](Condition-mii-exa-test-data-patient-13-symptom-hypohidrose.md)

**identifier**: `https://www.charite.de/fhir/sid/symptom-observation`/SYMP-OBS-0013-2

**status**: Final

**category**: Exam

**code**: Symptom

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Innere Medizin; period = 2024-01-15 09:00:00+0100 --> 2024-01-15 13:00:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-3.md)

**effective**: 2024-01-15

**issued**: 2024-01-15 09:45:00+0100

**value**: Ausgepraegte Hitzeintoleranz, Meidung von Sport und Sauna

**interpretation**: Abnormal

**method**: History taking



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-13-symptom-obs-hitzeintoleranz",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
    "valueReference" : {
      "reference" : "Condition/mii-exa-test-data-patient-13-symptom-hypohidrose"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-observation",
    "value" : "SYMP-OBS-0013-2"
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
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-3"
  },
  "effectiveDateTime" : "2024-01-15",
  "issued" : "2024-01-15T09:45:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0002046",
      "display" : "Heat intolerance"
    }],
    "text" : "Ausgepraegte Hitzeintoleranz, Meidung von Sport und Sauna"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84100007",
      "display" : "History taking"
    }]
  }
}

```
