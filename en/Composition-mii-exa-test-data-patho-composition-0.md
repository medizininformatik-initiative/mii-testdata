# Vorlaeufiger Befundbericht Prostatabiopsie - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vorlaeufiger Befundbericht Prostatabiopsie**

## Example Composition: Vorlaeufiger Befundbericht Prostatabiopsie

-------

**English**

-------

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Composition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Composition Version Number**: 0

**identifier**: Accession ID/E_24_001

**status**: Final

**type**: Pathology study

**category**: Befundbericht

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --> 2024-02-20](Encounter-mii-exa-test-data-patho-encounter-1.md)

**date**: 2024-01-15 12:00:00+0100

**author**: [Institut für Pathologie](Organization-mii-exa-test-data-patho-organization-1.md)

**title**: Vorlaeufiger Befundbericht - Prostatabiopsie

### Attesters

| | | |
| :--- | :--- | :--- |
| - | **Mode** | **Party** |
| * | Legal | [Organization Institut für Pathologie, Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-patho-organization-1.md) |

**custodian**: [Organization Institut für Pathologie, Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-patho-organization-1.md)

### Events

| | | |
| :--- | :--- | :--- |
| - | **Period** | **Detail** |
| * | 2024-01-15 --> 2024-01-15 | [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md) |



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
