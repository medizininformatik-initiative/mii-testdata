# mii-exa-test-data-patient-14-mtb-implikation-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-implikation-1**

## Example Observation: mii-exa-test-data-patient-14-mtb-implikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapeutische Implikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.

**status**: Final

**category**: Laboratory, Genetics

**code**: Therapeutic Implication

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**effective**: 2024-04-18

**issued**: 2024-04-18 14:00:00+0200

**derivedFrom**: 

* [Observation Microsatellite instability [Interpretation] in Cancer specimen Qualitative](Observation-mii-exa-test-data-patient-14-mtb-msi-1.md)
* [Observation Mutations/Megabase [# Ratio] in Tumor](Observation-mii-exa-test-data-patient-14-mtb-tmb-1.md)

> **component****code**: Conclusion Text**value**: MSI-H und TMB > 10 Mut/Mb sagen ein Ansprechen auf PD-1-Checkpoint-Inhibition voraus (Evidenzgrad m1A). Vorrang vor der Standard-Erstlinienchemotherapie.

> **component****code**: Medication assessed [ID]**value**: Pembrolizumab



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-14-mtb-implikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1A"
      }]
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "therapeutic-implication",
      "display" : "Therapeutic Implication"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "effectiveDateTime" : "2024-04-18",
  "issued" : "2024-04-18T14:00:00+02:00",
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-msi-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-14-mtb-tmb-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "conclusion-string"
      }]
    },
    "valueString" : "MSI-H und TMB > 10 Mut/Mb sagen ein Ansprechen auf PD-1-Checkpoint-Inhibition voraus (Evidenzgrad m1A). Vorrang vor der Standard-Erstlinienchemotherapie."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "51963-7",
        "display" : "Medication assessed [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/atc",
        "version" : "2024",
        "code" : "L01FF02",
        "display" : "Pembrolizumab"
      }]
    }
  }]
}

```
