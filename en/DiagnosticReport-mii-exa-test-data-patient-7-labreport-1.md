# mii-exa-test-data-patient-7-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-7-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, )) |
| Relevant Time | 2024-01-10 08:15:00+0100 |
| Reported | 2024-01-10 12:30:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000007 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-7-labobs-1.md)
  * **Value**: 15.2 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Flags**: Final,High
  * **Note**: > Erhöhte Leukozyten bei Infektion
  * **Reported**: 2024-01-10 10:00:00+0100
* **Code**: [Hemoglobin [Mass/volume] in Blood](Observation-mii-exa-test-data-patient-7-labobs-2.md)
  * **Value**: 13.2 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')
  * **Flags**: Final,Normal
  * **Note**: 
  * **Reported**: 2024-01-10 10:00:00+0100
* **Code**: [C reactive protein [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-7-labobs-3.md)
  * **Value**: 25.6 milligram per liter (Details: UCUM codemg/L = 'mg/L')
  * **Flags**: Final,High
  * **Note**: 
  * **Reported**: 2024-01-10 10:00:00+0100

Akute bakterielle Infektion: Leukozytose (15,2/nL) und stark erhöhtes CRP (25,6 mg/L) bei akuter Bronchitis. Antibiotische Therapie indiziert.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-7-labreport-1",
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
    "value" : "LDR_000007",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-7-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "effectiveDateTime" : "2024-01-10T08:15:00+01:00",
  "issued" : "2024-01-10T12:30:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-7-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-7-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-7-labobs-3"
  }],
  "conclusion" : "Akute bakterielle Infektion: Leukozytose (15,2/nL) und stark erhöhtes CRP (25,6 mg/L) bei akuter Bronchitis. Antibiotische Therapie indiziert."
}

```
