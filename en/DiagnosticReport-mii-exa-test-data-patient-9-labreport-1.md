# mii-exa-test-data-patient-9-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-9-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, )) |
| Relevant Time | 2024-02-22 07:15:00+0100 |
| Reported | 2024-02-22 11:00:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000009 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-9-labobs-1.md)
  * **Value**: 6.8 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Flags**: Final,Normal
  * **Reported**: 2024-02-22 09:00:00+0100
* **Code**: [Hemoglobin [Mass/volume] in Blood](Observation-mii-exa-test-data-patient-9-labobs-2.md)
  * **Value**: 12.8 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')
  * **Flags**: Final,Normal
  * **Reported**: 2024-02-22 09:00:00+0100
* **Code**: [Estradiol (E2) [Moles/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-9-labobs-3.md)
  * **Value**: 285 picomole per liter (Details: UCUM codepmol/L = 'pmol/L')
  * **Flags**: Final,Normal
  * **Reported**: 2024-02-22 09:00:00+0100

Normale Blutbild-Parameter bei prämenopausaler Frau. Estradiol-Spiegel (285 pmol/L) im Normbereich für reproduktive Phase. Ovarialzyste ohne Hormonaktivität.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-9-labreport-1",
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
    "value" : "LDR_000009",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-9-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "effectiveDateTime" : "2024-02-22T07:15:00+01:00",
  "issued" : "2024-02-22T11:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-9-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-9-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-9-labobs-3"
  }],
  "conclusion" : "Normale Blutbild-Parameter bei prämenopausaler Frau. Estradiol-Spiegel (285 pmol/L) im Normbereich für reproduktive Phase. Ovarialzyste ohne Hormonaktivität."
}

```
