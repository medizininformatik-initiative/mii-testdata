# Vorlaeufiger Befundbericht Prostatabiopsie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vorlaeufiger Befundbericht Prostatabiopsie**

## Example Composition: Vorlaeufiger Befundbericht Prostatabiopsie

**Vorlaeufiger Befundbericht - Prostatabiopsie**

| | |
| :--- | :--- |
| Eingangsnummer | E_24_001 |
| Status | preliminary |
| Patient | Klaus Gewebeprobe (PATH-TEST-001) |
| Datum | 2024-01-15 |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "mii-exa-test-data-patho-composition-0",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
    "valueString" : "0"
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
    }]
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
  "date" : "2024-01-15T12:00:00+01:00",
  "author" : [{
    "reference" : "Organization/mii-exa-test-data-patho-organization-1",
    "display" : "Institut für Pathologie"
  }],
  "title" : "Vorlaeufiger Befundbericht - Prostatabiopsie",
  "attester" : [{
    "mode" : "legal",
    "party" : {
      "reference" : "Organization/mii-exa-test-data-patho-organization-1"
    }
  }],
  "custodian" : {
    "reference" : "Organization/mii-exa-test-data-patho-organization-1"
  },
  "event" : [{
    "period" : {
      "start" : "2024-01-15",
      "end" : "2024-01-15"
    },
    "detail" : [{
      "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
    }]
  }],
  "section" : [{
    "title" : "Vorlaeufige Mitteilung",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "60567-5",
        "display" : "Comprehensive pathology report panel"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Schnellschnitt Stanze 01: Nachweis eines azinären Adenokarzinoms. Endgültige Beurteilung folgt.</p></div>"
    },
    "entry" : [{
      "reference" : "DiagnosticReport/mii-exa-test-data-patho-report-1"
    }]
  }]
}

```
