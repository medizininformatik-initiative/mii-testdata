# mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0**

## Example Observation: mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation EQ-5D-5L Profile](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-EQ5D-PROF-PAT11-T0

**status**: Final

**code**: EuroQol EQ-5D-5L Profile

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**focus**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-02-10 09:00:00+0100 --> 2025-02-10 11:30:00+0100](Encounter-mii-exa-test-data-patient-11-encounter-2.md)

**effective**: 2025-02-10 09:20:00+0100

**performer**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**value**: 33232

**interpretation**: Mäßige Einschränkung in Mobilität, Selbstversorgung und Schmerz

**note**: 

> 

Profil: Mobilität=3, Selbstversorgung=3, Alltagstätigkeiten=2, Schmerz=3, Angst/Niedergeschlagenheit=2


**method**: EuroQoL five dimension five level questionnaire

**derivedFrom**: [Response to Questionnaire '->MII QST PRO EQ-5D-5L Collectable' about '->Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'](QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-profil-t0",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-EQ5D-PROF-PAT11-T0"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/CodeSystem/mii-cs-pro-score-catalogue",
      "code" : "euroqol-eq5d5l-profile",
      "display" : "EuroQol EQ-5D-5L Profile"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-2"
  },
  "effectiveDateTime" : "2025-02-10T09:20:00+01:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-patient-11"
  }],
  "valueString" : "33232",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }],
    "text" : "Mäßige Einschränkung in Mobilität, Selbstversorgung und Schmerz"
  }],
  "note" : [{
    "text" : "Profil: Mobilität=3, Selbstversorgung=3, Alltagstätigkeiten=2, Schmerz=3, Angst/Niedergeschlagenheit=2"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73041000052103",
      "display" : "EuroQoL five dimension five level questionnaire"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t0"
  }]
}

```
