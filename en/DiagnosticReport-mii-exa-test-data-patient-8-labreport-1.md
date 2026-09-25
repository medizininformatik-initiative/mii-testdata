# mii-exa-test-data-patient-8-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-8-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-8-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Hans Peter Bauer (official) Male, DoB: 1958-02-28 ( Medical record number (use: usual, )) |
| Relevant Time | 2023-11-12 06:30:00+0100 |
| Reported | 2023-11-12 10:45:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000008 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-8-labobs-1.md)
  * **Value**: 13.8 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Flags**: Final,High
  * **Note**: 
  * **Reported**: 2023-11-12 08:15:00+0100
* **Code**: [Troponin T.cardiac [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-8-labobs-2.md)
  * **Value**: 2.8 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL')
  * **Flags**: Final,Critical high
  * **Note**: > Stark erhöhtes Troponin T bei Myokardinfarkt
  * **Reported**: 2023-11-12 08:15:00+0100
* **Code**: [Creatine kinase [Enzymatic activity/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-8-labobs-3.md)
  * **Value**: 85 unit per liter (Details: UCUM codeU/L = 'U/L')
  * **Flags**: Final,High
  * **Note**: 
  * **Reported**: 2023-11-12 08:15:00+0100

ST-Hebungsinfarkt (STEMI): Kritisch erhöhtes Troponin T (2,8 ng/mL) und CK-MB (85 U/L) bestätigen akuten Myokardinfarkt. Sofortige Reperfusionstherapie erforderlich.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-8-labreport-1",
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
    "value" : "LDR_000008",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-8-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-8"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-8-encounter-1"
  },
  "effectiveDateTime" : "2023-11-12T06:30:00+01:00",
  "issued" : "2023-11-12T10:45:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-8-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-8-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-8-labobs-3"
  }],
  "conclusion" : "ST-Hebungsinfarkt (STEMI): Kritisch erhöhtes Troponin T (2,8 ng/mL) und CK-MB (85 U/L) bestätigen akuten Myokardinfarkt. Sofortige Reperfusionstherapie erforderlich."
}

```
