# mii-exa-test-data-patient-1-dokument-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-dokument-2**

## Example DocumentReference: mii-exa-test-data-patient-1-dokument-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Dokument Dokument](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901 (use: official, )

**status**: Current

**docStatus**: Final

**type**: Radiologischer Befundbericht Roentgen-Thorax

**category**: Befundbericht

**subject**: [Maria Beispiel Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)](Patient-mii-exa-test-data-dokument-patient-1.md)

**description**: Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen

**securityLabel**: normal

> **content**

### Attachments

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Title** | **Creation** |
| * | PDF | German | [https://fhir.example.org/Binary/radiologie-befund-patient1-20240215](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://fhir.example.org/Binary/radiologie-befund-patient1-20240215) | Roentgen_Thorax_Befund.pdf | 2024-02-15 |

**format**: [IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds:2017:mimeTypeSufficient](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds.582017.58mimeTypeSufficient) (mimeType Sufficient)

### Contexts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Encounter** | **Event** | **Period** | **FacilityType** | **PracticeSetting** |
| * | [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-10](Encounter-mii-exa-test-data-dokument-encounter-1.md) | stationärer Aufenthalt | 2024-02-15 --> 2024-02-15 | Krankenhaus | Radiologie |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-test-data-patient-1-dokument-2",
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
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902"
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901"
  }],
  "status" : "current",
  "docStatus" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "code" : "AD010109",
      "display" : "Ärztlicher Befundbericht"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
      "code" : "BERI",
      "display" : "Arztberichte"
    }],
    "text" : "Radiologischer Befundbericht Roentgen-Thorax"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/IHEXDSclassCode",
      "code" : "BEF",
      "display" : "Befundbericht"
    }],
    "text" : "Befundbericht"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-dokument-patient-1"
  },
  "description" : "Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen",
  "securityLabel" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
      "code" : "N",
      "display" : "normal"
    }]
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "language" : "de",
      "url" : "https://fhir.example.org/Binary/radiologie-befund-patient1-20240215",
      "title" : "Roentgen_Thorax_Befund.pdf",
      "creation" : "2024-02-15"
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
      "start" : "2024-02-15",
      "end" : "2024-02-15"
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
        "code" : "RADI",
        "display" : "Radiologie"
      }]
    }
  }
}

```
