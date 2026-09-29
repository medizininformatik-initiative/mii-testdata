# mii-exa-test-data-patient-11-sdd-erhebung-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-sdd-erhebung-1**

## Example Observation: mii-exa-test-data-patient-11-sdd-erhebung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SDD Datenerhebung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/sdd-erhebung`/SDD-ERH-2025-0038

**status**: Final

**category**: Social History, Survey

**code**: Soziodemographische Datenerhebung

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**effective**: 2025-02-10

**method**: Selbstangabe

**hasMember**: 

* [Observation Marital or partnership status](Observation-mii-exa-test-data-patient-11-sdd-partnerschaft-1.md)
* [Observation Household size [#]](Observation-mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1.md)
* [Observation Details of education](Observation-mii-exa-test-data-patient-11-sdd-schulabschluss-1.md)
* [Observation Years of education [#] - Reported](Observation-mii-exa-test-data-patient-11-sdd-schuljahre-1.md)
* [Observation Highest level of education](Observation-mii-exa-test-data-patient-11-sdd-ausbildung-1.md)
* [Observation Employment status - current](Observation-mii-exa-test-data-patient-11-sdd-beschaeftigung-1.md)
* [Observation Employment status - current](Observation-mii-exa-test-data-patient-11-sdd-stellung-1.md)
* [Observation Monthly household net income](Observation-mii-exa-test-data-patient-11-sdd-einkommen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-sdd-erhebung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/sdd-erhebung",
    "value" : "SDD-ERH-2025-0038"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "45970-1"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "302147001"
    }],
    "text" : "Soziodemographische Datenerhebung"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "effectiveDateTime" : "2025-02-10",
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-erhebungsmethode",
      "code" : "selbstauskunft",
      "display" : "Selbstangabe"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-partnerschaft-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-haushaltsgroesse-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-schulabschluss-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-schuljahre-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-ausbildung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-beschaeftigung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-stellung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-sdd-einkommen-1"
  }]
}

```
