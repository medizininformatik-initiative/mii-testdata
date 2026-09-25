# mii-exa-test-data-bundle-dokument-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-dokument-1**

## Example Bundle: mii-exa-test-data-bundle-dokument-1



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-dokument-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-06-18T13:51:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-dokument-patient-1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-dokument-patient-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-dokument-patient-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-dokument-patient-1</b></p><a name=\"mii-exa-test-data-dokument-patient-1\"> </a><a name=\"hcmii-exa-test-data-dokument-patient-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Maria Beispiel  Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
        "value" : "DOK-TEST-001"
      }],
      "name" : [{
        "family" : "Beispiel",
        "given" : ["Maria"]
      }],
      "gender" : "female",
      "birthDate" : "1982-09-15"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-dokument-patient-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-dokument-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-dokument-encounter-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-dokument-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-dokument-encounter-1</b></p><a name=\"mii-exa-test-data-dokument-encounter-1\"> </a><a name=\"hcmii-exa-test-data-dokument-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-dokument-patient-1.html\">Maria Beispiel  Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)</a></p><p><b>period</b>: 2024-04-01 --&gt; 2024-04-10</p></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-dokument-patient-1"
      },
      "period" : {
        "start" : "2024-04-01",
        "end" : "2024-04-10"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-dokument-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-dokument-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-dokument-diagnose-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-dokument-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-dokument-diagnose-1</b></p><a name=\"mii-exa-test-data-dokument-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-dokument-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm J18.9}\">Pneumonie, nicht näher bezeichnet</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-dokument-patient-1.html\">Maria Beispiel  Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-dokument-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --&gt; 2024-04-10</a></p><p><b>recordedDate</b>: 2024-04-01</p><p><b>note</b>: </p><blockquote><div><p>Pneumonie nicht naeher bezeichnet</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "J18.9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-dokument-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-dokument-encounter-1"
      },
      "recordedDate" : "2024-04-01",
      "note" : [{
        "text" : "Pneumonie nicht naeher bezeichnet"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-dokument-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DocumentReference/mii-exa-test-data-patient-1-dokument-1",
    "resource" : {
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
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_mii-exa-test-data-patient-1-dokument-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference mii-exa-test-data-patient-1-dokument-1</b></p><a name=\"mii-exa-test-data-patient-1-dokument-1\"> </a><a name=\"hcmii-exa-test-data-patient-1-dokument-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument\">MII PR Dokument Dokument</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>masterIdentifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99901</p><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890 (use: official, )</p><p><b>status</b>: Current</p><p><b>docStatus</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://dvmd.de/fhir/CodeSystem/kdl AD010110}, {http://ihe-d.de/CodeSystems/IHEXDStypeCode BERI}\">Entlassbrief Innere Medizin</span></p><p><b>category</b>: <span title=\"Codes:{http://ihe-d.de/CodeSystems/IHEXDSclassCode BRI}\">Brief</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-dokument-patient-1.html\">Maria Beispiel  Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)</a></p><h3>RelatesTos</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Target</b></td></tr><tr><td style=\"display: none\">*</td><td>Replaces</td><td><a href=\"DocumentReference-mii-exa-test-data-patient-1-dokument-2.html\">DocumentReference: masterIdentifier = OID:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902; identifier = UUID:b2c3d4e5-f6a7-8901-bcde-f12345678901 (use: official, ); status = current; docStatus = final; type = Ärztlicher Befundbericht; category = Befundbericht; description = Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen; securityLabel = normal</a></td></tr></table><p><b>description</b>: Entlassbrief der Klinik fuer Innere Medizin nach stationaerem Aufenthalt wegen ambulant erworbener Pneumonie</p><p><b>securityLabel</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Confidentiality N}\">normal</span></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Language</b></td><td><b>Data</b></td><td><b>Title</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>text/plain</td><td>German</td><td><code>U2VociBnZWVocnRlciBIZXJyIEtvbGxlZ2UsIHdpciBiZXJpY2h0ZW4gdWViZXIgdW5zZXJlbiBnZW1laW5zYW1lbiBQYXRpZW50ZW4uIERpYWdub3NlOiBBbWJ1bGFudCBlcndvcmJlbmUgUG5ldW1vbmllLiBUaGVyYXBpZTogQW50aWJpb3Rpa2F0aGVyYXBpZSBtaXQgQW1veGljaWxsaW4vQ2xhdnVsYW5zYWV1cmUuIFZlcmxhdWY6IEtvbXBsaWthdGlvbnNsb3MsIEVudGxhc3N1bmcgaW4gZ3V0ZW0gQVou</code></td><td>Entlassbrief_Patient1.txt</td><td>2024-02-20</td></tr></table><p><b>format</b>: <a href=\"https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds.582017.58mimeTypeSufficient\">IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds:2017:mimeTypeSufficient</a> (mimeType Sufficient)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Encounter</b></td><td><b>Event</b></td><td><b>Period</b></td><td><b>FacilityType</b></td><td><b>PracticeSetting</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Encounter-mii-exa-test-data-dokument-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --&gt; 2024-04-10</a></td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></td><td>2024-02-10 --&gt; 2024-02-20</td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung KHS}\">Krankenhaus</span></td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen INNE}\">Innere Medizin</span></td></tr></table></div>"
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
    },
    "request" : {
      "method" : "PUT",
      "url" : "DocumentReference/mii-exa-test-data-patient-1-dokument-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DocumentReference/mii-exa-test-data-patient-1-dokument-2",
    "resource" : {
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
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_mii-exa-test-data-patient-1-dokument-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference mii-exa-test-data-patient-1-dokument-2</b></p><a name=\"mii-exa-test-data-patient-1-dokument-2\"> </a><a name=\"hcmii-exa-test-data-patient-1-dokument-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument\">MII PR Dokument Dokument</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>masterIdentifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.99902</p><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901 (use: official, )</p><p><b>status</b>: Current</p><p><b>docStatus</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://dvmd.de/fhir/CodeSystem/kdl AD010109}, {http://ihe-d.de/CodeSystems/IHEXDStypeCode BERI}\">Radiologischer Befundbericht Roentgen-Thorax</span></p><p><b>category</b>: <span title=\"Codes:{http://ihe-d.de/CodeSystems/IHEXDSclassCode BEF}\">Befundbericht</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-dokument-patient-1.html\">Maria Beispiel  Female, DoB: 1982-09-15 ( https://www.charite.de/fhir/sid/patientenidentifikation#DOK-TEST-001)</a></p><p><b>description</b>: Roentgen-Thorax Befundbericht mit Nachweis eines Infiltrats im rechten Unterlappen</p><p><b>securityLabel</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Confidentiality N}\">normal</span></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Language</b></td><td><b>Url</b></td><td><b>Title</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>PDF</td><td>German</td><td><a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://fhir.example.org/Binary/radiologie-befund-patient1-20240215\">https://fhir.example.org/Binary/radiologie-befund-patient1-20240215</a></td><td>Roentgen_Thorax_Befund.pdf</td><td>2024-02-15</td></tr></table><p><b>format</b>: <a href=\"https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds.582017.58mimeTypeSufficient\">IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds:2017:mimeTypeSufficient</a> (mimeType Sufficient)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Encounter</b></td><td><b>Event</b></td><td><b>Period</b></td><td><b>FacilityType</b></td><td><b>PracticeSetting</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Encounter-mii-exa-test-data-dokument-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --&gt; 2024-04-10</a></td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></td><td>2024-02-15 --&gt; 2024-02-15</td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung KHS}\">Krankenhaus</span></td><td><span title=\"Codes:{http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen RADI}\">Radiologie</span></td></tr></table></div>"
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
    },
    "request" : {
      "method" : "PUT",
      "url" : "DocumentReference/mii-exa-test-data-patient-1-dokument-2"
    }
  }]
}

```
