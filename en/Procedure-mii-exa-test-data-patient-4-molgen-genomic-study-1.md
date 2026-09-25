# mii-exa-test-data-patient-4-molgen-genomic-study-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-genomic-study-1**

## Example Procedure: mii-exa-test-data-patient-4-molgen-genomic-study-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Genomic Study](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Genomic Study Analysis Extension**: [Procedure: extension = Stufendiagnostik hereditaeres Magenkarzinom,Sequencing,GRCh38,->Specimen: status = available; type = Tissue,,; status = completed; category = Laboratory](Procedure-mii-exa-test-data-patient-4-molgen-genomic-study-analysis-1.md)

**status**: Completed

**category**: Laboratory

**code**: Molecular genetic test (procedure)

**subject**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-15](Encounter-mii-exa-test-data-molgen-encounter-2.md)

**performed**: 2022-11-30

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-molgen-diagnose-2.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-4-molgen-genomic-study-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-test-data-patient-4-molgen-genomic-study-analysis-1"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "405825005",
      "display" : "Molecular genetic test (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-2"
  },
  "performedDateTime" : "2022-11-30",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-molgen-diagnose-2"
  }]
}

```
