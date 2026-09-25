# MTB Behandlungsepisode - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Behandlungsepisode**

## Example ClinicalImpression: MTB Behandlungsepisode

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Behandlungsepisode](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Leitlinienbehandlung Status**: [MII CS Leitlinienbehandlung Status: exhausted](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status#mii-cs-mtb-leitlinienbehandlung-status-exhausted) (exhausted)

**status**: Completed

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**effective**: 2024-01-15 --> 2024-06-30

**problem**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

> **investigation****code**: Genetic finding**item**: [Diagnostic Report for 'Genetic analysis report' for '->Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)'](DiagnosticReport-mii-exa-test-data-mtb-ngs-bericht-1.md)

> **investigation****code**: Pathology synoptic report**item**: [Diagnostic Report for 'Pathology synoptic report' for '->Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)'](DiagnosticReport-mii-exa-test-data-mtb-molecular-pathology-report-1.md)

> **investigation****code**: ECOG performance status finding**item**: [Observation ECOG Performance Status score](Observation-mii-exa-test-data-mtb-labobs-ecog-1.md)

> **investigation****code**: Was consent given**item**: [Observation Was consent given](Observation-mii-exa-test-data-mtb-consent-given-1.md)

**supportingInfo**: 

* [Procedure Chemotherapy (procedure)](Procedure-mii-exa-test-data-mtb-systemische-vortherapie-1.md)
* [Observation Circulating cell-free genomic DNA [Mass/volume] in Plasma](Observation-mii-exa-test-data-mtb-labobs-vorbefund-1.md)
* [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); description = MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss; created = 2024-03-28](CarePlan-mii-exa-test-data-mtb-therapieplan-1.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-test-data-mtb-behandlungsepisode-1",
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
      "code" : "exhausted",
      "display" : "exhausted"
    }
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15",
    "end" : "2024-06-30"
  },
  "problem" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
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
      "reference" : "DiagnosticReport/mii-exa-test-data-mtb-ngs-bericht-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "60568-3",
        "display" : "Pathology synoptic report"
      }]
    },
    "item" : [{
      "reference" : "DiagnosticReport/mii-exa-test-data-mtb-molecular-pathology-report-1"
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
      "reference" : "Observation/mii-exa-test-data-mtb-labobs-ecog-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "105511-0",
        "display" : "Was consent given"
      }]
    },
    "item" : [{
      "reference" : "Observation/mii-exa-test-data-mtb-consent-given-1"
    }]
  }],
  "supportingInfo" : [{
    "extension" : [{
      "extension" : [{
        "url" : "Therapielinie",
        "valueUnsignedInt" : 1
      },
      {
        "url" : "Zulassungsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus",
            "code" : "in-label"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    }],
    "reference" : "Procedure/mii-exa-test-data-mtb-systemische-vortherapie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mtb-labobs-vorbefund-1"
  },
  {
    "reference" : "CarePlan/mii-exa-test-data-mtb-therapieplan-1"
  }]
}

```
