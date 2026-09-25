# Fotodokumentation HE-Schnitt Stanze 01 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fotodokumentation HE-Schnitt Stanze 01**

## Example Media: Fotodokumentation HE-Schnitt Stanze 01

Fotodokumentation des HE-Schnitts der Prostatastanze 01



## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "mii-exa-test-data-patho-image-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Media/mii-exa-test-data-patho-image-2"
  }],
  "status" : "completed",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/media-type",
      "code" : "image"
    }]
  },
  "modality" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "706821004"
    }]
  },
  "subject" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
  },
  "createdDateTime" : "2024-01-17T10:30:00+01:00",
  "operator" : {
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  },
  "content" : {
    "contentType" : "image/png",
    "url" : "https://www.charite.de/fhir/sid/patho/image/E_24_001_A_1_1HE",
    "title" : "HE-Schnitt Stanze 01"
  }
}

```
