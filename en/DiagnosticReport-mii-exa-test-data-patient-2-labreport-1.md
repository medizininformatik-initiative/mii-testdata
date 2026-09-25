# mii-exa-test-data-patient-2-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-2-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number) |
| Relevant Time | 2024-03-04 07:30:00+0100 |
| Reported | 2024-03-04 11:30:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000002 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-2-labobs-1.md)
  * **Value**: 3.2 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Reference Range**: 3.9 /nanoliter (Details: UCUM code/nL = '/nL')- 10.5 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Flags**: Final,Low
  * **Note**: > Leukopenie bei Tumorpatient
  * **Reported**: 2024-03-04 09:15:00+0100
* **Code**: [Erythrocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-2-labobs-2.md)
  * **Value**: 3.8 /picoliter (Details: UCUM code/pL = '/pL')
  * **Reference Range**: 
  * **Flags**: Final,Low
  * **Note**: 
  * **Reported**: 2024-03-04 09:15:00+0100
* **Code**: [Hemoglobin [Mass/volume] in Blood](Observation-mii-exa-test-data-patient-2-labobs-3.md)
  * **Value**: 9.2 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')
  * **Reference Range**: 
  * **Flags**: Final,Low
  * **Note**: 
  * **Reported**: 2024-03-04 09:15:00+0100
* **Code**: [Platelets [#/volume] in Blood](Observation-mii-exa-test-data-patient-2-labobs-4.md)
  * **Value**: 120 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Reference Range**: 
  * **Flags**: Final,Low
  * **Note**: 
  * **Reported**: 2024-03-04 09:15:00+0100

Panzytopenie bei Tumorpatient: Leukopenie (3,2/nL), Anämie (Hb 9,2 g/dL), Thrombozytopenie (120/nL). Chemotherapie-assoziierte Knochenmarkssuppression.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-2-labreport-1",
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
    "value" : "LDR_000002",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
  },
  "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
  "issued" : "2024-03-04T11:30:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-2-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-2-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-2-labobs-3"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-2-labobs-4"
  }],
  "conclusion" : "Panzytopenie bei Tumorpatient: Leukopenie (3,2/nL), Anämie (Hb 9,2 g/dL), Thrombozytopenie (120/nL). Chemotherapie-assoziierte Knochenmarkssuppression."
}

```
