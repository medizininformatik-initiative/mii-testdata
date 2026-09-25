# mii-exa-test-data-lungenfunktion-docref-rohdaten-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-docref-rohdaten-1**

## Example DocumentReference: mii-exa-test-data-lungenfunktion-docref-rohdaten-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Current

**type**: Lungenfunktions-Rohdaten (Fluss-Volumen-Kurven)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**date**: 2025-02-18 11:45:00+0100

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | PDF | [https://www.charite.de/fhir/lungenfunktion/rohdaten/messreihe-2025-02-18.pdf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion/rohdaten/messreihe-2025-02-18.pdf) | Rohdaten Lungenfunktionsmessung 18.02.2025 |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-lungenfunktion-docref-rohdaten-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "720449003",
      "display" : "Pulmonary function report (record artifact)"
    }],
    "text" : "Lungenfunktions-Rohdaten (Fluss-Volumen-Kurven)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "date" : "2025-02-18T11:45:00+01:00",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://www.charite.de/fhir/lungenfunktion/rohdaten/messreihe-2025-02-18.pdf",
      "title" : "Rohdaten Lungenfunktionsmessung 18.02.2025"
    }
  }]
}

```
