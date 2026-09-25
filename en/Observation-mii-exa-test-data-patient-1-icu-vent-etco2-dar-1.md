# mii-exa-test-data-patient-1-icu-vent-etco2-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-vent-etco2-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-vent-etco2-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Endexpiratorischer Kohlendioxidpartialdruck](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-vent-etco2-dar-1

**partOf**: [Procedure Controlled ventilation (procedure)](Procedure-mii-exa-test-data-patient-1-icu-vent-beatmung-1.md)

**status**: Final

**category**: Artificial ventilation (regime/therapy)

**code**: End tidal carbon dioxide tension (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-07 06:00:00+0200

**issued**: 2024-05-07 06:10:00+0200

**dataAbsentReason**: Not Performed

**note**: 

> 

Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert.


**device**: [DeviceMetric: type = Artificial ventilation (regime/therapy); category = measurement](DeviceMetric-mii-exa-test-data-patient-1-icu-vent-dm-param-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-vent-etco2-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-vent-etco2-dar-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-1-icu-vent-beatmung-1"
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
      "code" : "250790007",
      "display" : "End tidal carbon dioxide tension (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "19891-1",
      "display" : "Carbon dioxide^at end expiration"
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "code" : "151708",
      "display" : "Partial pressure of carbon dioxide in airway gas measured at the end of expiration."
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-07T06:00:00+02:00",
  "issued" : "2024-05-07T06:10:00+02:00",
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "not-performed",
      "display" : "Not Performed"
    }]
  },
  "note" : [{
    "text" : "Nicht erhoben: Patientin war am 07.05.2024 um 06:00 Uhr fuer den Spontanatmungsversuch am T-Stueck vom Respirator diskonnektiert, das Beatmungsgeraet lieferte keinen Messwert."
  }],
  "device" : {
    "reference" : "DeviceMetric/mii-exa-test-data-patient-1-icu-vent-dm-param-1"
  }
}

```
