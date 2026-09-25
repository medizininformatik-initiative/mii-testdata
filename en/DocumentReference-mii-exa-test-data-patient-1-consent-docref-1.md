# mii-exa-test-data-patient-1-consent-docref-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-consent-docref-1**

## Example DocumentReference: mii-exa-test-data-patient-1-consent-docref-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [Profile - MI-I - Consent - DocumentReference](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Current

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**date**: 2024-02-23 12:05:00+0100

> **content**

### Attachments

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **ContentType** | **Data** | **Url** | **Title** | **Creation** |
| * |  | PDF | `YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM=` | [https://dms.charite.de/kds-testdata/consent/patient-1/einwilligungsbogen-1.pdf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://dms.charite.de/kds-testdata/consent/patient-1/einwilligungsbogen-1.pdf) | Patienteneinwilligung MII Broad Consent (unterschrieben, Scan) | 2024-02-23 12:00:00+0100 |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-patient-1-consent-docref-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "date" : "2024-02-23T12:05:00+01:00",
  "content" : [{
    "attachment" : {
      "extension" : [{
        "url" : "http://fhir.de/ConsentManagement/StructureDefinition/PhysicalDocumentLocation",
        "valueString" : "Patientenaktenarchiv Charité, Campus Mitte, Schrank 12, Fach 3"
      }],
      "contentType" : "application/pdf",
      "data" : "YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM=",
      "url" : "https://dms.charite.de/kds-testdata/consent/patient-1/einwilligungsbogen-1.pdf",
      "title" : "Patienteneinwilligung MII Broad Consent (unterschrieben, Scan)",
      "creation" : "2024-02-23T12:00:00+01:00"
    }
  }]
}

```
