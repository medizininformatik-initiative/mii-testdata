# mii-exa-test-data-lungenfunktion-provokationstest-befund-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-provokationstest-befund-1**

## Example DiagnosticReport: mii-exa-test-data-lungenfunktion-provokationstest-befund-1

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Provokationstest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-provokationstest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Methacholine challenge (procedure) (Pulmonary function study) 

| | |
| :--- | :--- |
| Subject | Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001) |
| Relevant Time | 2025-02-18 11:00:00+0100 |
| Reported | 2025-02-18 12:15:00+0100 |
| Presented Form | application/pdf @[https://www.charite.de/fhir/lungenfunktion/befunde/provokationstest-2025-02-18.pdf ![](external.png)](https://www.charite.de/fhir/lungenfunktion/befunde/provokationstest-2025-02-18.pdf) |

**Report Details**

* **Code**: [Dose of methacholine to achieve maximal drop of forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-dosis-schwellwert-1.md)
  * **Value**: 0.3 mg (Details: UCUM codemg = 'mg')
  * **Flags**: Final,Abnormal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Dose of methacholine to achieve maximal drop of forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-dosis-kumuliert-1.md)
  * **Value**: 0.34 mg (Details: UCUM codemg = 'mg')
  * **Flags**: Final,Abnormal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-prov-1.md)
  * **Value**: 2.1 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Normal
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Forced expired volume in 1 second (observable entity)](Observation-mii-exa-test-data-lungenfunktion-fev-prov-2.md)
  * **Value**: 1.55 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Peak expiratory flow rate (observable entity)](Observation-mii-exa-test-data-lungenfunktion-pef-prov-1.md)
  * **Value**: 4.1 L/s (Details: UCUM codeL/s = 'L/s')
  * **Flags**: Final,Low
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Total airway resistance (observable entity)](Observation-mii-exa-test-data-lungenfunktion-r-prov-1.md)
  * **Value**: 0.55 kPa/(L/s) (Details: UCUM codekPa/(L/s) = 'kPa/(L/s)')
  * **Flags**: Final,High
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Specific airway resistance (observable entity)](Observation-mii-exa-test-data-lungenfunktion-sr-prov-1.md)
  * **Value**: 1.8 kPa.s (Details: UCUM codekPa.s = 'kPa.s')
  * **Flags**: Final,High
  * **Reported**: 2025-02-18 12:00:00+0100
* **Code**: [Functional residual capacity (observable entity)](Observation-mii-exa-test-data-lungenfunktion-frc-prov-1.md)
  * **Value**: 3.6 L (Details: UCUM codeL = 'L')
  * **Flags**: Final,High
  * **Reported**: 2025-02-18 12:00:00+0100

Positiver Methacholin-Provokationstest: FEV1-Abfall um 26 % bei kumulativer Dosis von 0.34 mg (PD20 = 0.30 mg). Befund vereinbar mit bronchialer Hyperreagibilitaet bei Asthma bronchiale.

**Coded Conclusions:**

* Vorwiegend allergisches Asthma bronchiale



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-lungenfunktion-provokationstest-befund-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-provokationstest"],
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
      "code" : "252520007",
      "display" : "Methacholine challenge (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "effectiveDateTime" : "2025-02-18T11:00:00+01:00",
  "issued" : "2025-02-18T12:15:00+01:00",
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dosis-schwellwert-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-dosis-kumuliert-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-prov-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-fev-prov-2"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-pef-prov-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-r-prov-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-sr-prov-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-lungenfunktion-frc-prov-1"
  }],
  "conclusion" : "Positiver Methacholin-Provokationstest: FEV1-Abfall um 26 % bei kumulativer Dosis von 0.34 mg (PD20 = 0.30 mg). Befund vereinbar mit bronchialer Hyperreagibilitaet bei Asthma bronchiale.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "J45.0",
      "display" : "Vorwiegend allergisches Asthma bronchiale"
    }]
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "url" : "https://www.charite.de/fhir/lungenfunktion/befunde/provokationstest-2025-02-18.pdf",
    "title" : "Provokationstest-Befund vom 18.02.2025"
  }]
}

```
