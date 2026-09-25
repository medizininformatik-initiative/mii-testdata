# mii-exa-test-data-studie-einschluss-anfrage-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studie-einschluss-anfrage-1**

## Example ServiceRequest: mii-exa-test-data-studie-einschluss-anfrage-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Studieneinschluss Anfrage](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Proposal

**category**: Clinical trial

**code**: Referral to clinical trial

**subject**: [Felix Proband Male, DoB: 1990-03-20 ( https://www.charite.de/fhir/sid/patientenidentifikation#STUD-TEST-001)](Patient-mii-exa-test-data-studien-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-07-01 --> 2024-07-20](Encounter-mii-exa-test-data-studien-encounter-1.md)

**authoredOn**: 2024-03-10

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Malignant neoplastic disease (disorder)

**supportingInfo**: 

* [ResearchStudy Biomarker-basierte Verlaufsprognose endokriner Erkrankungen](ResearchStudy-mii-exa-test-data-studien-studie-1.md)
* [ResearchSubject: identifier = Anonymous identifier; status = on-study; period = 2024-03-15 --> 2025-03-15](ResearchSubject-mii-exa-test-data-studien-proband-1.md)

**note**: 

> 

Patient erfüllt Einschlusskriterien für MII-BIOMARKER-2024 Studie.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-studie-einschluss-anfrage-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-studien-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-studien-encounter-1"
  },
  "authoredOn" : "2024-03-10",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363346000",
      "display" : "Malignant neoplastic disease (disorder)"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "ResearchStudy/mii-exa-test-data-studien-studie-1"
  },
  {
    "reference" : "ResearchSubject/mii-exa-test-data-studien-proband-1"
  }],
  "note" : [{
    "text" : "Patient erfüllt Einschlusskriterien für MII-BIOMARKER-2024 Studie."
  }]
}

```
