# mii-exa-test-data-patient-4-molgen-befundbericht-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-befundbericht-1**

## Example DiagnosticReport: mii-exa-test-data-patient-4-molgen-befundbericht-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Molekulargenetischer Befundbericht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht), [Genomic Report](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-report.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Genetic analysis report (Genetics) 

| | |
| :--- | :--- |
| Subject | Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002) |
| Reported | 2022-12-05 14:00:00+0100 |
| Performer | [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md) |

**Report Details**

* **Code**: [Diagnostic Implication](Observation-mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2022-11-30
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-patient-4-molgen-variante-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2022-11-30

Nachweis der pathogenen Variante im CTNNA1-Gen.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-4-molgen-befundbericht-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
    "valueReference" : {
      "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-4-molgen-family-member-history-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-test-data-patient-4-molgen-genomic-study-1"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-4-molgen-anforderung-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE",
      "display" : "Genetics"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "51969-4",
      "display" : "Genetic analysis report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-2"
  },
  "issued" : "2022-12-05T14:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-2"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-3"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-4-molgen-variante-1"
  }],
  "conclusion" : "Nachweis der pathogenen Variante im CTNNA1-Gen."
}

```
