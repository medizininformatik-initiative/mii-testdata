# mii-exa-test-data-patient-13-registerteilnahme - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-registerteilnahme**

## Example ResearchSubject: mii-exa-test-data-patient-13-registerteilnahme

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Registerteilnahme](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Register**: [Fabry-Register Deutschland - Katalogeintrag](Library-mii-exa-test-data-patient-13-register-katalog.md)

**identifier**: `https://www.charite.de/fhir/sid/fabry-register-proband`/FR-DE-004217

**status**: On-study

**period**: 2024-02-05 --> (ongoing)

**study**: [ResearchStudy Fabry-Register Deutschland](ResearchStudy-mii-exa-test-data-patient-13-register-study.md)

**individual**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**consent**: [mii-exa-test-data-patient-13-register-consent](Consent-mii-exa-test-data-patient-13-register-consent.md)



## Resource Content

```json
{
  "resourceType" : "ResearchSubject",
  "id" : "mii-exa-test-data-patient-13-registerteilnahme",
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
      "reference" : "Library/mii-exa-test-data-patient-13-register-katalog"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/fabry-register-proband",
    "value" : "FR-DE-004217"
  }],
  "status" : "on-study",
  "period" : {
    "start" : "2024-02-05"
  },
  "study" : {
    "reference" : "ResearchStudy/mii-exa-test-data-patient-13-register-study"
  },
  "individual" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "consent" : {
    "reference" : "Consent/mii-exa-test-data-patient-13-register-consent"
  }
}

```
