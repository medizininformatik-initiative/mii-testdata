# mii-exa-test-data-kardiologie-rauchen-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-rauchen-1**

## Example Observation: mii-exa-test-data-kardiologie-rauchen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Observation Rauchen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Social History

**code**: Tobacco smoking status

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2025-03-10 --> 2025-03-18](Encounter-mii-exa-test-data-kardiologie-encounter-1.md)

**effective**: 2025-03-11 10:40:00+0100

**performer**: Facharzt fuer Kardiologie

**value**: Ex-smoker (finding)

> **component****code**: Cigarette pack-years (observable entity)**value**: >=30 {pack-years} (Details: UCUM code{pack-years} = '{pack-years}')

> **component****code**: How many cigarettes do you smoke per day now**value**: 20 {cigarettes-per-day} (Details: UCUM code{cigarettes-per-day} = '{cigarettes-per-day}')

> **component****code**: Smoking started (life style)**value**: 1975-01-01

> **component****code**: Time since stopped smoking (observable entity)**value**: 30 year (Details: UCUM codea = 'a')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-kardiologie-rauchen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen"],
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
      "code" : "social-history"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "72166-2",
      "display" : "Tobacco smoking status"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-kardiologie-encounter-1"
  },
  "effectiveDateTime" : "2025-03-11T10:40:00+01:00",
  "performer" : [{
    "display" : "Facharzt fuer Kardiologie"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "8517006",
      "display" : "Ex-smoker (finding)"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "401201003",
        "display" : "Cigarette pack-years (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 30,
      "comparator" : ">=",
      "unit" : "{pack-years}",
      "system" : "http://unitsofmeasure.org",
      "code" : "{pack-years}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "63640-7",
        "display" : "How many cigarettes do you smoke per day now"
      }]
    },
    "valueQuantity" : {
      "value" : 20,
      "unit" : "{cigarettes-per-day}",
      "system" : "http://unitsofmeasure.org",
      "code" : "{cigarettes-per-day}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "266929003",
        "display" : "Smoking started (life style)"
      }]
    },
    "valueDateTime" : "1975-01-01"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "228487000",
        "display" : "Time since stopped smoking (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 30,
      "unit" : "year",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  }]
}

```
