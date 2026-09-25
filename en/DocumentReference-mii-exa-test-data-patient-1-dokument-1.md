# mii-exa-test-data-patient-1-dokument-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-dokument-1**

## Example DocumentReference: mii-exa-test-data-patient-1-dokument-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Dokument Dokument](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99901

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890 (use: official, )

**status**: Current

**docStatus**: Final

**type**: Entlassbrief Innere Medizin

**category**: Brief

**subject**: [Maria Beispiel Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)](Patient-mii-exa-test-data-dokument-patient-1.md)

### RelatesTos

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Target** |
| * | Replaces | [DocumentReference: masterIdentifier = OID:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902; identifier = UUID:b2c3d4e5-f6a7-8901-bcde-f12345678901 (use: official, ); status = current; docStatus = final; type = Ärztlicher Befundbericht; category = Befundbericht; description = Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen; securityLabel = normal](DocumentReference-mii-exa-test-data-patient-1-dokument-2.md) |

**description**: Entlassbrief der Klinik fuer Innere Medizin nach stationaerem Aufenthalt wegen ambulant erworbener Pneumonie

**securityLabel**: normal

> **content**

### Attachments

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Data** | **Title** | **Creation** |
| * | text/plain | German | `U2VociBnZWVocnRlciBIZXJyIEtvbGxlZ2UsIHdpciBiZXJpY2h0ZW4gdWViZXIgdW5zZXJlbiBnZW1laW5zYW1lbiBQYXRpZW50ZW4uIERpYWdub3NlOiBBbWJ1bGFudCBlcndvcmJlbmUgUG5ldW1vbmllLiBUaGVyYXBpZTogQW50aWJpb3Rpa2F0aGVyYXBpZSBtaXQgQW1veGljaWxsaW4vQ2xhdnVsYW5zYWV1cmUuIFZlcmxhdWY6IEtvbXBsaWthdGlvbnNsb3MsIEVudGxhc3N1bmcgaW4gZ3V0ZW0gQVou` | Entlassbrief_Patient1.txt | 2024-02-20 |

**format**: [IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds:2017:mimeTypeSufficient](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds.582017.58mimeTypeSufficient) (mimeType Sufficient)

### Contexts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Encounter** | **Event** | **Period** | **FacilityType** | **PracticeSetting** |
| * | [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-10](Encounter-mii-exa-test-data-dokument-encounter-1.md) | stationärer Aufenthalt | 2024-02-10 --> 2024-02-20 | Krankenhaus | Innere Medizin |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-patient-1-dokument-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "masterIdentifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99901"
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
  }],
  "status" : "current",
  "docStatus" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "code" : "AD010110",
      "display" : "Ärztlicher Verlaufsbericht"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
      "code" : "BERI",
      "display" : "Arztberichte"
    }],
    "text" : "Entlassbrief Innere Medizin"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/IHEXDSclassCode",
      "code" : "BRI",
      "display" : "Brief"
    }],
    "text" : "Brief"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-dokument-patient-1"
  },
  "relatesTo" : [{
    "code" : "replaces",
    "target" : {
      "reference" : "DocumentReference/mii-exa-test-data-patient-1-dokument-2"
    }
  }],
  "description" : "Entlassbrief der Klinik fuer Innere Medizin nach stationaerem Aufenthalt wegen ambulant erworbener Pneumonie",
  "securityLabel" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
      "code" : "N",
      "display" : "normal"
    }]
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "text/plain",
      "language" : "de",
      "data" : "U2VociBnZWVocnRlciBIZXJyIEtvbGxlZ2UsIHdpciBiZXJpY2h0ZW4gdWViZXIgdW5zZXJlbiBnZW1laW5zYW1lbiBQYXRpZW50ZW4uIERpYWdub3NlOiBBbWJ1bGFudCBlcndvcmJlbmUgUG5ldW1vbmllLiBUaGVyYXBpZTogQW50aWJpb3Rpa2F0aGVyYXBpZSBtaXQgQW1veGljaWxsaW4vQ2xhdnVsYW5zYWV1cmUuIFZlcmxhdWY6IEtvbXBsaWthdGlvbnNsb3MsIEVudGxhc3N1bmcgaW4gZ3V0ZW0gQVou",
      "title" : "Entlassbrief_Patient1.txt",
      "creation" : "2024-02-20"
    },
    "format" : {
      "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
      "code" : "urn:ihe:iti:xds:2017:mimeTypeSufficient",
      "display" : "mimeType Sufficient"
    }
  }],
  "context" : {
    "encounter" : [{
      "reference" : "Encounter/mii-exa-test-data-dokument-encounter-1"
    }],
    "event" : [{
      "coding" : [{
        "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
        "code" : "E200",
        "display" : "stationärer Aufenthalt"
      }]
    }],
    "period" : {
      "start" : "2024-02-10",
      "end" : "2024-02-20"
    },
    "facilityType" : {
      "coding" : [{
        "system" : "http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung",
        "code" : "KHS",
        "display" : "Krankenhaus"
      }]
    },
    "practiceSetting" : {
      "coding" : [{
        "system" : "http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen",
        "code" : "INNE",
        "display" : "Innere Medizin"
      }]
    }
  }
}

```
