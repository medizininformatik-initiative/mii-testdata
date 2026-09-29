# mii-exa-test-data-patient-11-labreport-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-11-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, )) |
| Relevant Time | 2025-01-21 07:35:00+0100 |
| Reported | 2025-01-21 09:02:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000011 |

**Report Details**

* **Code**: [Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-11-labobs-1.md)
  * **Value**: 3840 picogram per milliliter (Details: UCUM codepg/mL = 'pg/mL')
  * **Reference Range**: Normal Range: <125 picogram per milliliter (Details: UCUM codepg/mL = 'pg/mL')
  * **Flags**: Final,High
  * **Note**: > Ausschlussgrenze chronische Herzinsuffizienz: < 125 pg/mL
* **Code**: [Creatinine [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-11-labobs-2.md)
  * **Value**: 1.42 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')
  * **Reference Range**: Normal Range: 0.51 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')- 0.95 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')forFemale (finding)
  * **Flags**: Final,High
  * **Note**: 
* **Code**: [Potassium [Moles/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-11-labobs-3.md)
  * **Value**: 4.8 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')
  * **Reference Range**: Normal Range: 3.5 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')- 5.1 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')
  * **Flags**: Final,Normal
  * **Note**: 

NT-proBNP massiv erhöht, vereinbar mit kardialer Dekompensation. Kreatinin leicht erhöht (kardiorenales Syndrom).



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-11-labreport-1",
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
    "value" : "LDR_000011",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
  "issued" : "2025-01-21T09:02:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-11-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-11-labobs-3"
  }],
  "conclusion" : "NT-proBNP massiv erhöht, vereinbar mit kardialer Dekompensation. Kreatinin leicht erhöht (kardiorenales Syndrom)."
}

```
