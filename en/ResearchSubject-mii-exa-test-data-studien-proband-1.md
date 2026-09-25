# mii-exa-test-data-studien-proband-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-studien-proband-1**

## Example ResearchSubject: mii-exa-test-data-studien-proband-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Proband](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Anonymous identifier/123456789

**status**: On-study

**period**: 2024-03-15 --> 2025-03-15

**study**: [ResearchStudy Biomarker-basierte Verlaufsprognose endokriner Erkrankungen](ResearchStudy-mii-exa-test-data-studien-studie-1.md)

**individual**: [Felix Proband Male, DoB: 1990-03-20 ( https://www.charite.de/fhir/sid/patientenidentifikation#STUD-TEST-001)](Patient-mii-exa-test-data-studien-patient-1.md)

**consent**: [mii-exa-test-data-studien-consent-1](Consent-mii-exa-test-data-studien-consent-1.md)



## Resource Content

```json
{
  "resourceType" : "ResearchSubject",
  "id" : "mii-exa-test-data-studien-proband-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "https://www.medizininformatik-initiative.de/fhir/core/sid/SubjectIdentificationCode",
    "value" : "123456789"
  }],
  "status" : "on-study",
  "period" : {
    "start" : "2024-03-15",
    "end" : "2025-03-15"
  },
  "study" : {
    "reference" : "ResearchStudy/mii-exa-test-data-studien-studie-1"
  },
  "individual" : {
    "reference" : "Patient/mii-exa-test-data-studien-patient-1"
  },
  "consent" : {
    "reference" : "Consent/mii-exa-test-data-studien-consent-1"
  }
}

```
