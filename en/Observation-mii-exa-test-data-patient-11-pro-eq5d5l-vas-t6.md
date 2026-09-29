# mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6**

## Example Observation: mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR PRO Observation EQ-5D-5L VAS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Instantiates Canonical**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas)

**identifier**: `https://www.charite.de/fhir/sid/pro-observation-id`/PRO-OBS-EQ5D-VAS-PAT11-T6

**status**: Final

**code**: EuroQol visual analogue score (observable entity)

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**focus**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Kardiologie; period = 2025-08-11 09:00:00+0200 --> 2025-08-11 10:15:00+0200](Encounter-mii-exa-test-data-patient-11-encounter-4.md)

**effective**: 2025-08-11 09:10:00+0200

**performer**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**value**: 70 1 (Details: UCUM code1 = '1')

**interpretation**: Gegenüber T0 um 25 Punkte verbessert

**method**: EuroQoL five dimension five level questionnaire

**derivedFrom**: [Response to Questionnaire '->MII QST PRO EQ-5D-5L Collectable' about '->Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))'](QuestionnaireResponse-mii-exa-test-data-patient-11-pro-eq5d5l-qr-t6.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-pro-eq5d5l-vas-t6",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-observation-eq5d5l-vas"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-score-eq5d5l-vas"
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/pro-observation-id",
    "value" : "PRO-OBS-EQ5D-VAS-PAT11-T6"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736535009",
      "display" : "EuroQol visual analogue score (observable entity)"
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
  "valueQuantity" : {
    "value" : 70,
    "unit" : "1",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }],
    "text" : "Gegenüber T0 um 25 Punkte verbessert"
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
