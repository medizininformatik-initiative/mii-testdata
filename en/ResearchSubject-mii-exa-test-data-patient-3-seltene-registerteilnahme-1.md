# mii-exa-test-data-patient-3-seltene-registerteilnahme-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-registerteilnahme-1**

## Example ResearchSubject: mii-exa-test-data-patient-3-seltene-registerteilnahme-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Registerteilnahme](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Register**: [ERN ReCONNET Registry - Katalogeintrag](Library-mii-exa-test-data-seltene-register-katalog-1.md)

**identifier**: `https://reconnet.ern-net.eu/fhir/sid/subject`/RCN-DE-001358

**status**: On-study

**period**: 2024-04-02 --> (ongoing)

**study**: [ResearchStudy ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases](ResearchStudy-mii-exa-test-data-seltene-register-study-1.md)

**individual**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**consent**: [mii-exa-test-data-seltene-register-consent-1](Consent-mii-exa-test-data-seltene-register-consent-1.md)



## Resource Content

```json
{
  "resourceType" : "ResearchSubject",
  "id" : "mii-exa-test-data-patient-3-seltene-registerteilnahme-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register",
    "valueReference" : {
      "reference" : "Library/mii-exa-test-data-seltene-register-katalog-1"
    }
  }],
  "identifier" : [{
    "system" : "https://reconnet.ern-net.eu/fhir/sid/subject",
    "value" : "RCN-DE-001358"
  }],
  "status" : "on-study",
  "period" : {
    "start" : "2024-04-02"
  },
  "study" : {
    "reference" : "ResearchStudy/mii-exa-test-data-seltene-register-study-1"
  },
  "individual" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "consent" : {
    "reference" : "Consent/mii-exa-test-data-seltene-register-consent-1"
  }
}

```
