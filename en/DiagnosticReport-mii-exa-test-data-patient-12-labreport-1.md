# mii-exa-test-data-patient-12-labreport-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-12-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number) |
| Relevant Time | 2025-03-08 14:45:00+0100 |
| Reported | 2025-03-08 15:20:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000012 |

**Report Details**

* **Code**: [Lactate [Moles/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-12-labobs-1.md)
  * **Value**: 4.8 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')
  * **Reference Range**: Normal Range: 0.5 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')- 1.6 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')
  * **Flags**: Final,Critical high
  * **Note**: > Laktat > 2 mmol/L trotz Volumengabe — Kriterium des septischen Schocks (Sepsis-3).
* **Code**: [Procalcitonin [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-12-labobs-2.md)
  * **Value**: 28.4 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL')
  * **Reference Range**: Normal Range: <0.5 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL')
  * **Flags**: Final,Critical high
  * **Note**: > PCT-Verlauf steuert die Therapiedauer im Stewardship-Protokoll.
* **Code**: [C reactive protein [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-12-labobs-3.md)
  * **Value**: 312 milligram per liter (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: Normal Range: <5 milligram per liter (Details: UCUM codemg/L = 'mg/L')
  * **Flags**: Final,High
  * **Note**: 
* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-12-labobs-4.md)
  * **Value**: 23.4 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Reference Range**: Normal Range: 3.9 /nanoliter (Details: UCUM code/nL = '/nL')- 10.5 /nanoliter (Details: UCUM code/nL = '/nL')forMale (finding)
  * **Flags**: Final,High
  * **Note**: 

Laktat 4.8 mmol/L, Procalcitonin 28 ng/mL, CRP 312 mg/L, Leukozytose 23.4/nL — Konstellation eines septischen Schocks.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-12-labreport-1",
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
    "value" : "LDR_000012",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-12-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-1"
  },
  "effectiveDateTime" : "2025-03-08T14:45:00+01:00",
  "issued" : "2025-03-08T15:20:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-12-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-labobs-3"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-labobs-4"
  }],
  "conclusion" : "Laktat 4.8 mmol/L, Procalcitonin 28 ng/mL, CRP 312 mg/L, Leukozytose 23.4/nL — Konstellation eines septischen Schocks."
}

```
