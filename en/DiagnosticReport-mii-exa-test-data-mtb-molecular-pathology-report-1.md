# MTB Molecular Pathology Report - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Molecular Pathology Report**

## Example DiagnosticReport: MTB Molecular Pathology Report

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Molecular Pathology Report](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Pathology synoptic report 

| | |
| :--- | :--- |
| Subject | Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001) |
| Reported | 2024-03-10 09:00:00+0100 |

**Report Details**

* **Code**: [PD-L1 by clone 22C3 in Tissue by Immune stain Report](Observation-mii-exa-test-data-mtb-immunohistochemistry-1.md)
  * **Value**: 80 % (Details: UCUM code{/100} = '{/100}')
  * **Flags**: Final,Positive
  * **Relevant Time**: 2024-03-08



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-mtb-molecular-pathology-report-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report"],
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
      "code" : "60568-3",
      "display" : "Pathology synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "issued" : "2024-03-10T09:00:00+01:00",
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-mtb-immunohistochemistry-1"
  }]
}

```
