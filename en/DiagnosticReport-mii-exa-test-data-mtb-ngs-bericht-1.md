# MTB NGS Bericht - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB NGS Bericht**

## Example DiagnosticReport: MTB NGS Bericht

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB NGS-Bericht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Genetic analysis report (Genetics) 

| | |
| :--- | :--- |
| Subject | Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001) |
| Reported | 2024-03-15 00:00:00+0000 |

**Report Details**

* **Code**: [Mutations/Megabase [# Ratio] in Tumor](Observation-mii-exa-test-data-mtb-mutationslast-1.md)
  * **Value**: 14.2 mutations per megabase (Details: UCUM code{Mutations}/1000000{Base} = '{Mutations}/1000000{Base}')
  * **Flags**: Final,High
  * **Relevant Time**: 2024-03-01
  * **Reported**: 2024-03-01 10:00:00+0100
* **Code**: [Microsatellite instability [Interpretation] in Cancer specimen Qualitative](Observation-mii-exa-test-data-mtb-mikrosatelliteninstabilitaet-1.md)
  * **Value**: 0.15 ratio (Details: UCUM code1 = '1')
  * **Flags**: Final,Normal
  * **Relevant Time**: 2024-03-01
  * **Reported**: 2024-03-01 10:00:00+0100
* **Code**: [BRCAness](Observation-mii-exa-test-data-mtb-brcaness-1.md)
  * **Value**: 0.72 1 (Details: UCUM code1 = '1')
  * **Flags**: Final,Positive
  * **Relevant Time**: 2024-03-01
  * **Reported**: 2024-03-01 10:00:00+0100
* **Code**: [Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method](Observation-mii-exa-test-data-mtb-hrd-score-1.md)
  * **Value**: 42
  * **Flags**: Final,Positive
  * **Relevant Time**: 2024-03-01
  * **Reported**: 2024-03-01 10:00:00+0100
* **Code**: [DNA Ploidy Analysis](Observation-mii-exa-test-data-mtb-ploidie-1.md)
  * **Value**: 2.3 1 (Details: UCUM code1 = '1')
  * **Flags**: Final,Normal
  * **Relevant Time**: 2024-03-01
  * **Reported**: 2024-03-01 10:00:00+0100
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-mtb-einfache-variante-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2024-02-25
  * **Reported**: 2024-03-01 09:00:00+0100
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-mtb-copy-number-variant-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2024-02-25
  * **Reported**: 2024-03-01 09:00:00+0100
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-mtb-dna-fusion-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2024-02-25
  * **Reported**: 2024-03-01 09:00:00+0100
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-mtb-rna-fusion-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2024-02-25
  * **Reported**: 2024-03-01 09:00:00+0100
* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-mtb-rna-seq-1.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 2024-02-25
  * **Reported**: 2024-03-01 09:00:00+0100
* **Code**: [Therapeutic Implication](Observation-mii-exa-test-data-mtb-therapeutische-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2024-03-05
  * **Reported**: 2024-03-05 12:00:00+0100
* **Code**: [Diagnostic Implication](Observation-mii-exa-test-data-mtb-diagnostische-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2024-03-05
  * **Reported**: 2024-03-05 12:00:00+0100



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-mtb-ngs-bericht-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "issued" : "2024-03-15T00:00:00.000Z",
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-mtb-mutationslast-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-mikrosatelliteninstabilitaet-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-brcaness-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-hrd-score-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-ploidie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-einfache-variante-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-copy-number-variant-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-dna-fusion-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-rna-fusion-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-rna-seq-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-therapeutische-implikation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-diagnostische-implikation-1"
  }]
}

```
