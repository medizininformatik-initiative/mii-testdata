# mii-exa-test-data-patient-1-consent-provenance-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-consent-provenance-1**

## Example Provenance: mii-exa-test-data-patient-1-consent-provenance-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [Profile - MI-I - Consent - Provenance](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

Provenance for [mii-exa-test-data-patient-1-consent-1](Consent-mii-exa-test-data-patient-1-consent-1.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2024-02-23 12:10:00+0100 |

**Agents**

* **Type**: Assembler
  * **who**: Charite Consent Management System



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "mii-exa-test-data-patient-1-consent-provenance-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "target" : [{
    "reference" : "Consent/mii-exa-test-data-patient-1-consent-1"
  }],
  "recorded" : "2024-02-23T12:10:00+01:00",
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "assembler"
      }]
    },
    "who" : {
      "display" : "Charite Consent Management System"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "DocumentReference/mii-exa-test-data-patient-1-consent-docref-1"
    }
  }],
  "signature" : [{
    "extension" : [{
      "url" : "http://fhir.de/ConsentManagement/StructureDefinition/SignatureLocation",
      "valueString" : "Berlin, Charité Campus Mitte"
    }],
    "type" : [{
      "system" : "urn:iso-astm:E1762-95:2013",
      "code" : "1.2.840.10065.1.12.1.7",
      "display" : "Consent Signature"
    }],
    "when" : "2024-02-23T12:00:00+01:00",
    "who" : {
      "reference" : "Patient/mii-exa-test-data-patient-1"
    },
    "data" : "RGllcyBpc3QgZWluIFBsYXR6aGFsdGVyIGZ1ZXIgZWluZSBnZXNjYW5udGUgVW50ZXJzY2hyaWZ0Lg=="
  },
  {
    "type" : [{
      "system" : "urn:iso-astm:E1762-95:2013",
      "code" : "1.2.840.10065.1.12.1.11",
      "display" : "Consent Witness Signature"
    }],
    "when" : "2024-02-23T12:00:00+01:00",
    "who" : {
      "display" : "Dr. med. Julia Beispiel"
    },
    "onBehalfOf" : {
      "display" : "Charite - Universitaetsmedizin Berlin"
    },
    "data" : "WmV1Z2VuLVVudGVyc2NocmlmdCAoUGxhdHpoYWx0ZXIp"
  }]
}

```
