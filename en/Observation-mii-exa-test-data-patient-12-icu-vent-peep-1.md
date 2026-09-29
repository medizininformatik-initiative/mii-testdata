# mii-exa-test-data-patient-12-icu-vent-peep-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-icu-vent-peep-1**

## Example Observation: mii-exa-test-data-patient-12-icu-vent-peep-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Positiv Endexpiratorischer Druck](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-positiv-endexpiratorischer-druck)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-vent-peep-12-1

**partOf**: [Procedure Controlled ventilation (procedure)](Procedure-mii-exa-test-data-patient-12-icu-beatmung-1.md)

**status**: Final

**category**: Artificial ventilation (regime/therapy)

**code**: Positive end expiratory pressure (observable entity)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-09 06:00:00+0100

**issued**: 2025-03-09 06:05:00+0100

**value**: 12 cmH2O (Details: UCUM codecm[H2O] = 'cm[H2O]')

**device**: [DeviceMetric: type = Artificial ventilation (regime/therapy); category = measurement](DeviceMetric-mii-exa-test-data-patient-12-icu-dm-vent.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-icu-vent-peep-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-positiv-endexpiratorischer-druck"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-vent-peep-12-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-12-icu-beatmung-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "40617009",
      "display" : "Artificial ventilation (regime/therapy)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "250854009",
      "display" : "Positive end expiratory pressure (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "76248-4",
      "display" : "PEEP Respiratory system --on ventilator"
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "code" : "151976",
      "display" : "Positive end expiratory pressure applied to the airway."
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-09T06:00:00+01:00",
  "issued" : "2025-03-09T06:05:00+01:00",
  "valueQuantity" : {
    "value" : 12,
    "unit" : "cmH2O",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm[H2O]"
  },
  "device" : {
    "reference" : "DeviceMetric/mii-exa-test-data-patient-12-icu-dm-vent"
  }
}

```
