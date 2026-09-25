# mii-exa-test-data-biobank-kulturprotokoll-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-kulturprotokoll-1**

## Example DocumentReference: mii-exa-test-data-biobank-kulturprotokoll-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Current

**date**: 2022-03-20 09:00:00+0100

**description**: Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | PDF | [https://www.charite.de/biobank/protocols/KolonOrganoidKultur_v1.pdf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/biobank/protocols/KolonOrganoidKultur_v1.pdf) | Kolon-Organoid Kulturprotokoll v1 |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-biobank-kulturprotokoll-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "date" : "2022-03-20T09:00:00+01:00",
  "description" : "Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://www.charite.de/biobank/protocols/KolonOrganoidKultur_v1.pdf",
      "title" : "Kolon-Organoid Kulturprotokoll v1"
    }
  }]
}

```
