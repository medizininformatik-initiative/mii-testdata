# mii-exa-test-data-patient-13-seltene-therapieplan - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-seltene-therapieplan**

## Example CarePlan: mii-exa-test-data-patient-13-seltene-therapieplan

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Therapieplan](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Plan

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Innere Medizin; period = 2024-01-15 09:00:00+0100 --> 2024-01-15 13:00:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-3.md)

**period**: 2024-01-15 --> (ongoing)

**created**: 2024-01-15

**author**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**addresses**: [Condition Fabry's disease](Condition-mii-exa-test-data-patient-13-seltene-diagnose-klinisch.md)

### Activities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000041; status = active; intent = order; medication[x] = ->Medication Agalsidase beta; authoredOn = 2024-01-15 11:00:00+0100; note = Erste Infusion am 15.01.2024 unter stationaerer Ueberwachung wegen moeglicher Infusionsreaktionen; danach alle 14 Tage ambulant.](MedicationRequest-mii-exa-test-data-patient-13-medrequest-1.md) |

**note**: 

> 

Enzymersatztherapie mit Agalsidase beta alle zwei Wochen; nephrologische Verlaufskontrolle vierteljaehrlich; kardiologisches und neurologisches Screening jaehrlich.




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-patient-13-seltene-therapieplan",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-3"
  },
  "period" : {
    "start" : "2024-01-15"
  },
  "created" : "2024-01-15",
  "author" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-patient-13-seltene-diagnose-klinisch"
  }],
  "activity" : [{
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-test-data-patient-13-medrequest-1"
    }
  }],
  "note" : [{
    "text" : "Enzymersatztherapie mit Agalsidase beta alle zwei Wochen; nephrologische Verlaufskontrolle vierteljaehrlich; kardiologisches und neurologisches Screening jaehrlich."
  }]
}

```
