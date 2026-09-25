# mii-exa-test-data-lungenfunktion-diffusion-befund-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-diffusion-befund-1**

## Example DiagnosticReport: mii-exa-test-data-lungenfunktion-diffusion-befund-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Diffusion](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-diffusion)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Carbon monoxide diffusing capacity measurement (procedure) (Pulmonary function study) 

| | |
| :--- | :--- |
| Subject | Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001) |
| Relevant Time | 2025-02-18 10:15:00+0100 |
| Reported | 2025-02-18 12:15:00+0100 |
| Presented Form | application/pdf @[https://www.charite.de/fhir/lungenfunktion/befunde/diffusion-2025-02-18.pdf ![](external.png)](https://www.charite.de/fhir/lungenfunktion/befunde/diffusion-2025-02-18.pdf) |

**Report Details**

* **Code**: [Single breath carbon monoxide diffusing capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-dlco-1.md)
  * **Value**: 7.2 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')
  * **Reference Range**: 6.2 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')- 9.4 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Diffusion capacity.carbon monoxide adjusted for hemoglobin](Observation-mii-exa-test-data-lungenfunktion-dlcoc-1.md)
  * **Value**: 7.45 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')
  * **Reference Range**: 6.2 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')- 9.4 mmol/(min.kPa) (Details: UCUM codemmol/(min.kPa) = 'mmol/(min.kPa)')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Transfer coefficient (respiratory measure) (observable entity)](Observation-mii-exa-test-data-lungenfunktion-kco-1.md)
  * **Value**: 1.45 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')
  * **Reference Range**: 1.2 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')- 1.8 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Diffusion capacity.carbon monoxide/Alveolar volume adjusted for hemoglobin](Observation-mii-exa-test-data-lungenfunktion-kcoc-1.md)
  * **Value**: 1.5 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')
  * **Reference Range**: 1.2 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')- 1.8 mmol/(min.kPa.L) (Details: UCUM codemmol/(min.kPa.L) = 'mmol/(min.kPa.L)')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Alveolar volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-va-1.md)
  * **Value**: 4.95 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 4.5 L (Details: UCUM codeL = 'L')- 6.9 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Hemoglobin (substance)](Observation-mii-exa-test-data-lungenfunktion-hb-1.md)
  * **Value**: 13.8 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL')
  * **Reference Range**: 12 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL')- 15.5 g{Hemoglobin}/dL (Details: UCUM codeg{Hemoglobin}/dL = 'g{Hemoglobin}/dL')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100

Normale CO-Diffusionskapazitaet (DLCO 92 % vom Soll), auch nach Hb-Korrektur unauffaellig.

**Coded Conclusions:**

* Asthma bronchiale, nicht näher bezeichnet



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-lungenfunktion-diffusion-befund-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-diffusion"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "58477-1",
      "display" : "Pulmonary function study"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "PF"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "720449003",
      "display" : "Pulmonary function report (record artifact)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "36421003",
      "display" : "Carbon monoxide diffusing capacity measurement (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "effectiveDateTime" : "2025-02-18T10:15:00+01:00",
  "issued" : "2025-02-18T12:15:00+01:00",
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dlco-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dlcoc-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-kco-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-kcoc-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-va-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-hb-1"
  }],
  "conclusion" : "Normale CO-Diffusionskapazitaet (DLCO 92 % vom Soll), auch nach Hb-Korrektur unauffaellig.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "J45.9",
      "display" : "Asthma bronchiale, nicht näher bezeichnet"
    }]
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "url" : "https://www.charite.de/fhir/lungenfunktion/befunde/diffusion-2025-02-18.pdf",
    "title" : "Diffusions-Befund vom 18.02.2025"
  }]
}

```
