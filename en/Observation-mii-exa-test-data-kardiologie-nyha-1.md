# mii-exa-test-data-kardiologie-nyha-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-nyha-1**

## Example Observation: mii-exa-test-data-kardiologie-nyha-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Score NYHA](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey

**code**: New York Heart Association Classification class (observable entity)

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2025-03-10 --> 2025-03-18](Encounter-mii-exa-test-data-kardiologie-encounter-1.md)

**effective**: 2025-03-11 10:00:00+0100

**performer**: Facharzt fuer Kardiologie

**value**: New York Heart Association Classification - Class II (finding)

**note**: 

> 

Leichte Einschraenkung bei staerkerer koerperlicher Belastung, keine Ruhebeschwerden.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-kardiologie-nyha-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha"],
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
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "762994006",
      "display" : "New York Heart Association Classification class (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "93124-6",
      "display" : "New York Heart Association Functional Classification panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-kardiologie-encounter-1"
  },
  "effectiveDateTime" : "2025-03-11T10:00:00+01:00",
  "performer" : [{
    "display" : "Facharzt fuer Kardiologie"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "421704003",
      "display" : "New York Heart Association Classification - Class II (finding)"
    }]
  },
  "note" : [{
    "text" : "Leichte Einschraenkung bei staerkerer koerperlicher Belastung, keine Ruhebeschwerden."
  }]
}

```
