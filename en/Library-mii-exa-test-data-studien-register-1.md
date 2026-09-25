# DRKS - Deutsches Register Klinischer Studien - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DRKS - Deutsches Register Klinischer Studien**

## Library: DRKS - Deutsches Register Klinischer Studien 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/testdata/Library/mii-exa-test-data-studien-register-1 | *Version*:2027.0.0-ballot |
| Active as of 2026-09-25 | *Computable Name*:DRKS |
| *Other Identifiers:*https://www.medizininformatik-initiative.de/fhir/sid/drks#DRKS | |

**Exception parsing generated Narrative (see /tmp/liquid-52d6ad3b-321f-46c7-8334-45d08788dec2.html): unexpected non-end of element null::a at line 135 column 50**



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "mii-exa-test-data-studien-register-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-register"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-quell-register",
    "valueBoolean" : true
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/testdata/Library/mii-exa-test-data-studien-register-1",
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
    "value" : "DRKS"
  }],
  "version" : "2027.0.0-ballot",
  "name" : "DRKS",
  "title" : "DRKS - Deutsches Register Klinischer Studien",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-09-25T07:02:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Deutschland"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "documentation",
    "url" : "https://drks.de/",
    "document" : {
      "url" : "https://drks.de/"
    }
  }]
}

```
