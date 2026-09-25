# Befunddokument Prostatabiopsie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Befunddokument Prostatabiopsie**

## Example Bundle: Befunddokument Prostatabiopsie



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-patho-befund-bundle-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : {
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001-DOC"
  },
  "type" : "document",
  "timestamp" : "2024-01-20T15:30:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Composition/mii-exa-test-data-patho-composition-1",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "mii-exa-test-data-patho-composition-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div id=\"befund-titel\"><a name=\"Composition_mii-exa-test-data-patho-composition-1\"> </a><b>Histopathologischer Befundbericht - Prostatabiopsie</b></div><table><tr id=\"befund-eingangsnummer\"><td>Eingangsnummer</td><td>E_24_001</td></tr><tr id=\"befund-status\"><td>Status</td><td>final</td></tr><tr id=\"befund-patient\"><td>Patient</td><td>Klaus Gewebeprobe (PATH-TEST-001)</td></tr><tr id=\"befund-datum\"><td>Datum</td><td>2024-01-20</td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
        "valueString" : "1"
      }],
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11526-1",
          "display" : "Pathology study"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
          "code" : "PATH"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "721967005",
          "display" : "Tissue pathology biopsy report"
        }],
        "text" : "Histopathologischer Befundbericht"
      },
      "category" : [{
        "coding" : [{
          "system" : "http://ihe-d.de/CodeSystems/IHEXDSclassCode",
          "code" : "BEF"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "date" : "2024-01-20T15:30:00+01:00",
      "author" : [{
        "reference" : "Organization/mii-exa-test-data-patho-organization-1",
        "display" : "Institut für Pathologie"
      }],
      "title" : "Histopathologischer Befundbericht - Prostatabiopsie",
      "attester" : [{
        "mode" : "legal",
        "party" : {
          "reference" : "Organization/mii-exa-test-data-patho-organization-1"
        }
      },
      {
        "mode" : "professional",
        "party" : {
          "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
        }
      }],
      "custodian" : {
        "reference" : "Organization/mii-exa-test-data-patho-organization-1"
      },
      "relatesTo" : [{
        "code" : "replaces",
        "targetReference" : {
          "reference" : "Composition/mii-exa-test-data-patho-composition-0"
        }
      }],
      "event" : [{
        "period" : {
          "start" : "2024-01-15",
          "end" : "2024-01-20"
        },
        "detail" : [{
          "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
        }]
      }],
      "section" : [{
        "title" : "Pathologiebefundbericht",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "60567-5",
            "display" : "Comprehensive pathology report panel"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h3>Klinische Angaben</h3><p>Erhöhter PSA-Wert (12,8 ng/ml). V.a. Prostatakarzinom. Bitte histologische Abklärung. Stanzbiopsie der rechten Prostata (2 Stanzen).</p><p>Der vollständige strukturierte Befund gliedert sich in die Sektionen Makroskopie, Mikroskopie, Intraoperative Beobachtung, Diagnostische Schlussfolgerung und Zusätzliche Beobachtungen.</p></div>"
        },
        "entry" : [{
          "reference" : "DiagnosticReport/mii-exa-test-data-patho-report-1"
        }],
        "section" : [{
          "title" : "Vorläufige Mitteilung",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Vorabmitteilung des Schnellschnittergebnisses am 2024-01-15.</p></div>"
          }
        }]
      },
      {
        "title" : "Makroskopie",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22634-0",
            "display" : "Pathology report gross observation"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Makroskopische Messungen beider Prostatastanzen, je 1 Zylinder pro Specimen.</p><table><thead><tr><th>Stanze</th><th>Lokalisation</th><th>Stanzenlänge (cm)</th></tr></thead><tbody><tr><td>01</td><td>Rechts lateral basal</td><td>1.8</td></tr><tr><td>03</td><td>Rechts lateral apikal</td><td>1.5</td></tr></tbody></table></div>"
        },
        "entry" : [{
          "reference" : "Observation/mii-exa-test-data-patho-macro-grouper-1"
        }],
        "section" : [{
          "title" : "Makroskopie Stanze 01",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Stanze 01: 1 Zylinder, 1,8 cm, rechts lateral basal.</p></div>"
          }
        }]
      },
      {
        "title" : "Mikroskopie",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22635-7",
            "display" : "Pathology report microscopic observation"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Adenokarzinom in Stanze 01 nachgewiesen: azinäres Adenokarzinom, Gleason-Score 3+4=7, ISUP-Gradgruppe 2, Tumoranteil 40%. Stanze 03 benigne (fibröse und glatte Muskulatur mit vereinzelten benignen Prostatadrüsen, keine Atypien).</p></div>"
        },
        "entry" : [{
          "reference" : "Observation/mii-exa-test-data-patho-micro-grouper-1"
        }],
        "section" : [{
          "title" : "Mikroskopie Stanze 01",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Stanze 01: azinäres Adenokarzinom, Gleason 3+4=7.</p></div>"
          }
        }]
      },
      {
        "title" : "Intraoperative Beobachtung",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "83321-0",
            "display" : "Pathology report intraoperative observation in Specimen Document"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Schnellschnitt Stanze 01: Nachweis eines azinären Adenokarzinoms; endgültige Gradierung am Paraffinmaterial.</p></div>"
        },
        "entry" : [{
          "reference" : "Observation/mii-exa-test-data-patho-intraop-grouper-1"
        }],
        "section" : [{
          "title" : "Schnellschnitt Stanze 01",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Schnellschnitt: Nachweis eines azinären Adenokarzinoms.</p></div>"
          }
        }]
      },
      {
        "title" : "Diagnostische Schlussfolgerung",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "22637-3",
            "display" : "Pathology report diagnosis"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>1 von 2 Stanzen tumorbefallen (Stanze 01, rechts lateral basal). Prozentualer Tumoranteil 40%, Tumorlänge gesamt 7,2 mm. Perineurale Infiltration nachgewiesen. Infiltration des periprostatischen Fettgewebes, Samenblaseninfiltration, lymphovaskuläre Invasion, intraduktales Karzinom, ASAP, High-grade-PIN und granulomatöse Prostatitis nicht nachgewiesen.</p><p><b>Diagnose:</b> Azinäres Adenokarzinom der Prostata (ICD-O 8140/3), Gleason-Score 3+4=7, ISUP-Gradgruppe 2.</p></div>"
        },
        "entry" : [{
          "reference" : "Observation/mii-exa-test-data-patho-conclusion-grouper-1"
        }],
        "section" : [{
          "title" : "Diagnose",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Azinäres Adenokarzinom der Prostata (ICD-O 8140/3), ISUP-Gradgruppe 2.</p></div>"
          }
        }]
      },
      {
        "title" : "Zusätzliche Beobachtungen",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "100969-5",
            "display" : "Pathology report additional specified observation in Specimen Narrative"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Immunhistochemie: Die Tumorzellen sind negativ für p63.</p></div>"
        },
        "entry" : [{
          "reference" : "Observation/mii-exa-test-data-patho-zusatz-grouper-1"
        }],
        "section" : [{
          "title" : "Immunhistochemie",
          "text" : {
            "status" : "additional",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Immunhistochemie: Tumorzellen negativ für p63.</p></div>"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-patho-patient-1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-patho-patient-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-patho-patient-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-patho-patient-1</b></p><a name=\"mii-exa-test-data-patho-patient-1\"> </a><a name=\"hcmii-exa-test-data-patho-patient-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
        "value" : "PATH-TEST-001"
      }],
      "name" : [{
        "family" : "Gewebeprobe",
        "given" : ["Klaus"]
      }],
      "gender" : "male",
      "birthDate" : "1963-06-30"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patho-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patho-encounter-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patho-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patho-encounter-1</b></p><a name=\"mii-exa-test-data-patho-encounter-1\"> </a><a name=\"hcmii-exa-test-data-patho-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>period</b>: 2024-01-10 --&gt; 2024-02-20</p></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "period" : {
        "start" : "2024-01-10",
        "end" : "2024-02-20"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patho-request-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patho-request-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patho-request-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patho-request-1</b></p><a name=\"mii-exa-test-data-patho-request-1\"> </a><a name=\"hcmii-exa-test-data-patho-request-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2024-01-20 16:00:00+0100; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request\">MII PR Patho Service Request</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Placer Identifier/PATH-RPT-2024-001, Filler Identifier/E_24_001</p><p><b>requisition</b>: Placer Group Number/REQ-2024-001</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 726007}\">Pathology consultation, comprehensive, records and specimen with report</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 66117-3}\">Prostate Pathology biopsy report</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patho-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --&gt; 2024-02-20</a></p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-2.html\">Practitioner Ulrich Stanze </a></p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 396152005}\">Prostate specific antigen above reference range</span></p><p><b>supportingInfo</b>: </p><ul><li><a href=\"Observation-mii-exa-test-data-patho-psa-1.html\">Observation Prostate specific Ag [Mass/volume] in Serum or Plasma</a></li><li><a href=\"Condition-mii-exa-test-data-patho-diagnose-verdacht-1.html\">Condition Bösartige Neubildung der Prostata</a></li><li><a href=\"List-mii-exa-test-data-patient-1-patho-hopi-1.html\">List for 'History of Present illness' for '-&gt;Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)'</a></li><li><a href=\"List-mii-exa-test-data-patient-1-patho-active-problems-1.html\">List for 'Problem list - Reported' for '-&gt;Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)'</a></li></ul><p><b>specimen</b>: </p><ul><li><a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></li><li><a href=\"Specimen-mii-exa-test-data-patho-specimen-03-part.html\">Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample</a></li></ul></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
        "value" : "PATH-RPT-2024-001"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      }],
      "requisition" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PGN",
            "display" : "Placer Group Number"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
        "value" : "REQ-2024-001"
      },
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726007",
          "display" : "Pathology consultation, comprehensive, records and specimen with report"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66117-3",
          "display" : "Prostate Pathology biopsy report"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
      },
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396152005",
          "display" : "Prostate specific antigen above reference range"
        }]
      }],
      "supportingInfo" : [{
        "reference" : "Observation/mii-exa-test-data-patho-psa-1"
      },
      {
        "reference" : "Condition/mii-exa-test-data-patho-diagnose-verdacht-1"
      },
      {
        "reference" : "List/mii-exa-test-data-patient-1-patho-hopi-1"
      },
      {
        "reference" : "List/mii-exa-test-data-patient-1-patho-active-problems-1"
      }],
      "specimen" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-01-block",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-01-block",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-01-block\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-patho-specimen-01-block</b></p><a name=\"mii-exa-test-data-patho-specimen-01-block\"> </a><a name=\"hcmii-exa-test-data-patho-specimen-01-block\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Core</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001_A_1</p><p><b>accessionIdentifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>parent</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-01-16 10:30:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 787377000}\">Gross examination and sampling of tissue specimen</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Description</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>Zuschnitt und Paraffineinbettung</td><td><span title=\"Codes:{http://snomed.info/sct 787376009}\">Preparation of formalin fixed paraffin embedded tissue specimen</span></td><td>2024-01-16 08:00:00+0100</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 311731000}\">Paraffin wax (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_A_1"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "706053007",
          "display" : "General specimen container (physical object)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "parent" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      }],
      "collection" : {
        "collectedDateTime" : "2024-01-16T10:30:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787377000",
            "display" : "Gross examination and sampling of tissue specimen"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Zuschnitt und Paraffineinbettung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787376009",
            "display" : "Preparation of formalin fixed paraffin embedded tissue specimen"
          }]
        },
        "timeDateTime" : "2024-01-16T08:00:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "706053007",
            "display" : "General specimen container (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "311731000",
            "display" : "Paraffin wax (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-01-part",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-01-part",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-01-part\"> </a>Prostatastanze 01, rechts lateral basal, Tru-cut-Biopsie in Formalin</div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "716902004",
              "display" : "Right basal peripheral zone of prostate"
            }]
          }
        },
        {
          "url" : "description",
          "valueString" : "Markiert mit roter Tinte"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
          "code" : "PRIMÄRPROBE",
          "display" : "Primärprobe"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "409603009",
            "display" : "Biosafety level 2 (qualifier value)"
          }]
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
        "value" : "BX24_001_01_A"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_A"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309134005",
          "display" : "Prostate tru-cut biopsy sample"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "receivedTime" : "2024-01-15T16:00:00+01:00",
      "request" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "collection" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
          "valueDateTime" : "2024-01-15T10:29:00+01:00"
        }],
        "collector" : {
          "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
        },
        "collectedDateTime" : "2024-01-15T10:30:00+01:00",
        "quantity" : {
          "value" : 1,
          "unit" : "Stanzzylinder",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        },
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "301759007",
            "display" : "Tru-cut biopsy of prostate (procedure)"
          }]
        },
        "bodySite" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite",
            "valueReference" : {
              "reference" : "BodyStructure/mii-exa-test-data-patho-body-structure-1"
            }
          }],
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "716902004",
            "display" : "Right basal peripheral zone of prostate"
          }]
        },
        "fastingStatusCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
            "code" : "NF"
          }]
        }
      },
      "processing" : [{
        "description" : "Formalinfixierung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787376009",
            "display" : "Preparation of formalin fixed paraffin embedded tissue specimen"
          }]
        },
        "additive" : [{
          "reference" : "Substance/mii-exa-test-data-patho-substance-formalin-1"
        }],
        "timePeriod" : {
          "start" : "2024-01-15T11:00:00+01:00",
          "end" : "2024-01-16T07:30:00+01:00"
        }
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434746001",
            "display" : "Specimen vial (physical object)"
          }]
        },
        "capacity" : {
          "value" : 10,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "specimenQuantity" : {
          "value" : 2,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434162003",
            "display" : "Neutral buffered formalin (substance)"
          }]
        }
      }],
      "note" : [{
        "text" : "Stanze mit roter Tinte markiert, sofort in Formalin fixiert."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-01-slide",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-01-slide",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-01-slide\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-patho-specimen-01-slide</b></p><a name=\"mii-exa-test-data-patho-specimen-01-slide\"> </a><a name=\"hcmii-exa-test-data-patho-specimen-01-slide\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Core</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001_A_1_1HE</p><p><b>accessionIdentifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>parent</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-block.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = General specimen container (physical object)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-01-17 08:00:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 2-8 °C</p><p><b>description</b>: Schnittherstellung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block</span></p><p><b>time</b>: 2024-01-17 09:00:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 2-8 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 127790008}\">Staining method</span></p><p><b>time</b>: 2024-01-17 09:15:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_A_1_1HE"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "parent" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-block"
      }],
      "collection" : {
        "collectedDateTime" : "2024-01-17T08:00:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block"
          }]
        },
        "timeDateTime" : "2024-01-17T09:00:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "127790008",
            "display" : "Staining method"
          }]
        },
        "timeDateTime" : "2024-01-17T09:15:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-03-block",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-03-block",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-03-block\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-patho-specimen-03-block</b></p><a name=\"mii-exa-test-data-patho-specimen-03-block\"> </a><a name=\"hcmii-exa-test-data-patho-specimen-03-block\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Core</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001_C_1</p><p><b>accessionIdentifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>parent</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-part.html\">Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-01-16 10:34:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 787377000}\">Gross examination and sampling of tissue specimen</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Description</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>Zuschnitt und Paraffineinbettung</td><td><span title=\"Codes:{http://snomed.info/sct 787376009}\">Preparation of formalin fixed paraffin embedded tissue specimen</span></td><td>2024-01-16 08:00:00+0100</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 706053007}\">General specimen container (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 311731000}\">Paraffin wax (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_C_1"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "706053007",
          "display" : "General specimen container (physical object)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "parent" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      }],
      "collection" : {
        "collectedDateTime" : "2024-01-16T10:34:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787377000",
            "display" : "Gross examination and sampling of tissue specimen"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Zuschnitt und Paraffineinbettung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "787376009",
            "display" : "Preparation of formalin fixed paraffin embedded tissue specimen"
          }]
        },
        "timeDateTime" : "2024-01-16T08:00:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "706053007",
            "display" : "General specimen container (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "311731000",
            "display" : "Paraffin wax (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-03-part",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-03-part",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-03-part\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-patho-specimen-03-part</b></p><a name=\"mii-exa-test-data-patho-specimen-03-part\"> </a><a name=\"hcmii-exa-test-data-patho-specimen-03-part\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Core</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>MII EX Biobank Feature R5</b></p><ul><li>type: <span title=\"Codes:{http://snomed.info/sct 716934008}\">Structure of apical part of peripheral zone of right half prostate (body structure)</span></li><li>description: Markiert mit grüner Tinte</li></ul></blockquote><p><b>identifier</b>: Placer Identifier/BX24_001_03_A, Filler Identifier/E_24_001_C</p><p><b>accessionIdentifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 309134005}\">Prostate tru-cut biopsy sample</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>request</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collector</b></td><td><b>Collected[x]</b></td><td><b>Method</b></td><td><b>BodySite</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-mii-exa-test-data-patho-practitioner-2.html\">Practitioner Ulrich Stanze </a></td><td>2024-01-15 10:34:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 301759007}\">Tru-cut biopsy of prostate (procedure)</span></td><td><span title=\"Codes:{http://snomed.info/sct 716934008}\">Structure of apical part of peripheral zone of right half prostate (body structure)</span></td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 434746001}\">Specimen vial (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 434162003}\">Neutral buffered formalin (substance)</span></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "716934008",
              "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
            }]
          }
        },
        {
          "url" : "description",
          "valueString" : "Markiert mit grüner Tinte"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
        "value" : "BX24_001_03_A"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_C"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309134005",
          "display" : "Prostate tru-cut biopsy sample"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "request" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "collection" : {
        "collector" : {
          "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
        },
        "collectedDateTime" : "2024-01-15T10:34:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "301759007",
            "display" : "Tru-cut biopsy of prostate (procedure)"
          }]
        },
        "bodySite" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "716934008",
            "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
          }]
        }
      },
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434746001",
            "display" : "Specimen vial (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434162003",
            "display" : "Neutral buffered formalin (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patho-specimen-03-slide",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-patho-specimen-03-slide",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-patho-specimen-03-slide\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-patho-specimen-03-slide</b></p><a name=\"mii-exa-test-data-patho-specimen-03-slide\"> </a><a name=\"hcmii-exa-test-data-patho-specimen-03-slide\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore\">MII PR Biobank Specimen Bioprobe Core</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001_C_1_1HE</p><p><b>accessionIdentifier</b>: <code>https://www.charite.de/fhir/sid/patho/befundbericht</code>/E_24_001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 430856003}\">Tissue section (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>parent</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-block.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_C_1; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = General specimen container (physical object)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-01-17 08:00:00+0100</td><td><span title=\"Codes:{http://snomed.info/sct 13283003}\">Tissue processing technique (procedure)</span></td></tr></table><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 2-8 °C</p><p><b>description</b>: Schnittherstellung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 434472006}\">Sectioning of tissue block</span></p><p><b>time</b>: 2024-01-17 09:00:00+0100</p></blockquote><blockquote><p><b>processing</b></p><p><b>MII EX Biobank Temperaturbedingungen</b>: 2-8 °C</p><p><b>description</b>: HE-Färbung</p><p><b>procedure</b>: <span title=\"Codes:{http://snomed.info/sct 127790008}\">Staining method</span></p><p><b>time</b>: 2024-01-17 09:15:00+0100</p></blockquote><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Additive[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 433466003}\">Microscope slide (physical object)</span></td><td><span title=\"Codes:{http://snomed.info/sct 430862008}\">Microscope slide mounting medium (substance)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001_C_1_1HE"
      }],
      "accessionIdentifier" : {
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430856003",
          "display" : "Tissue section (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "parent" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-block"
      }],
      "collection" : {
        "collectedDateTime" : "2024-01-17T08:00:00+01:00",
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "13283003",
            "display" : "Tissue processing technique (procedure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "Schnittherstellung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "434472006",
            "display" : "Sectioning of tissue block"
          }]
        },
        "timeDateTime" : "2024-01-17T09:00:00+01:00"
      },
      {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "description" : "HE-Färbung",
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "127790008",
            "display" : "Staining method"
          }]
        },
        "timeDateTime" : "2024-01-17T09:15:00+01:00"
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "433466003",
            "display" : "Microscope slide (physical object)"
          }]
        },
        "additiveCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "430862008",
            "display" : "Microscope slide mounting medium (substance)"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-patho-report-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-patho-report-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-patho-report-1\"> </a>Pathologiebericht Prostatastanzen E_24_001: Azinäres Adenokarzinom, Gleason 3+4=7, ISUP 2</div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition",
        "valueReference" : {
          "reference" : "Composition/mii-exa-test-data-patho-composition-1"
        }
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact",
        "valueRelatedArtifact" : {
          "type" : "predecessor",
          "label" : "E_22_318",
          "display" : "Vorbefund: Prostatastanzbiopsie vom 2022-11-08, kein Karzinomnachweis",
          "url" : "https://www.charite.de/fhir/sid/patho/report/E_22_318.pdf"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession ID"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
        "value" : "E_24_001"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "SP",
          "display" : "Surgical Pathology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60568-3",
          "display" : "Pathology Synoptic report"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "effectiveDateTime" : "2024-01-20T15:00:00+01:00",
      "issued" : "2024-01-20T15:30:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "specimen" : [{
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-block"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-block"
      },
      {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-slide"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-patho-intraop-grouper-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macro-grouper-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-micro-grouper-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-zusatz-grouper-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-conclusion-grouper-1"
      }],
      "imagingStudy" : [{
        "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
      }],
      "media" : [{
        "comment" : "HE-Schnitt der Stanze 01, infiltriert durch Karzinomverbände, fotodokumentiert",
        "link" : {
          "reference" : "Media/mii-exa-test-data-patho-image-1"
        }
      }],
      "conclusion" : "Azinäres Adenokarzinom der Prostata, Gleason-Score 7a (3+4), ISUP-Gradgruppe 2, Nachweis in 1 von 2 Stanzen (Stanze 01, rechts lateral basal), perineurale Infiltration. Stanze 03 tumorfrei.",
      "conclusionCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399068003",
          "display" : "Malignant tumor of prostate (disorder)"
        }]
      }],
      "presentedForm" : [{
        "contentType" : "application/pdf",
        "language" : "de",
        "url" : "https://www.charite.de/fhir/sid/patho/report/E_24_001.pdf",
        "title" : "Histopathologischer Befundbericht E_24_001 (PDF)"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-asap",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-asap",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-asap\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-asap</b></p><a name=\"mii-exa-test-data-patho-asap\"> </a><a name=\"hcmii-exa-test-data-patho-asap\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 16294321000119104}\">Atypical small acinar proliferation of prostate (disorder)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373067005}\">No (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "16294321000119104",
          "display" : "Atypical small acinar proliferation of prostate (disorder)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-conclusion-grouper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-conclusion-grouper-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-conclusion-grouper-1\"> </a>Diagnostische Schlussfolgerung: Azinäres Adenokarzinom der Prostata, Gleason 3+4=7, ISUP 2</div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_CONCLUSION"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "note" : [{
        "text" : "Diagnose auf Basis von Mikroskopie und Immunhistochemie beider Stanzen."
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41216001",
          "display" : "Prostate"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "104157003",
          "display" : "Light microscopy (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-histological-type-icdo-3"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-morphology-free-text"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-icdo-version"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-gleason-score-total"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-percentage-gleason-45"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-grading-group-isup"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-histological-grade-who"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-positive-cores-right"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-positive-cores-left"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-ratio-positive-cores"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-percentage-tumor-total"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-tumor-length-total"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-perineural-infiltration"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-seminal-vesicle-invasion"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-lymphovascular-invasion"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-periprostatatic-fat-invasion"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-intraductal-carcinoma"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-asap"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-high-grade-pin"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-granulomatous-prostatitis"
      }],
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-patho-primaer-gleason-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-sekundaer-gleason-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-gleason-grading-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-tumoranteil-01"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-gleason-grading-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-gleason-grading-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-gleason-grading-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-gleason-grading-01</b></p><a name=\"mii-exa-test-data-patho-gleason-grading-01\"> </a><a name=\"hcmii-exa-test-data-patho-gleason-grading-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1812491000004107}\">Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1279714001}\">International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1812491000004107",
          "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1279714001",
          "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
        }]
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-gleason-score-total",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-gleason-score-total",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-gleason-score-total\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-gleason-score-total</b></p><a name=\"mii-exa-test-data-patho-gleason-score-total\"> </a><a name=\"hcmii-exa-test-data-patho-gleason-score-total\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2024-01-20 16:00:00+0100; </p><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/patho/befund</code>/E_24_001_GLEASON</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 35266-6}, {http://snomed.info/sct 385377005}\">Gleason score in Specimen Qualitative</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 57403001}\">Gleason grade score 7</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 104157003}\">Light microscopy (procedure)</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-test-data-patho-primary-gleason-pattern.html\">Observation Gleason pattern.primary in Prostate tumor</a></li><li><a href=\"Observation-mii-exa-test-data-patho-secondary-gleason-pattern.html\">Observation Gleason pattern.secondary in Prostate tumor</a></li></ul><p><b>derivedFrom</b>: </p><ul><li><a href=\"Observation-mii-exa-test-data-patho-primary-gleason-pattern.html\">Observation Gleason pattern.primary in Prostate tumor</a></li><li><a href=\"Observation-mii-exa-test-data-patho-secondary-gleason-pattern.html\">Observation Gleason pattern.secondary in Prostate tumor</a></li></ul><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>DataAbsentReason</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 44641-9}\">Percent of Gleason pattern 4 and 5 in Prostate tumor</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_GLEASON"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "35266-6",
          "display" : "Gleason score in Specimen Qualitative"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385377005",
          "display" : "Gleason grade finding for prostatic cancer"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "57403001",
          "display" : "Gleason grade score 7"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "104157003",
          "display" : "Light microscopy (procedure)"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
      }],
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "44641-9",
            "display" : "Percent of Gleason pattern 4 and 5 in Prostate tumor"
          }]
        },
        "dataAbsentReason" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "unknown",
            "display" : "Unknown"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-grading-group-isup",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-grading-group-isup",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-grading-group-isup\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-grading-group-isup</b></p><a name=\"mii-exa-test-data-patho-grading-group-isup\"> </a><a name=\"hcmii-exa-test-data-patho-grading-group-isup\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1812491000004107}\">Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1279714001}\">International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1812491000004107",
          "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1279714001",
          "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-granulomatous-prostatitis",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-granulomatous-prostatitis",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-granulomatous-prostatitis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-granulomatous-prostatitis</b></p><a name=\"mii-exa-test-data-patho-granulomatous-prostatitis\"> </a><a name=\"hcmii-exa-test-data-patho-granulomatous-prostatitis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 94665-7}\">Granulomatous prostatitis [Presence] in Specimen by Microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "94665-7",
          "display" : "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-high-grade-pin",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-high-grade-pin",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-high-grade-pin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-high-grade-pin</b></p><a name=\"mii-exa-test-data-patho-high-grade-pin\"> </a><a name=\"hcmii-exa-test-data-patho-high-grade-pin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 94666-5}\">High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "94666-5",
          "display" : "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-histo-typ-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-histo-typ-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-histo-typ-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-histo-typ-01</b></p><a name=\"mii-exa-test-data-patho-histo-typ-01\"> </a><a name=\"hcmii-exa-test-data-patho-histo-typ-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 59847-4}\">Histology and Behavior ICD-O-3 Cancer</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{urn:oid:2.16.840.1.113883.6.43.1 8140/3}\">Azinäres Adenokarzinom</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "59847-4",
          "display" : "Histology and Behavior ICD-O-3 Cancer"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:oid:2.16.840.1.113883.6.43.1",
          "version" : "3.2",
          "code" : "8140/3",
          "display" : "Azinäres Adenokarzinom"
        }]
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-histo-typ-03",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-histo-typ-03",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-histo-typ-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-histo-typ-03</b></p><a name=\"mii-exa-test-data-patho-histo-typ-03\"> </a><a name=\"hcmii-exa-test-data-patho-histo-typ-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 59847-4}\">Histology and Behavior ICD-O-3 Cancer</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 110396000}\">No evidence of malignant neoplasm (finding)</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716904003}\">Right anterior basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_C_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "59847-4",
          "display" : "Histology and Behavior ICD-O-3 Cancer"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110396000",
          "display" : "No evidence of malignant neoplasm (finding)"
        }]
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716904003",
          "display" : "Right anterior basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-histological-grade-who",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-histological-grade-who",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-histological-grade-who\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-histological-grade-who</b></p><a name=\"mii-exa-test-data-patho-histological-grade-who\"> </a><a name=\"hcmii-exa-test-data-patho-histological-grade-who\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21858-6}\">Grade Cancer</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1663004}\">G2: mäßig differenziert</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21858-6",
          "display" : "Grade Cancer"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1663004",
          "display" : "Moderately differentiated (qualifier value)"
        }],
        "text" : "G2: mäßig differenziert"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-histological-type-icdo-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-histological-type-icdo-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-histological-type-icdo-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-histological-type-icdo-3</b></p><a name=\"mii-exa-test-data-patho-histological-type-icdo-3\"> </a><a name=\"hcmii-exa-test-data-patho-histological-type-icdo-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 59847-4}\">Histology and Behavior ICD-O-3 Cancer</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{urn:oid:2.16.840.1.113883.6.43.1 8140/3}\">Azinäres Adenokarzinom</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "59847-4",
          "display" : "Histology and Behavior ICD-O-3 Cancer"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:oid:2.16.840.1.113883.6.43.1",
          "version" : "3.2",
          "code" : "8140/3",
          "display" : "Azinäres Adenokarzinom"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-icdo-version",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-icdo-version",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-icdo-version\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-icdo-version</b></p><a name=\"mii-exa-test-data-patho-icdo-version\"> </a><a name=\"hcmii-exa-test-data-patho-icdo-version\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 397005006}\">World Health Organization tumor classification (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{urn:oid:1.2.276.0.76.3.1.131.1.5.153 33}\">ICD-O-3 2. Auflage 2019</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "397005006",
          "display" : "World Health Organization tumor classification (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:oid:1.2.276.0.76.3.1.131.1.5.153",
          "code" : "33",
          "display" : "ICD-O-3 2. Auflage 2019"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-intraductal-carcinoma",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-intraductal-carcinoma",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-intraductal-carcinoma\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-intraductal-carcinoma</b></p><a name=\"mii-exa-test-data-patho-intraductal-carcinoma\"> </a><a name=\"hcmii-exa-test-data-patho-intraductal-carcinoma\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1162814007}\">Non-infiltrating intraductal carcinoma (morphologic abnormality)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1162814007",
          "display" : "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-intraop-befund-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-intraop-befund-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-intraop-befund-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-intraop-befund-1</b></p><a name=\"mii-exa-test-data-patho-intraop-befund-1\"> </a><a name=\"hcmii-exa-test-data-patho-intraop-befund-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 83321-0}\">Pathology report intraoperative observation in Specimen Document</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371441004}\">Histologic type</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 11:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 45410002}\">Acinar adenocarcinoma</span></p><p><b>note</b>: </p><blockquote><div><p>Schnellschnittdiagnose: Nachweis eines azinären Adenokarzinoms, endgültige Gradierung am Paraffinmaterial.</p>\n</div></blockquote><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "83321-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371441004",
          "display" : "Histologic type"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T11:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "45410002",
          "display" : "Acinar adenocarcinoma"
        }]
      },
      "note" : [{
        "text" : "Schnellschnittdiagnose: Nachweis eines azinären Adenokarzinoms, endgültige Gradierung am Paraffinmaterial."
      }],
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-intraop-grouper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-intraop-grouper-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-intraop-grouper-1\"> </a>Intraoperativer Grouper: Schnellschnitt-Befund Stanze 01</div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_INTRAOP"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "83321-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T11:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41216001",
          "display" : "Prostate"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "20135006",
          "display" : "Frozen section procedure (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-intraop-befund-1"
      }],
      "derivedFrom" : [{
        "reference" : "Media/mii-exa-test-data-patho-image-1"
      },
      {
        "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-lymphovascular-invasion",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-lymphovascular-invasion",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-lymphovascular-invasion\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-lymphovascular-invasion</b></p><a name=\"mii-exa-test-data-patho-lymphovascular-invasion\"> </a><a name=\"hcmii-exa-test-data-patho-lymphovascular-invasion\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33761-8}\">Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33761-8",
          "display" : "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macro-grouper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macro-grouper-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macro-grouper-1\"> </a>Makroskopie-Grouper: Messungen der Prostatastanzen 01 und 03</div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_MAKRO"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueString" : "Makroskopische Messungen beider Prostatastanzen",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41216001",
          "display" : "Prostate"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "787377000",
          "display" : "Gross examination and sampling of tissue specimen (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-length-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-length-03"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-03"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-laterality-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-macroscopic-laterality-03"
      }],
      "derivedFrom" : [{
        "reference" : "Media/mii-exa-test-data-patho-image-1"
      },
      {
        "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-cylinder-count-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-cylinder-count-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-cylinder-count-01</b></p><a name=\"mii-exa-test-data-patho-macroscopic-cylinder-count-01\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-cylinder-count-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44652-6}\">Total number of cores in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:10:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1 count<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>note</b>: </p><blockquote><div><p>Ein intakter Stanzzylinder</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44652-6",
          "display" : "Total number of cores in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:10:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 1,
        "unit" : "count",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "note" : [{
        "text" : "Ein intakter Stanzzylinder"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-03",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-cylinder-count-03",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-cylinder-count-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-cylinder-count-03</b></p><a name=\"mii-exa-test-data-patho-macroscopic-cylinder-count-03\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-cylinder-count-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44652-6}\">Total number of cores in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:14:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1 count<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{count} = '{count}')</span></p><p><b>note</b>: </p><blockquote><div><p>Ein intakter Stanzzylinder</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716934008}\">Structure of apical part of peripheral zone of right half prostate (body structure)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-part.html\">Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44652-6",
          "display" : "Total number of cores in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:14:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 1,
        "unit" : "count",
        "system" : "http://unitsofmeasure.org",
        "code" : "{count}"
      },
      "note" : [{
        "text" : "Ein intakter Stanzzylinder"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716934008",
          "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-laterality-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-laterality-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-laterality-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-laterality-01</b></p><a name=\"mii-exa-test-data-patho-macroscopic-laterality-01\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-laterality-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 20228-3}\">Anatomic part Laterality</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:05:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 24028007}\">Right (qualifier value)</span></p><p><b>note</b>: </p><blockquote><div><p>Rechte Prostataregion</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "20228-3",
          "display" : "Anatomic part Laterality"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:05:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24028007",
          "display" : "Right (qualifier value)"
        }]
      },
      "note" : [{
        "text" : "Rechte Prostataregion"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-laterality-03",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-laterality-03",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-laterality-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-laterality-03</b></p><a name=\"mii-exa-test-data-patho-macroscopic-laterality-03\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-laterality-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 20228-3}\">Anatomic part Laterality</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:05:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 24028007}\">Right (qualifier value)</span></p><p><b>note</b>: </p><blockquote><div><p>Rechte Prostataregion</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716934008}\">Structure of apical part of peripheral zone of right half prostate (body structure)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-part.html\">Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "20228-3",
          "display" : "Anatomic part Laterality"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:05:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24028007",
          "display" : "Right (qualifier value)"
        }]
      },
      "note" : [{
        "text" : "Rechte Prostataregion"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716934008",
          "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-length-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-length-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-length-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-length-01</b></p><a name=\"mii-exa-test-data-patho-macroscopic-length-01\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-length-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44619-5}\">Length of tissue core(s)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:10:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1.8 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p><p><b>note</b>: </p><blockquote><div><p>Stanzzylinder Gesamtlänge 1.8cm</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-part.html\">Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44619-5",
          "display" : "Length of tissue core(s)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:10:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 1.8,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      },
      "note" : [{
        "text" : "Stanzzylinder Gesamtlänge 1.8cm"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-macroscopic-length-03",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-macroscopic-length-03",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-macroscopic-length-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-macroscopic-length-03</b></p><a name=\"mii-exa-test-data-patho-macroscopic-length-03\"> </a><a name=\"hcmii-exa-test-data-patho-macroscopic-length-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22634-0}\">Pathology report gross observation Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44619-5}\">Length of tissue core(s)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-15 14:14:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1.5 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p><p><b>note</b>: </p><blockquote><div><p>Stanzzylinder Gesamtlänge 1.5cm</p>\n</div></blockquote><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716934008}\">Structure of apical part of peripheral zone of right half prostate (body structure)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-part.html\">Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22634-0"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44619-5",
          "display" : "Length of tissue core(s)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-15T14:14:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 1.5,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      },
      "note" : [{
        "text" : "Stanzzylinder Gesamtlänge 1.5cm"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716934008",
          "display" : "Structure of apical part of peripheral zone of right half prostate (body structure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-micro-grouper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-micro-grouper-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-micro-grouper-1\"> </a>Mikroskopie-Grouper: Befunde der Prostatastanzen 01 und 03</div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_MIKRO"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueString" : "Mikroskopische Befunde beider Prostatastanzen",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41216001",
          "display" : "Prostate"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "104157003",
          "display" : "Light microscopy (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-histo-typ-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-morph-text-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-primaer-gleason-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-sekundaer-gleason-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-gleason-grading-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-tumoranteil-01"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-histo-typ-03"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patho-morph-text-03"
      }],
      "derivedFrom" : [{
        "reference" : "Media/mii-exa-test-data-patho-image-1"
      },
      {
        "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-morph-text-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-morph-text-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-morph-text-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-morph-text-01</b></p><a name=\"mii-exa-test-data-patho-morph-text-01\"> </a><a name=\"hcmii-exa-test-data-patho-morph-text-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33731-1}\">Histology type in Cancer specimen Narrative</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: Unregelmäßige, infiltrative Drüsenstrukturen, typisch für das azinäre Adenokarzinom. Gleason Pattern 3 mit fusion pattern (Pattern 4) kombiniert.</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33731-1",
          "display" : "Histology type in Cancer specimen Narrative"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueString" : "Unregelmäßige, infiltrative Drüsenstrukturen, typisch für das azinäre Adenokarzinom. Gleason Pattern 3 mit fusion pattern (Pattern 4) kombiniert.",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-morph-text-03",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-morph-text-03",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-morph-text-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-morph-text-03</b></p><a name=\"mii-exa-test-data-patho-morph-text-03\"> </a><a name=\"hcmii-exa-test-data-patho-morph-text-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33731-1}\">Histology type in Cancer specimen Narrative</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: Benigne Prostatadrüsen mit regelrechten azinären Strukturen. Vereinzelt Fibrose. Kein Anhalt für maligne Veränderungen.</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716904003}\">Right anterior basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-03-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_C_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33731-1",
          "display" : "Histology type in Cancer specimen Narrative"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueString" : "Benigne Prostatadrüsen mit regelrechten azinären Strukturen. Vereinzelt Fibrose. Kein Anhalt für maligne Veränderungen.",
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716904003",
          "display" : "Right anterior basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-morphology-free-text",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-morphology-free-text",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-morphology-free-text\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-morphology-free-text</b></p><a name=\"mii-exa-test-data-patho-morphology-free-text\"> </a><a name=\"hcmii-exa-test-data-patho-morphology-free-text\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33731-1}\">Histology type in Cancer specimen Narrative</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: Konventionelles Adenokarzinom der Prostata mit prominenten azidophilen Nukleolen</p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33731-1",
          "display" : "Histology type in Cancer specimen Narrative"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueString" : "Konventionelles Adenokarzinom der Prostata mit prominenten azidophilen Nukleolen"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-p63-befund-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-p63-befund-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-p63-befund-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-p63-befund-1</b></p><a name=\"mii-exa-test-data-patho-p63-befund-1\"> </a><a name=\"hcmii-exa-test-data-patho-p63-befund-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 100969-5}\">Pathology report additional specified observation in Specimen Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 101548-6}\">P63 protein [Interpretation] in Blood or Tissue Qualitative</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-18 09:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA11883-8}\">Die Tumorzellen sind negativ für p63</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p><p><b>derivedFrom</b>: <a href=\"Media-mii-exa-test-data-patho-image-1.html\">Media: status = completed; type = Image; modality = Scanner; created[x] = 2024-01-17 10:30:00+0100</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "100969-5"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101548-6"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-18T09:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA11883-8"
        }],
        "text" : "Die Tumorzellen sind negativ für p63"
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      },
      "derivedFrom" : [{
        "reference" : "Media/mii-exa-test-data-patho-image-1"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-percentage-gleason-45",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-percentage-gleason-45",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-percentage-gleason-45\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-percentage-gleason-45</b></p><a name=\"mii-exa-test-data-patho-percentage-gleason-45\"> </a><a name=\"hcmii-exa-test-data-patho-percentage-gleason-45\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 94735-8}\">Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 30 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "94735-8",
          "display" : "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 30,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-percentage-tumor-total",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-percentage-tumor-total",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-percentage-tumor-total\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-percentage-tumor-total</b></p><a name=\"mii-exa-test-data-patho-percentage-tumor-total\"> </a><a name=\"hcmii-exa-test-data-patho-percentage-tumor-total\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44651-8}\">Tissue cores.positive.carcinoma in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 40 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44651-8",
          "display" : "Tissue cores.positive.carcinoma in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 40,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-perineural-infiltration",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-perineural-infiltration",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-perineural-infiltration\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-perineural-infiltration</b></p><a name=\"mii-exa-test-data-patho-perineural-infiltration\"> </a><a name=\"hcmii-exa-test-data-patho-perineural-infiltration\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92837-4}\">Perineural invasion [Presence] in Cancer specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 52101004}\">Present (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92837-4",
          "display" : "Perineural invasion [Presence] in Cancer specimen"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "52101004",
          "display" : "Present (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-periprostatatic-fat-invasion",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-periprostatatic-fat-invasion",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-periprostatatic-fat-invasion\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-periprostatatic-fat-invasion</b></p><a name=\"mii-exa-test-data-patho-periprostatatic-fat-invasion\"> </a><a name=\"hcmii-exa-test-data-patho-periprostatatic-fat-invasion\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44625-2}\">Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44625-2",
          "display" : "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-positive-cores-left",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-positive-cores-left",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-positive-cores-left\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-positive-cores-left</b></p><a name=\"mii-exa-test-data-patho-positive-cores-left\"> </a><a name=\"hcmii-exa-test-data-patho-positive-cores-left\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44651-8}\">Tissue cores.positive.carcinoma in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 0</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 7771000}\">Left (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44651-8",
          "display" : "Tissue cores.positive.carcinoma in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 0
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "7771000",
          "display" : "Left (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-positive-cores-right",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-positive-cores-right",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-positive-cores-right\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-positive-cores-right</b></p><a name=\"mii-exa-test-data-patho-positive-cores-right\"> </a><a name=\"hcmii-exa-test-data-patho-positive-cores-right\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44651-8}\">Tissue cores.positive.carcinoma in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 24028007}\">Right (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44651-8",
          "display" : "Tissue cores.positive.carcinoma in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 1
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24028007",
          "display" : "Right (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-primaer-gleason-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-primaer-gleason-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-primaer-gleason-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-primaer-gleason-01</b></p><a name=\"mii-exa-test-data-patho-primaer-gleason-01\"> </a><a name=\"hcmii-exa-test-data-patho-primaer-gleason-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44641-9}, {http://snomed.info/sct 384994009}\">Gleason pattern.primary in Prostate tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369772003}\">Gleason Pattern 3 (finding)</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44641-9",
          "display" : "Gleason pattern.primary in Prostate tumor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "384994009",
          "display" : "Primary Gleason pattern (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369772003",
          "display" : "Gleason Pattern 3 (finding)"
        }]
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-primary-gleason-pattern",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-primary-gleason-pattern",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-primary-gleason-pattern\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-primary-gleason-pattern</b></p><a name=\"mii-exa-test-data-patho-primary-gleason-pattern\"> </a><a name=\"hcmii-exa-test-data-patho-primary-gleason-pattern\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44641-9}, {http://snomed.info/sct 384994009}\">Gleason pattern.primary in Prostate tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369772003}\">Gleason Pattern 3 (finding)</span></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-test-data-patho-primaer-gleason-01.html\">Observation Gleason pattern.primary in Prostate tumor</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44641-9",
          "display" : "Gleason pattern.primary in Prostate tumor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "384994009",
          "display" : "Primary Gleason pattern (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369772003",
          "display" : "Gleason Pattern 3 (finding)"
        }]
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-patho-primaer-gleason-01"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-psa-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-psa-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-psa-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-psa-1</b></p><a name=\"mii-exa-test-data-patho-psa-1\"> </a><a name=\"hcmii-exa-test-data-patho-psa-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa\">MII PR Onkologie PSA-Wert</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://loinc.org LP7839-6}\">Pathology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2857-1}\">Prostate specific Ag [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-10 08:00:00+0100</p><p><b>value</b>: 12.8 ng/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeng/mL = 'ng/mL')</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>0 ng/ml</td><td>3 ng/ml</td><td>Normbereich für Männer über 50 Jahre</td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LP7839-6",
          "display" : "Pathology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2857-1",
          "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-10T08:00:00+01:00",
      "valueQuantity" : {
        "value" : 12.8,
        "unit" : "ng/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ng/mL"
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "ng/ml"
        },
        "high" : {
          "value" : 3,
          "unit" : "ng/ml"
        },
        "text" : "Normbereich für Männer über 50 Jahre"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-ratio-positive-cores",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-ratio-positive-cores",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-ratio-positive-cores\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-ratio-positive-cores</b></p><a name=\"mii-exa-test-data-patho-ratio-positive-cores\"> </a><a name=\"hcmii-exa-test-data-patho-ratio-positive-cores\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 372303007}\">Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 1 cores/2 cores</p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "372303007",
          "display" : "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueRatio" : {
        "numerator" : {
          "value" : 1,
          "unit" : "cores"
        },
        "denominator" : {
          "value" : 2,
          "unit" : "cores"
        }
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-secondary-gleason-pattern",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-secondary-gleason-pattern",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-secondary-gleason-pattern\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-secondary-gleason-pattern</b></p><a name=\"mii-exa-test-data-patho-secondary-gleason-pattern\"> </a><a name=\"hcmii-exa-test-data-patho-secondary-gleason-pattern\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44642-7}, {http://snomed.info/sct 384995005}\">Gleason pattern.secondary in Prostate tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369773008}\">Gleason Pattern 4 (finding)</span></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-test-data-patho-sekundaer-gleason-01.html\">Observation Gleason pattern.secondary in Prostate tumor</a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44642-7",
          "display" : "Gleason pattern.secondary in Prostate tumor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "384995005",
          "display" : "Secondary Gleason pattern (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369773008",
          "display" : "Gleason Pattern 4 (finding)"
        }]
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-patho-sekundaer-gleason-01"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-sekundaer-gleason-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-sekundaer-gleason-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-sekundaer-gleason-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-sekundaer-gleason-01</b></p><a name=\"mii-exa-test-data-patho-sekundaer-gleason-01\"> </a><a name=\"hcmii-exa-test-data-patho-sekundaer-gleason-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44642-7}, {http://snomed.info/sct 384995005}\">Gleason pattern.secondary in Prostate tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369773008}\">Gleason Pattern 4 (finding)</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44642-7",
          "display" : "Gleason pattern.secondary in Prostate tumor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "384995005",
          "display" : "Secondary Gleason pattern (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369773008",
          "display" : "Gleason Pattern 4 (finding)"
        }]
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-seminal-vesicle-invasion",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-seminal-vesicle-invasion",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-seminal-vesicle-invasion\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-seminal-vesicle-invasion</b></p><a name=\"mii-exa-test-data-patho-seminal-vesicle-invasion\"> </a><a name=\"hcmii-exa-test-data-patho-seminal-vesicle-invasion\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44626-0}\">Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 47492008}\">Not seen (qualifier value)</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44626-0",
          "display" : "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "47492008",
          "display" : "Not seen (qualifier value)"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-tumor-length-total",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-tumor-length-total",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-tumor-length-total\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-tumor-length-total</b></p><a name=\"mii-exa-test-data-patho-tumor-length-total\"> </a><a name=\"hcmii-exa-test-data-patho-tumor-length-total\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patho-request-1.html\">ServiceRequest Prostate Pathology biopsy report</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22637-3}\">Pathology report final diagnosis Narrative</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44618-7}\">Total linear mm of carcinoma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-20</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 7.2 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44618-7",
          "display" : "Total linear mm of carcinoma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-20",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 7.2,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-tumoranteil-01",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-tumoranteil-01",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-tumoranteil-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patho-tumoranteil-01</b></p><a name=\"mii-exa-test-data-patho-tumoranteil-01\"> </a><a name=\"hcmii-exa-test-data-patho-tumoranteil-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding\">MII PR Patho Finding</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://loinc.org 22635-7}\">Pathology report microscopic observation Narrative Other stain</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 385396009}\">Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>effective</b>: 2024-01-17 10:00:00+0100</p><p><b>performer</b>: <a href=\"Practitioner-mii-exa-test-data-patho-practitioner-1.html\">Practitioner Paula Schnittbild </a></p><p><b>value</b>: 40 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 716902004}\">Right basal peripheral zone of prostate</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-patho-specimen-01-slide.html\">Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22635-7"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385396009",
          "display" : "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "valueQuantity" : {
        "value" : 40,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716902004",
          "display" : "Right basal peripheral zone of prostate"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patho-zusatz-grouper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patho-zusatz-grouper-1",
      "meta" : {
        "lastUpdated" : "2024-01-20T16:00:00+01:00",
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patho-zusatz-grouper-1\"> </a>Zusatzbefund-Grouper: Immunhistochemie p63</div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patho/befund",
        "value" : "E_24_001_ZUSATZ"
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "100969-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "effectiveDateTime" : "2024-01-18T09:00:00+01:00",
      "performer" : [{
        "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41216001",
          "display" : "Prostate"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "117617002",
          "display" : "Immunohistochemistry procedure (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-patho-p63-befund-1"
      }],
      "derivedFrom" : [{
        "reference" : "Media/mii-exa-test-data-patho-image-1"
      },
      {
        "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patho-diagnose-verdacht-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patho-diagnose-verdacht-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patho-diagnose-verdacht-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patho-diagnose-verdacht-1</b></p><a name=\"mii-exa-test-data-patho-diagnose-verdacht-1\"> </a><a name=\"hcmii-exa-test-data-patho-diagnose-verdacht-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor\">MII PR Onkologie Diagnose Primärtumor</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Condition Asserted Date</b>: 2024-01-10</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 55342001}\">Neoplastic disease</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C61}, {http://snomed.info/sct 126906006}, {http://id.who.int/icd/release/10 C61}, {http://id.who.int/icd/release/11/mms 2C82}\">Bösartige Neubildung der Prostata</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patho-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --&gt; 2024-02-20</a></p><p><b>onset</b>: 2024-01-10</p><p><b>recordedDate</b>: 2024-01-10</p><p><b>note</b>: </p><blockquote><div><p>V.a. Prostatakarzinom bei PSA 12,8 ng/ml und PI-RADS 4 Läsion im mpMRT. Biopsie zur Diagnosesicherung indiziert.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-01-10"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "provisional"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "55342001",
          "display" : "Neoplastic disease"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2025",
          "code" : "C61",
          "display" : "Bösartige Neubildung der Prostata"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "126906006",
          "display" : "Neoplasm of prostate (disorder)"
        },
        {
          "system" : "http://id.who.int/icd/release/10",
          "code" : "C61",
          "display" : "Malignant neoplasm of prostate"
        },
        {
          "system" : "http://id.who.int/icd/release/11/mms",
          "code" : "2C82",
          "display" : "Malignant neoplasms of prostate"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "onsetDateTime" : "2024-01-10",
      "recordedDate" : "2024-01-10",
      "note" : [{
        "text" : "V.a. Prostatakarzinom bei PSA 12,8 ng/ml und PI-RADS 4 Läsion im mpMRT. Biopsie zur Diagnosesicherung indiziert."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Media/mii-exa-test-data-patho-image-1",
    "resource" : {
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
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Media_mii-exa-test-data-patho-image-1\"> </a>Fotodokumentation des HE-Schnitts der Prostatastanze 01</div>"
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
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-patho-organization-1",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-patho-organization-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-patho-organization-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-patho-organization-1</b></p><a name=\"mii-exa-test-data-patho-organization-1\"> </a><a name=\"hcmii-exa-test-data-patho-organization-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier</code>/DIZ-CHA</p><p><b>active</b>: true</p><p><b>name</b>: Institut für Pathologie, Charité - Universitätsmedizin Berlin</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-CHA"
      }],
      "active" : true,
      "name" : "Institut für Pathologie, Charité - Universitätsmedizin Berlin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Practitioner/mii-exa-test-data-patho-practitioner-1",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "mii-exa-test-data-patho-practitioner-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_mii-exa-test-data-patho-practitioner-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner mii-exa-test-data-patho-practitioner-1</b></p><a name=\"mii-exa-test-data-patho-practitioner-1\"> </a><a name=\"hcmii-exa-test-data-patho-practitioner-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://gematik.de/fhir/sid/telematik-id</code>/1-patho-test-0001</p><p><b>name</b>: Paula Schnittbild </p></div>"
      },
      "identifier" : [{
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-patho-test-0001"
      }],
      "name" : [{
        "family" : "Schnittbild",
        "given" : ["Paula"],
        "prefix" : ["Dr. med."]
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Practitioner/mii-exa-test-data-patho-practitioner-2",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "mii-exa-test-data-patho-practitioner-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_mii-exa-test-data-patho-practitioner-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner mii-exa-test-data-patho-practitioner-2</b></p><a name=\"mii-exa-test-data-patho-practitioner-2\"> </a><a name=\"hcmii-exa-test-data-patho-practitioner-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://gematik.de/fhir/sid/telematik-id</code>/1-uro-test-0002</p><p><b>name</b>: Ulrich Stanze </p></div>"
      },
      "identifier" : [{
        "system" : "https://gematik.de/fhir/sid/telematik-id",
        "value" : "1-uro-test-0002"
      }],
      "name" : [{
        "family" : "Stanze",
        "given" : ["Ulrich"],
        "prefix" : ["Dr. med."]
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-1-patho-active-problems-1",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-1-patho-active-problems-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-1-patho-active-problems-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-1-patho-active-problems-1</b></p><a name=\"mii-exa-test-data-patient-1-patho-active-problems-1\"> </a><a name=\"hcmii-exa-test-data-patient-1-patho-active-problems-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list\">MII PR Patho Active Problems List</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table class=\"clstu\"><tr><td>Date: 2024-02-16 </td><td>Mode: Snapshot List </td><td>Status: Current </td><td>Code: Problem list - Reported </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a>Encounter: <a href=\"Encounter-mii-exa-test-data-patho-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --&gt; 2024-02-20</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"Condition-mii-exa-test-data-patient-1-patho-problem-list-item-1.html\">Condition Malignant neoplasm of prostate</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "snapshot",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11450-4",
          "display" : "Problem list - Reported"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "date" : "2024-02-16",
      "entry" : [{
        "item" : {
          "reference" : "Condition/mii-exa-test-data-patient-1-patho-problem-list-item-1"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-1-patho-hopi-1",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-1-patho-hopi-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-1-patho-hopi-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-1-patho-hopi-1</b></p><a name=\"mii-exa-test-data-patient-1-patho-hopi-1\"> </a><a name=\"hcmii-exa-test-data-patient-1-patho-hopi-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness\">MII PR Patho History Of Present Illness</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table class=\"clstu\"><tr><td>Date: 2024-02-15 </td><td>Mode: Snapshot List </td><td>Status: Current </td><td>Code: History of Present illness </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a>Encounter: <a href=\"Encounter-mii-exa-test-data-patho-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --&gt; 2024-02-20</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"Condition-mii-exa-test-data-patient-1-patho-problem-list-item-1.html\">Condition Malignant neoplasm of prostate</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "snapshot",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8684-3",
          "display" : "History of Present illness"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "date" : "2024-02-15",
      "entry" : [{
        "item" : {
          "reference" : "Condition/mii-exa-test-data-patient-1-patho-problem-list-item-1"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-1-patho-problem-list-item-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-1-patho-problem-list-item-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-1-patho-problem-list-item-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-1-patho-problem-list-item-1</b></p><a name=\"mii-exa-test-data-patient-1-patho-problem-list-item-1\"> </a><a name=\"hcmii-exa-test-data-patient-1-patho-problem-list-item-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item\">MII PR Patho Problem List Item</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399068003}, {http://fhir.de/CodeSystem/bfarm/icd-10-gm C61}\">Malignant neoplasm of prostate</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patho-patient-1.html\">Klaus Gewebeprobe  Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patho-encounter-1.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --&gt; 2024-02-20</a></p><p><b>recordedDate</b>: 2024-02-16</p></div>"
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399068003",
          "display" : "Malignant neoplasm of prostate"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2026",
          "code" : "C61",
          "display" : "Bösartige Neubildung der Prostata"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patho-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
      },
      "recordedDate" : "2024-02-16"
    }
  }],
  "signature" : {
    "type" : [{
      "system" : "urn:iso-astm:E1762-95:2013",
      "code" : "1.2.840.10065.1.12.1.1",
      "display" : "Author's Signature"
    }],
    "when" : "2024-01-20T15:30:00+01:00",
    "who" : {
      "reference" : "Organization/mii-exa-test-data-patho-organization-1"
    }
  }
}

```
