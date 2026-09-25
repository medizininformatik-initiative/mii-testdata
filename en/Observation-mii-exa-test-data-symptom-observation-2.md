# mii-exa-test-data-symptom-observation-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-symptom-observation-2**

## Example Observation: mii-exa-test-data-symptom-observation-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII_PR_Symptom_Observation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/symptom-observation`/SYMP-OBS-0002

**status**: Final

**category**: Survey

**code**: Pain severity - 0-10 verbal numeric rating [Score] - Reported

**subject**: [Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)](Patient-mii-exa-test-data-symptom-patient-1.md)

**effective**: 2025-03-03

**issued**: 2025-03-04 10:30:00+0100

**value**: 6

**device**: [Device: status = active; type = Application program software](Device-mii-exa-test-data-symptom-device-1.md)

### ReferenceRanges

| | |
| :--- | :--- |
| - | **Text** |
| * | 0 (kein Schmerz) bis 10 (staerkster vorstellbarer Schmerz) |

**derivedFrom**: [Response to Questionnaire 'Unspecified Questionnaire' about '->Helene Symptomatika Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)'](QuestionnaireResponse-mii-exa-test-data-symptom-questionnaireresponse-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-symptom-observation-2",
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
    "value" : "SYMP-OBS-0002"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
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
    "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
  },
  "effectiveDateTime" : "2025-03-03",
  "issued" : "2025-03-04T10:30:00+01:00",
  "valueInteger" : 6,
  "device" : {
    "reference" : "Device/mii-exa-test-data-symptom-device-1"
  },
  "referenceRange" : [{
    "text" : "0 (kein Schmerz) bis 10 (staerkster vorstellbarer Schmerz)"
  }],
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-symptom-questionnaireresponse-1"
  }]
}

```
