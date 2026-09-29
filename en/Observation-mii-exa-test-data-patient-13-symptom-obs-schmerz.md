# mii-exa-test-data-patient-13-symptom-obs-schmerz - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-symptom-obs-schmerz**

## Example Observation: mii-exa-test-data-patient-13-symptom-obs-schmerz

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Observation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Supporting info**: [Condition Paresthesia](Condition-mii-exa-test-data-patient-13-symptom-akroparaesthesie.md)

**identifier**: `https://www.charite.de/fhir/sid/symptom-observation`/SYMP-OBS-0013-1

**status**: Final

**category**: Exam

**code**: Pain severity - 0-10 verbal numeric rating [Score] - Reported

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Innere Medizin; period = 2024-01-15 09:00:00+0100 --> 2024-01-15 13:00:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-3.md)

**effective**: 2024-01-15

**issued**: 2024-01-15 09:40:00+0100

**value**: 7 {score} (Details: UCUM code{score} = '{score}')

**interpretation**: Abnormal

**method**: History taking

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Frequency (attribute) | Krisenartige Schmerzattacken etwa zweimal monatlich, ausgeloest durch Hitze und koerperliche Belastung |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-13-symptom-obs-schmerz",
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
      "reference" : "Condition/mii-exa-test-data-patient-13-symptom-akroparaesthesie"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/symptom-observation",
    "value" : "SYMP-OBS-0013-1"
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
      "code" : "72514-3",
      "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-3"
  },
  "effectiveDateTime" : "2024-01-15",
  "issued" : "2024-01-15T09:40:00+01:00",
  "valueQuantity" : {
    "value" : 7,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
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
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260864003",
        "display" : "Frequency (attribute)"
      }]
    },
    "valueString" : "Krisenartige Schmerzattacken etwa zweimal monatlich, ausgeloest durch Hitze und koerperliche Belastung"
  }]
}

```
