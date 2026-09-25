# mii-exa-test-data-patient-3-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-3-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, )) |
| Relevant Time | 2022-04-05 08:00:00+0200 |
| Reported | 2022-04-05 13:00:00+0200 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000003 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-3-labobs-1.md)
  * **Value**: 12.5 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Flags**: Final,High
  * **Reported**: 2022-04-05 10:30:00+0200
* **Code**: [Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-3-labobs-2.md)
  * **Value**: 156 unit per liter (Details: UCUM codeU/L = 'U/L')
  * **Flags**: Final,High
  * **Reported**: 2022-04-05 10:30:00+0200
* **Code**: [Bilirubin.total [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-3-labobs-3.md)
  * **Value**: 2.8 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')
  * **Flags**: Final,High
  * **Reported**: 2022-04-05 10:30:00+0200

Cholestatisches Leberschädigungsmuster: Erhöhte alkalische Phosphatase (156 U/L) und Hyperbilirubinämie (2,8 mg/dL). Leukozytose (12,5/nL). Vereinbar mit maligner Infiltration bei bekanntem Anorektalkarzinom.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-3-labreport-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/lab-results",
    "value" : "LDR_000003",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-3-labrequest-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB"
    },
    {
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Laboratory report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "effectiveDateTime" : "2022-04-05T08:00:00+02:00",
  "issued" : "2022-04-05T13:00:00+02:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-3-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-labobs-3"
  }],
  "conclusion" : "Cholestatisches Leberschädigungsmuster: Erhöhte alkalische Phosphatase (156 U/L) und Hyperbilirubinämie (2,8 mg/dL). Leukozytose (12,5/nL). Vereinbar mit maligner Infiltration bei bekanntem Anorektalkarzinom."
}

```
