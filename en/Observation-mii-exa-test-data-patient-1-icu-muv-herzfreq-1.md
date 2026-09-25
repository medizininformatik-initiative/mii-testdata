# mii-exa-test-data-patient-1-icu-muv-herzfreq-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-muv-herzfreq-1**

## Example Observation: mii-exa-test-data-patient-1-icu-muv-herzfreq-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU MUV Herzfrequenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-herzfrequenz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-muv-herzfreq-1

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-05 08:00:00+0200

**performer**: [Practitioner Katharina Weber ](Practitioner-mii-exa-test-data-icu-practitioner-1.md)

**value**: 72 beats per minute (Details: UCUM code/min = '/min')

**interpretation**: Normal

**bodySite**: Heart structure (body structure)

**method**: Electrocardiographic procedure

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#ICU-MONITOR-001; status = active; type = Biomedical equipment (physical object)](Device-mii-exa-test-data-patient-1-icu-device-monitor-1.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 beats per minute (Details: UCUM code/min = '/min') | 100 beats per minute (Details: UCUM code/min = '/min') |

> **component****code**: Herzfrequenz, palpatorische Kontrollmessung**value**: 72 beats per minute (Details: UCUM code/min = '/min')**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 60 beats per minute (Details: UCUM code/min = '/min') | 100 beats per minute (Details: UCUM code/min = '/min') |




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-muv-herzfreq-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-herzfrequenz"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-muv-herzfreq-1"
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
      "system" : "http://snomed.info/sct",
      "code" : "364075005",
      "display" : "Heart rate"
    },
    {
      "system" : "http://loinc.org",
      "code" : "8867-4",
      "display" : "Heart rate"
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "code" : "147842",
      "display" : "MDC_ECG_HEART_RATE"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-05T08:00:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-icu-practitioner-1"
  }],
  "valueQuantity" : {
    "value" : 72,
    "unit" : "beats per minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80891009",
      "display" : "Heart structure (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "29303009",
      "display" : "Electrocardiographic procedure"
    }]
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-patient-1-icu-device-monitor-1"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 60,
      "unit" : "beats per minute",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    },
    "high" : {
      "value" : 100,
      "unit" : "beats per minute",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    }
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8867-4",
        "display" : "Heart rate"
      }],
      "text" : "Herzfrequenz, palpatorische Kontrollmessung"
    },
    "valueQuantity" : {
      "value" : 72,
      "unit" : "beats per minute",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "N",
        "display" : "Normal"
      }]
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 60,
        "unit" : "beats per minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      },
      "high" : {
        "value" : 100,
        "unit" : "beats per minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      }
    }]
  }]
}

```
