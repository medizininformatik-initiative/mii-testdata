# mii-exa-test-data-patient-14-onko-befund-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-befund-1**

## Example DiagnosticReport: mii-exa-test-data-patient-14-onko-befund-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Befund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Pathology report Cancer Narrative 

| | |
| :--- | :--- |
| Subject | Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number) |

**Report Details**

Maessig differenziertes Adenokarzinom des Colon sigmoideum (ICD-O-3 8140/3), G2, pT3 pN2 (7/21) M1 (HEP), L1 V0 Pn0, R0. Immunhistochemisch MLH1/PMS2-Verlust — Hinweis auf Mismatch-Repair-Defizienz, molekulare Abklaerung empfohlen.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-14-onko-befund-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22034-3",
      "display" : "Pathology report Cancer Narrative"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-1"
  },
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-14-onko-specimen-1"
  }],
  "conclusion" : "Maessig differenziertes Adenokarzinom des Colon sigmoideum (ICD-O-3 8140/3), G2, pT3 pN2 (7/21) M1 (HEP), L1 V0 Pn0, R0. Immunhistochemisch MLH1/PMS2-Verlust — Hinweis auf Mismatch-Repair-Defizienz, molekulare Abklaerung empfohlen."
}

```
