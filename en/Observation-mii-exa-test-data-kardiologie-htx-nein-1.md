# mii-exa-test-data-kardiologie-htx-nein-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-htx-nein-1**

## Example Observation: mii-exa-test-data-kardiologie-htx-nein-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Diagnose Prozedur Nein Unbekannt](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Survey

**code**: Herztransplantation

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**effective**: 2025-03-11 10:35:00+0100

**value**: No

**method**: History taking - action (qualifier value)

**derivedFrom**: Anamnesebogen Kardiologie



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-kardiologie-htx-nein-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt"],
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
      "code" : "32413006",
      "display" : "Transplantation of heart (procedure)"
    }],
    "text" : "Herztransplantation"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "effectiveDateTime" : "2025-03-11T10:35:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "code" : "N",
      "display" : "No"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "129431000",
      "display" : "History taking - action (qualifier value)"
    }]
  },
  "derivedFrom" : [{
    "display" : "Anamnesebogen Kardiologie"
  }]
}

```
