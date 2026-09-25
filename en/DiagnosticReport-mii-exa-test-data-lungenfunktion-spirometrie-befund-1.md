# mii-exa-test-data-lungenfunktion-spirometrie-befund-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-spirometrie-befund-1**

## Example DiagnosticReport: mii-exa-test-data-lungenfunktion-spirometrie-befund-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Spirometrie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Spirometry (procedure) (Pulmonary function study) 

| | |
| :--- | :--- |
| Subject | Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001) |
| Relevant Time | 2025-02-18 09:00:00+0100 |
| Reported | 2025-02-18 12:15:00+0100 |
| Presented Form | application/pdf @[https://www.charite.de/fhir/lungenfunktion/befunde/spirometrie-2025-02-18.pdf ![](external.png)](https://www.charite.de/fhir/lungenfunktion/befunde/spirometrie-2025-02-18.pdf) |

**Report Details**

* **Code**: [Forced expired volume in one second/forced vital capacity ratio (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-fvc-1.md)
  * **Value**: 67.7 % (Details: UCUM code% = '%')
  * **Reference Range**: 70 % (Details: UCUM code% = '%')- 85 % (Details: UCUM code% = '%')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-1.md)
  * **Value**: 2.1 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 2.31 L (Details: UCUM codeL = 'L')- 3.39 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Forced vital capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fvc-1.md)
  * **Value**: 3.1 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 2.9 L (Details: UCUM codeL = 'L')- 4.3 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Inspiratory capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-ic-1.md)
  * **Value**: 2.4 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 2.1 L (Details: UCUM codeL = 'L')- 3.1 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Maximum expiratory flow rate at 50 percent of vital capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-mef-1.md)
  * **Value**: 1.9 L/s (Details: UCUM codeL/s = 'L/s')
  * **Reference Range**: 2.7 L/s (Details: UCUM codeL/s = 'L/s')- 5.2 L/s (Details: UCUM codeL/s = 'L/s')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Peak expiratory flow rate (observable entity)](Observation-mii-exa-test-data-lungenfunktion-pef-1.md)
  * **Value**: 5.2 L/s (Details: UCUM codeL/s = 'L/s')
  * **Reference Range**: 5.5 L/s (Details: UCUM codeL/s = 'L/s')- 8.3 L/s (Details: UCUM codeL/s = 'L/s')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Expiratory reserve volume (observable entity)](Observation-mii-exa-test-data-lungenfunktion-irv-erv-1.md)
  * **Value**: 0.9 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 0.7 L (Details: UCUM codeL = 'L')- 1.5 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Slow vital capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-vc-1.md)
  * **Value**: 3.3 L (Details: UCUM codeL = 'L')
  * **Reference Range**: 2.96 L (Details: UCUM codeL = 'L')- 4.44 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100

Leichte obstruktive Ventilationsstoerung (FEV1/FVC 67.7 %, FEV1 74 % vom Soll) bei normaler Vitalkapazitaet.

**Coded Conclusions:**

* Asthma bronchiale, nicht näher bezeichnet



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-lungenfunktion-spirometrie-befund-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie"],
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
      "code" : "127783003",
      "display" : "Spirometry (procedure)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "18759-1",
      "display" : "Spirometry study"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "effectiveDateTime" : "2025-02-18T09:00:00+01:00",
  "issued" : "2025-02-18T12:15:00+01:00",
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-fvc-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fvc-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-ic-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-mef-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-pef-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-irv-erv-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-vc-1"
  }],
  "conclusion" : "Leichte obstruktive Ventilationsstoerung (FEV1/FVC 67.7 %, FEV1 74 % vom Soll) bei normaler Vitalkapazitaet.",
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
    "url" : "https://www.charite.de/fhir/lungenfunktion/befunde/spirometrie-2025-02-18.pdf",
    "title" : "Spirometrie-Befund vom 18.02.2025"
  }]
}

```
