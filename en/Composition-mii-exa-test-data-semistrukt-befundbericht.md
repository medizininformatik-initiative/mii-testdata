# Mammographic Report - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mammographic Report**

## Example Composition: Mammographic Report

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Semistrukturierter Befundbericht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**type**: MG Breast Diagnostic Limited Views

**date**: 2024-07-19 12:03:30+0200

**author**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**title**: Mammographic Report



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "mii-exa-test-data-semistrukt-befundbericht",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "24604-1",
      "display" : "MG Breast Diagnostic Limited Views"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "date" : "2024-07-19T12:03:30+02:00",
  "author" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }],
  "title" : "Mammographic Report",
  "section" : [{
    "title" : "Diagnostic Report",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18782-3",
        "display" : "Radiology Study observation (narrative)"
      }]
    },
    "author" : [{
      "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }],
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mammographie beidseits: Mikrokalk im oberen aeusseren Quadranten links, Herdbefund 4,2 mm.</div>"
    },
    "entry" : [{
      "reference" : "DiagnosticReport/mii-exa-test-data-befundbericht"
    }],
    "section" : [{
      "title" : "Left Breast",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66110-8",
          "display" : "Breast Pathology biopsy report"
        }]
      },
      "author" : [{
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
      }],
      "entry" : [{
        "reference" : "Observation/mii-exa-test-data-radiologische-beobachtung"
      }]
    }]
  }]
}

```
