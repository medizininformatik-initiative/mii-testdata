# mii-exa-test-data-patient-3-molgen-befundbericht-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-befundbericht-1**

## Example DiagnosticReport: mii-exa-test-data-patient-3-molgen-befundbericht-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Molekulargenetischer Befundbericht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht), [Genomic Report](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-report.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Genetic analysis report (Genetics) 

| | |
| :--- | :--- |
| Subject | Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001) |
| Reported | 2022-04-12 10:30:00+0200 |
| Performer | [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md) |

**Report Details**

* **Code**: [Diagnostic Implication](Observation-mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07
* **Code**: [Therapeutic Implication](Observation-mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-patient-3-molgen-variante-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07
* **Code**: [Genotype display name](Observation-mii-exa-test-data-patient-3-molgen-genotyp-1.md)
  * **Value**: BRAF rs113488022 T>A
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07
* **Code**: [Mutations/Megabase [# Ratio] in Tumor](Observation-mii-exa-test-data-patient-3-molgen-mutationslast-1.md)
  * **Value**: 12 Mutations/Megabase (Details: UCUM code1/1000000{Base} = '1/1000000{Base}')
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07
* **Code**: [Microsatellite instability [Interpretation] in Cancer specimen Qualitative](Observation-mii-exa-test-data-patient-3-molgen-msi-1.md)
  * **Value**: Stable
  * **Flags**: Final
  * **Relevant Time**: 2022-04-07

BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor pruefen.

**Coded Conclusions:**

* Positive (qualifier value)



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-3-molgen-befundbericht-1",
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
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action",
    "valueReference" : {
      "reference" : "Task/mii-exa-test-data-patient-3-molgen-medikationsempfehlung-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/recommended-action",
    "valueReference" : {
      "reference" : "Task/mii-exa-test-data-patient-3-molgen-folgemassnahme-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
    "valueReference" : {
      "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-3-molgen-family-member-history-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-test-data-patient-3-molgen-genomic-study-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment",
    "valueReference" : {
      "reference" : "RiskAssessment/mii-exa-test-data-patient-3-molgen-polygener-risiko-score-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact",
    "valueRelatedArtifact" : {
      "type" : "citation",
      "citation" : "Richards et al., Standards and guidelines for the interpretation of sequence variants. Genet Med. 2015;17:405-24",
      "url" : "https://pubmed.ncbi.nlm.nih.gov/25741868/"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-3-molgen-anforderung-1"
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
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "issued" : "2022-04-12T10:30:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-1"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-variante-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-genotyp-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-mutationslast-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-msi-1"
  }],
  "conclusion" : "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor pruefen.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive (qualifier value)"
    }]
  }]
}

```
