# mii-exa-test-data-patient-1-labreport-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-1-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number) |
| Relevant Time | 2024-02-15 12:00:00+0100 |
| Reported | 2024-02-15 12:00:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000001 |

**Report Details**

* **Code**: [Leukocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-1-labobs-1.md)
  * **Value**: 17 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Reference Range**: Normal Range: 3.9 /nanoliter (Details: UCUM code/nL = '/nL')- 10.5 /nanoliter (Details: UCUM code/nL = '/nL')forMale (finding), Age 18-65 year
  * **Flags**: Final,High
  * **Note**: > Leukozyten EDTA-Blut Impedanzmessung
  * **Relevant Time**: 2024-02-15 12:00:00+0100
* **Code**: [Erythrocytes [#/volume] in Blood](Observation-mii-exa-test-data-patient-1-labobs-2.md)
  * **Value**: 5 /nanoLiters (Details: UCUM code/pL = '/pL')
  * **Reference Range**: Normal Range: 4.3 /picoliter (Details: UCUM code/pL = '/pL')- 5.8 /picoliter (Details: UCUM code/pL = '/pL')forMale (finding), Age 18-65 year
  * **Flags**: Final,Normal
  * **Note**: > Erythrozyten EDTA-Blut Impedanzmessung
  * **Relevant Time**: 2024-02-15 12:00:00+0100
* **Code**: [Hematocrit [Volume Fraction] of Blood by calculation](Observation-mii-exa-test-data-patient-1-labobs-3.md)
  * **Value**: 45 percent (Details: UCUM code% = '%')
  * **Reference Range**: Normal Range: 40 percent (Details: UCUM code% = '%')- 51 percent (Details: UCUM code% = '%')forMale (finding), Age 18-65 year
  * **Flags**: Final,Normal
  * **Note**: > Hämatokrit EDTA-Blut Impedanzmessung
  * **Relevant Time**: 2024-02-15 12:00:00+0100
* **Code**: [Hemoglobin [Mass/volume] in Blood](Observation-mii-exa-test-data-patient-1-labobs-4.md)
  * **Value**: 45 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')
  * **Reference Range**: Normal Range: 13.5 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')- 17 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')forMale (finding), Age 18-65 year
  * **Flags**: Final,Normal
  * **Note**: > Hämoglobin EDTA-Blut Photometrie
  * **Relevant Time**: 2024-02-15 12:00:00+0100
* **Code**: [Platelets [#/volume] in Blood](Observation-mii-exa-test-data-patient-1-labobs-5.md)
  * **Value**: 355 /nanoliter (Details: UCUM code/nL = '/nL')
  * **Reference Range**: Normal Range: 150 /nanoliter (Details: UCUM code/nL = '/nL')- 370 /nanoliter (Details: UCUM code/nL = '/nL')forMale (finding), Age 18-65 year
  * **Flags**: Final,Normal
  * **Note**: > Thrombozyten EDTA-Blut Impedanzmessung
  * **Relevant Time**: 2024-02-15 12:00:00+0100
* **Code**: [Erythrocyte distribution width [Entitic volume] by Automated count](Observation-mii-exa-test-data-patient-1-labobs-6.md)
  * **Value**: Error: **Not Performed**
  * **Reference Range**: 
  * **Flags**: Final
  * **Note**: 
  * **Relevant Time**: 2024-02-15 12:00:00+0100

Leukozyten hoch



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-1-labreport-1",
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
    "value" : "LDR_000001",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-1-labrequest-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Laboranforderungen",
      "value" : "LA_000001"
    }
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
    "reference" : "Patient/mii-exa-test-data-patient-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
      "value" : "808439625"
    }
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
      "value" : "MII_0000001"
    }
  },
  "effectiveDateTime" : "2024-02-15T12:00:00+01:00",
  "_effectiveDateTime" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399445004",
        "display" : "Specimen collection date (observable entity)"
      }
    }]
  },
  "issued" : "2024-02-15T12:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin",
    "identifier" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
      "value" : "Labor-Berlin"
    }
  }],
  "specimen" : [{
    "reference" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patient-1-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Bioproben",
      "value" : "BP_000001"
    },
    "display" : "EDTA-Blut Patient 1"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-3"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-4"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-5"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-1-labobs-6"
  }],
  "conclusion" : "Leukozyten hoch"
}

```
