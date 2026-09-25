# mii-exa-test-data-soziodemographie-datenerhebung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-soziodemographie-datenerhebung-1**

## Example Observation: mii-exa-test-data-soziodemographie-datenerhebung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SDD Datenerhebung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/StructureDefinition/mii-pr-sdd-datenerhebung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/sdd-erhebung`/SDD-ERH-2025-0001

**status**: Final

**category**: Social History, Survey

**code**: Soziodemographische Datenerhebung

**subject**: [Renate Beispielmann Female, DoB: 1958-03-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#SDD-TEST-001)](Patient-mii-exa-test-data-soziodemographie-patient-1.md)

**effective**: 2025-05-12

**method**: Selbstangabe

**hasMember**: 

* [Observation Mother birthplace [PhenX]](Observation-mii-exa-test-data-soziodemographie-geburtsland-mutter-1.md)
* [Observation Father birthplace](Observation-mii-exa-test-data-soziodemographie-geburtsland-vater-1.md)
* [Observation Marital or partnership status](Observation-mii-exa-test-data-soziodemographie-partnerschaft-1.md)
* [Observation Receives as much social support as wanted](Observation-mii-exa-test-data-soziodemographie-vertrauensperson-1.md)
* [Observation Household size [#]](Observation-mii-exa-test-data-soziodemographie-haushaltsgroesse-1.md)
* [Observation Patient care statuses](Observation-mii-exa-test-data-soziodemographie-betreuungssituation-1.md)
* [Observation Disability status](Observation-mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1.md)
* [Observation Highest level of education](Observation-mii-exa-test-data-soziodemographie-ausbildung-1.md)
* [Observation Employment status - current](Observation-mii-exa-test-data-soziodemographie-beschaeftigungsstatus-1.md)
* [Observation Monthly household net income](Observation-mii-exa-test-data-soziodemographie-einkommen-1.md)
* [Observation Employment status - current](Observation-mii-exa-test-data-soziodemographie-berufliche-stellung-1.md)
* [Observation Details of education](Observation-mii-exa-test-data-soziodemographie-schulabschluss-1.md)
* [Observation Years of education [#] - Reported](Observation-mii-exa-test-data-soziodemographie-schuljahre-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-soziodemographie-datenerhebung-1",
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
    "value" : "SDD-ERH-2025-0001"
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
    "reference" : "Patient/mii-exa-test-data-soziodemographie-patient-1"
  },
  "effectiveDateTime" : "2025-05-12",
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie/CodeSystem/mii-cs-sdd-erhebungsmethode",
      "code" : "selbstauskunft",
      "display" : "Selbstangabe"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-soziodemographie-geburtsland-mutter-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-geburtsland-vater-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-partnerschaft-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-vertrauensperson-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-haushaltsgroesse-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-betreuungssituation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-schwerbehindertenausweis-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-ausbildung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-beschaeftigungsstatus-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-einkommen-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-berufliche-stellung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-schulabschluss-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-soziodemographie-schuljahre-1"
  }]
}

```
