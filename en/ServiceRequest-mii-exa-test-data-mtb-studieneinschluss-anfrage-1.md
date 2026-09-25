# MTB Studieneinschluss Anfrage - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Studieneinschluss Anfrage**

## Example ServiceRequest: MTB Studieneinschluss Anfrage

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Studieneinschluss Anfrage](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Empfehlung Priorität**: 3.1

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/34726479

**status**: Draft

**intent**: Proposal

**category**: Clinical trial (procedure)

**code**: Referral to clinical trial (procedure)

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**supportingInfo**: [ResearchStudy Phase III NSCLC EGFR Mutation Study](ResearchStudy-mii-exa-test-data-mtb-studie-1.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-mtb-studieneinschluss-anfrage-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valueDecimal" : 3.1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "34726479"
    }
  }],
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "supportingInfo" : [{
    "reference" : "ResearchStudy/mii-exa-test-data-mtb-studie-1"
  }]
}

```
