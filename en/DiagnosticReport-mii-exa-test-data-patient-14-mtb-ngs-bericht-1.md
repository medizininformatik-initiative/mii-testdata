# mii-exa-test-data-patient-14-mtb-ngs-bericht-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-ngs-bericht-1**

## Example DiagnosticReport: mii-exa-test-data-patient-14-mtb-ngs-bericht-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB NGS-Bericht](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Genetic analysis report (Genetics) 

| | |
| :--- | :--- |
| Subject | Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number) |
| Relevant Time | 2024-04-09 |
| Reported | 2024-04-09 15:00:00+0200 |
| Performer | [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md) |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-test-data-patient-14-mtb-variante-braf.md)
  * **Value**: Present
  * **Flags**: Final
  * **Relevant Time**: 
  * **Reported**: 
* **Code**: [Microsatellite instability [Interpretation] in Cancer specimen Qualitative](Observation-mii-exa-test-data-patient-14-mtb-msi-1.md)
  * **Value**: 0.42 ratio (Details: UCUM code1 = '1')
  * **Flags**: Final,MSI-H
  * **Relevant Time**: 
  * **Reported**: 
* **Code**: [Mutations/Megabase [# Ratio] in Tumor](Observation-mii-exa-test-data-patient-14-mtb-tmb-1.md)
  * **Value**: 41.3 mutations per megabase (Details: UCUM code{Mutations}/1000000{Base} = '{Mutations}/1000000{Base}')
  * **Flags**: Final,High
  * **Relevant Time**: 
  * **Reported**: 
* **Code**: [Therapeutic Implication](Observation-mii-exa-test-data-patient-14-mtb-implikation-1.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2024-04-18
  * **Reported**: 2024-04-18 14:00:00+0200

Panel-Sequenzierung (523 Gene): BRAF p.V600E nachgewiesen, Mikrosatelliteninstabilitaet hoch (MSI-H), Tumormutationslast 41,3 Mutationen/Megabase. KRAS und NRAS Wildtyp.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-14-mtb-ngs-bericht-1",
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
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "effectiveDateTime" : "2024-04-09",
  "issued" : "2024-04-09T15:00:00+02:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-14-onko-specimen-1"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-variante-braf"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-msi-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-tmb-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-implikation-1"
  }],
  "conclusion" : "Panel-Sequenzierung (523 Gene): BRAF p.V600E nachgewiesen, Mikrosatelliteninstabilitaet hoch (MSI-H), Tumormutationslast 41,3 Mutationen/Megabase. KRAS und NRAS Wildtyp."
}

```
