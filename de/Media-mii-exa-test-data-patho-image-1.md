# Fotodokumentation HE-Schnitt Stanze 01 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Fotodokumentation HE-Schnitt Stanze 01**

## Beispiel Media: Fotodokumentation HE-Schnitt Stanze 01

-------

**German**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Attached Image](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Media: status = completed; type = Image; modality = Scanner; created[x] = 2024-01-17 10:29:00+0100](Media-mii-exa-test-data-patho-image-2.md)

**status**: Completed

**type**: Image

**modality**: Scanner

**subject**: [Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)](Specimen-mii-exa-test-data-patho-specimen-01-slide.md)

**created**: 2024-01-17 10:30:00+0100

**operator**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/png | [https://www.charite.de/fhir/sid/patho/image/E_24_001_A_1_1HE](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/sid/patho/image/E_24_001_A_1_1HE) | HE-Schnitt Stanze 01 |



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
