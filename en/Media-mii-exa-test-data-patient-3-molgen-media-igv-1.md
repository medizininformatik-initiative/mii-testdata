# mii-exa-test-data-patient-3-molgen-media-igv-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-media-igv-1**

## Example Media: mii-exa-test-data-patient-3-molgen-media-igv-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/molgen-bilddaten`/MG_IMG_0000001

**status**: Completed

**type**: Image

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**created**: 2022-04-12 09:45:00+0200

**operator**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

### Contents

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | image/png | [https://dms.charite.de/kds-testdata/molgen/patient-3/igv-braf-v600e.png](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://dms.charite.de/kds-testdata/molgen/patient-3/igv-braf-v600e.png) | IGV-Screenshot BRAF Exon 15, c.1799T>A | 2022-04-12 09:45:00+0200 |

**note**: 

> 

Alignment-Darstellung der BRAF-Zielregion mit der nachgewiesenen Variante.




## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "mii-exa-test-data-patient-3-molgen-media-igv-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/molgen-bilddaten",
    "value" : "MG_IMG_0000001"
  }],
  "status" : "completed",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/media-type",
      "code" : "image",
      "display" : "Image"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "createdDateTime" : "2022-04-12T09:45:00+02:00",
  "operator" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "content" : {
    "contentType" : "image/png",
    "url" : "https://dms.charite.de/kds-testdata/molgen/patient-3/igv-braf-v600e.png",
    "title" : "IGV-Screenshot BRAF Exon 15, c.1799T>A",
    "creation" : "2022-04-12T09:45:00+02:00"
  },
  "note" : [{
    "text" : "Alignment-Darstellung der BRAF-Zielregion mit der nachgewiesenen Variante."
  }]
}

```
