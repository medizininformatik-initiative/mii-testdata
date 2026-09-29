# mii-exa-test-data-patient-14-mtb-episode-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-episode-1**

## Example ClinicalImpression: mii-exa-test-data-patient-14-mtb-episode-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Behandlungsepisode](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Leitlinienbehandlung Status**: [MII CS Leitlinienbehandlung Status: non-exhausted](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status#mii-cs-mtb-leitlinienbehandlung-status-non-exhausted) (Leitlinien nicht ausgeschöpft)

**status**: Completed

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**effective**: 2024-03-26 --> 2024-04-18

**problem**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

> **investigation****code**: Genetic finding**item**: [Diagnostic Report for 'Genetic analysis report' for '->Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)'](DiagnosticReport-mii-exa-test-data-patient-14-mtb-ngs-bericht-1.md)

> **investigation****code**: ECOG performance status finding**item**: [Observation ECOG performance status](Observation-mii-exa-test-data-patient-14-onko-ecog-1.md)

**supportingInfo**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); description = MTB-Beschluss: Erstlinie Pembrolizumab bei MSI-high metastasiertem Kolonkarzinom anstelle der Standard-Chemotherapie.; created = 2024-04-18](CarePlan-mii-exa-test-data-patient-14-mtb-therapieplan-1.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-test-data-patient-14-mtb-episode-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status",
      "code" : "non-exhausted",
      "display" : "Leitlinien nicht ausgeschöpft"
    }
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "effectivePeriod" : {
    "start" : "2024-03-26",
    "end" : "2024-04-18"
  },
  "problem" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    },
    "item" : [{
      "reference" : "DiagnosticReport/mii-exa-test-data-patient-14-mtb-ngs-bericht-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "424122007",
        "display" : "ECOG performance status finding"
      }]
    },
    "item" : [{
      "reference" : "Observation/mii-exa-test-data-patient-14-onko-ecog-1"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "CarePlan/mii-exa-test-data-patient-14-mtb-therapieplan-1"
  }]
}

```
