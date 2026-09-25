# mii-exa-test-data-isik-vitalparameter-blutdruck-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-blutdruck-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-blutdruck-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [ISiKBlutdruckSystemischArteriell](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 08:05:00+0200

**performer**: Pflegefachkraft Station 14i

**method**: Measurement of blood pressure using cuff method (procedure)

**device**: Oberarm-Blutdruckmessgeraet, Manschette Groesse M

> **component****code**: Systolic blood pressure**value**: 132 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Diastolic blood pressure**value**: 84 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Mean blood pressure**value**: 100 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-blutdruck-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
      "display" : "Blood pressure (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-isik-vitalparameter-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-isik-vitalparameter-encounter-1"
  },
  "effectiveDateTime" : "2026-05-12T08:05:00+02:00",
  "performer" : [{
    "display" : "Pflegefachkraft Station 14i"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "371911009",
      "display" : "Measurement of blood pressure using cuff method (procedure)"
    }]
  },
  "device" : {
    "display" : "Oberarm-Blutdruckmessgeraet, Manschette Groesse M"
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
        "display" : "Systolic blood pressure (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 132,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
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
        "display" : "Diastolic blood pressure (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 84,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
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
        "display" : "Mean blood pressure (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 100,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
