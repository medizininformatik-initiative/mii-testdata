# mii-exa-test-data-isik-vitalparameter-ekg-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-ekg-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-ekg-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [ISiKEKG](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKEKG)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Procedure

**code**: EKG study

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 09:15:00+0200

**performer**: MTA Funktionsdiagnostik

**method**: Electrocardiographic procedure (procedure)

**device**: 12-Kanal-EKG-Schreiber

> **component****code**: Lead I**value**: Origin: 0 uV , Factor: 4.88 , Dimensions: 1 , Data: 0 -1 0 2 4 3 1 0 -6 42 118 36 -12 -2 0 1 3 6 9 11 9 6 3 1 0 

> **component****code**: Lead II**value**: Origin: 0 uV , Factor: 4.88 , Dimensions: 1 , Data: 0 1 2 4 6 4 2 0 -8 64 176 52 -16 -3 0 2 5 9 13 15 13 8 4 2 0 

> **component****code**: Lead III**value**: Origin: 0 uV , Factor: 4.88 , Dimensions: 1 , Data: 0 1 1 2 3 2 1 0 -4 24 60 18 -6 -1 0 1 2 3 5 6 5 3 2 1 0 



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-ekg-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKEKG"],
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
      "code" : "procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "106073009"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-isik-vitalparameter-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-isik-vitalparameter-encounter-1"
  },
  "effectiveDateTime" : "2026-05-12T09:15:00+02:00",
  "performer" : [{
    "display" : "MTA Funktionsdiagnostik"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "29303009",
      "display" : "Electrocardiographic procedure (procedure)"
    }]
  },
  "device" : {
    "display" : "12-Kanal-EKG-Schreiber"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "272729005",
        "display" : "Lead I"
      }]
    },
    "valueSampledData" : {
      "origin" : {
        "value" : 0,
        "unit" : "uV",
        "system" : "http://unitsofmeasure.org",
        "code" : "uV"
      },
      "period" : 2,
      "factor" : 4.88,
      "dimensions" : 1,
      "data" : "0 -1 0 2 4 3 1 0 -6 42 118 36 -12 -2 0 1 3 6 9 11 9 6 3 1 0"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "272730000",
        "display" : "Lead II"
      }]
    },
    "valueSampledData" : {
      "origin" : {
        "value" : 0,
        "unit" : "uV",
        "system" : "http://unitsofmeasure.org",
        "code" : "uV"
      },
      "period" : 2,
      "factor" : 4.88,
      "dimensions" : 1,
      "data" : "0 1 2 4 6 4 2 0 -8 64 176 52 -16 -3 0 2 5 9 13 15 13 8 4 2 0"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "272731001",
        "display" : "Lead III"
      }]
    },
    "valueSampledData" : {
      "origin" : {
        "value" : 0,
        "unit" : "uV",
        "system" : "http://unitsofmeasure.org",
        "code" : "uV"
      },
      "period" : 2,
      "factor" : 4.88,
      "dimensions" : 1,
      "data" : "0 1 1 2 3 2 1 0 -4 24 60 18 -6 -1 0 1 2 3 5 6 5 3 2 1 0"
    }
  }]
}

```
