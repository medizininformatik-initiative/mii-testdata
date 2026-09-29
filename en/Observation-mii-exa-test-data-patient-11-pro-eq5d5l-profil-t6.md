# mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6**

## Example Observation: mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation EQ-5D-5L Profile](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-profile)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-profile)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-EQ5D-PROF-PAT11-T6

**status**: Final

**code**: EuroQol EQ-5D-5L Profile

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**focus**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --> 2025-08-11 10:15:00+0200](Encounter-mii-exa-test-data-patient-11-encounter-4.md)

**effective**: 2025-08-11 09:10:00+0200

**performer**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**value**: 22121

**interpretation**: Alltagstätigkeiten und Stimmung ohne Einschränkung

**note**: 

> 

Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=1, Schmerz=2, Angst/Niedergeschlagenheit=1


**method**: EuroQoL five dimension five level questionnaire

**derivedFrom**: [Response to Questionnaire '->MII QST PRO EQ-5D-5L Collectable' about '->Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'](QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-profil-t6",
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
    "value" : "PRO-OBS-EQ5D-PROF-PAT11-T6"
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
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-4"
  },
  "effectiveDateTime" : "2025-08-11T09:10:00+02:00",
  "performer" : [{
    "reference" : "Patient/mii-exa-test-data-patient-11"
  }],
  "valueString" : "22121",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }],
    "text" : "Alltagstätigkeiten und Stimmung ohne Einschränkung"
  }],
  "note" : [{
    "text" : "Profil: Mobilität=2, Selbstversorgung=2, Alltagstätigkeiten=1, Schmerz=2, Angst/Niedergeschlagenheit=1"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73041000052103",
      "display" : "EuroQoL five dimension five level questionnaire"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6"
  }]
}

```
