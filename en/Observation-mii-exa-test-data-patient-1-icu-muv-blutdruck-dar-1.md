# mii-exa-test-data-patient-1-icu-muv-blutdruck-dar-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-muv-blutdruck-dar-1**

## Example Observation: mii-exa-test-data-patient-1-icu-muv-blutdruck-dar-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU MUV Arterieller Blutdruck](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-arterieller-blutdruck)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-muv-blutdruck-dar-1

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-06 14:00:00+0200

**note**: 

> 

Arterielle Druckmessung waehrend des Wechsels von Druckaufnehmer und Spuelsystem (14:00 Uhr) fuer ca. 5 Minuten unterbrochen; nicht-invasive Ersatzmessung erst um 14:10 Uhr.


**bodySite**: Structure of radial artery (body structure)

**method**: Arterial pressure monitoring, invasive method (regime/therapy)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#ICU-MONITOR-001; status = active; type = Biomedical equipment (physical object)](Device-mii-exa-test-data-patient-1-icu-device-monitor-1.md)

> **component****code**: Systolic blood pressure**dataAbsentReason**: Temporarily Unknown

> **component****code**: Diastolic blood pressure**dataAbsentReason**: Temporarily Unknown

> **component****code**: Mean blood pressure**dataAbsentReason**: Temporarily Unknown



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-muv-blutdruck-dar-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-arterieller-blutdruck"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-muv-blutdruck-dar-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "75367002",
      "display" : "Blood pressure"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "364090009",
      "display" : "Systemic arterial pressure"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-06T14:00:00+02:00",
  "note" : [{
    "text" : "Arterielle Druckmessung waehrend des Wechsels von Druckaufnehmer und Spuelsystem (14:00 Uhr) fuer ca. 5 Minuten unterbrochen; nicht-invasive Ersatzmessung erst um 14:10 Uhr."
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45631007",
      "display" : "Structure of radial artery (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "17146006",
      "display" : "Arterial pressure monitoring, invasive method (regime/therapy)"
    }]
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-patient-1-icu-device-monitor-1"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolic blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "271649006",
        "display" : "Systolic blood pressure"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "150017",
        "display" : "MDC_PRESS_BLD_NONINV_SYS"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "temp-unknown",
        "display" : "Temporarily Unknown"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4",
        "display" : "Diastolic blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "271650006",
        "display" : "Diastolic blood pressure"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "150018",
        "display" : "MDC_PRESS_BLD_NONINV_DIA"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "temp-unknown",
        "display" : "Temporarily Unknown"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8478-0",
        "display" : "Mean blood pressure"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "6797001",
        "display" : "Mean blood pressure"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "150019",
        "display" : "MDC_PRESS_BLD_NONINV_MEAN"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "temp-unknown",
        "display" : "Temporarily Unknown"
      }]
    }
  }]
}

```
