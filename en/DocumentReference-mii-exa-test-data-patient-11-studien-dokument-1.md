# mii-exa-test-data-patient-11-studien-dokument-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-studien-dokument-1**

## Example DocumentReference: mii-exa-test-data-patient-11-studien-dokument-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Dokument](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Current

**author**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**custodian**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Size** | **Title** |
| * | PDF | [https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf) | 986112 | Studienprotokoll MII-CARE-PRO-2025 v1.0 |


### Contexts

| | |
| :--- | :--- |
| - | **Related** |
| * | [ResearchStudy PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz](ResearchStudy-mii-exa-test-data-patient-11-studie-1.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-patient-11-studien-dokument-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-dokument"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "author" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }],
  "custodian" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://www.charite.de/studien/mii-care-pro-2025/Studienprotokoll_v1.pdf",
      "size" : 986112,
      "title" : "Studienprotokoll MII-CARE-PRO-2025 v1.0"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "ResearchStudy/mii-exa-test-data-patient-11-studie-1"
    }]
  }
}

```
