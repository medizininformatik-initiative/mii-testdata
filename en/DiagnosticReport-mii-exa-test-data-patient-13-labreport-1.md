# mii-exa-test-data-patient-13-labreport-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-labreport-1**

## Example DiagnosticReport: mii-exa-test-data-patient-13-labreport-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Laboratory report (Laboratory studies (set)) 

| | |
| :--- | :--- |
| Subject | Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number) |
| Relevant Time | 2023-11-14 10:30:00+0100 |
| Reported | 2023-11-20 14:00:00+0100 |
| Performer | [Organization Labor Berlin – Charité Vivantes GmbH](Organization-mii-exa-test-data-organization-labor-berlin.md) |
| Identifier | Filler Identifier/LDR_000013 |

**Report Details**

* **Code**: [Protein/Creatinine [Mass Ratio] in Urine](Observation-mii-exa-test-data-patient-13-labobs-protein.md)
  * **Value**: 780 milligram per gram (Details: UCUM codemg/g = 'mg/g')
  * **Reference Range**: Normal Range: <150 milligram per gram (Details: UCUM codemg/g = 'mg/g')
  * **Flags**: Final,High
  * **Note**: > Im Rahmen einer betriebsaerztlichen Untersuchung aufgefallen — der Anlass, der die zwoelfjaehrige diagnostische Odyssee beendet hat.
  * **Relevant Time**: 
  * **Reported**: 2023-11-14 16:00:00+0100
* **Code**: [Creatinine [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patient-13-labobs-kreatinin.md)
  * **Value**: 0.82 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')
  * **Reference Range**: Normal Range: 0.51 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')- 0.95 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')forFemale (finding)
  * **Flags**: Final,Normal
  * **Note**: > Nierenfunktion noch normal — die Proteinurie ist hier das einzige Warnsignal.
  * **Relevant Time**: 
  * **Reported**: 2023-11-14 16:00:00+0100
* **Code**: [Alpha galactosidase A [Enzymatic activity/mass] in Leukocytes](Observation-mii-exa-test-data-patient-13-labobs-agalsidase.md)
  * **Value**: 12.4 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg')
  * **Reference Range**: Normal Range: 30 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg')- 90 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg')
  * **Flags**: Final,Low
  * **Note**: > Bei heterozygoten Frauen kann die Enzymaktivitaet aufgrund der X-Inaktivierung auch normal ausfallen — ein normaler Wert schliesst Morbus Fabry bei Frauen nicht aus. Hier deutlich erniedrigt.
  * **Relevant Time**: 2023-11-20 09:00:00+0100
  * **Reported**: 

Proteinurie 780 mg/g Kreatinin bei normaler Nierenfunktion. Alpha-Galaktosidase-A-Aktivitaet in Leukozyten deutlich erniedrigt — Verdacht auf Morbus Fabry, genetische Abklaerung empfohlen.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-13-labreport-1",
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
    "value" : "LDR_000013",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-13-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-1"
  },
  "effectiveDateTime" : "2023-11-14T10:30:00+01:00",
  "issued" : "2023-11-20T14:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-13-labobs-protein"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-13-labobs-kreatinin"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-13-labobs-agalsidase"
  }],
  "conclusion" : "Proteinurie 780 mg/g Kreatinin bei normaler Nierenfunktion. Alpha-Galaktosidase-A-Aktivitaet in Leukozyten deutlich erniedrigt — Verdacht auf Morbus Fabry, genetische Abklaerung empfohlen."
}

```
