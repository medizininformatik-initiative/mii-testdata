# MTB Therapieempfehlung - Osimertinib - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Therapieempfehlung - Osimertinib**

## Example MedicationRequest: MTB Therapieempfehlung - Osimertinib

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Empfehlung Priorität**: 1

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/29151359

**identifier**: `https://www.charite.de/fhir/sid/mtb-beschluss`/TE-2024-001

**status**: Draft

**intent**: Proposal

**medication**: Osimertinib 80 mg

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**supportingInformation**: [Diagnostic Report for 'Genetic analysis report' for '->Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)'](DiagnosticReport-mii-exa-test-data-mtb-ngs-bericht-1.md)

**authoredOn**: 2024-03-28

**requester**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**reasonCode**: Bösartige Neubildung: Oberlappen (-Bronchus)

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); description = MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss; created = 2024-03-28](CarePlan-mii-exa-test-data-mtb-therapieplan-1.md)

**note**: 

> 

Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.


> **dosageInstruction****sequence**: 1**text**: 80 mg einmal täglich oral**timing**: Events: 2024-04-15 08:00:00+0200 , Count 130 times, Duration 5days , 1-2 per 1-2 day**asNeeded**: false**site**: Mouth region structure (body structure)**route**: Oral route (qualifier value)
> **doseAndRate****dose**: 80 mg (Details: UCUM codemg = 'mg')**rate**: 80 mg (Details: UCUM codemg = 'mg')/1 Tag (Details: UCUM coded = 'd')

> **doseAndRate****dose**: 40-80 mg**rate**: 3.3 mg/h (Details: UCUM codemg/h = 'mg/h')

> **doseAndRate****rate**: 2-4 mg/h
**maxDosePerPeriod**: 160 mg (Details: UCUM codemg = 'mg')/1 Tag (Details: UCUM coded = 'd')**maxDosePerAdministration**: 80 mg (Details: UCUM codemg = 'mg')

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-mtb-therapieempfehlung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1A"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "29151359"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-beschluss",
    "value" : "TE-2024-001"
  }],
  "status" : "draft",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "L01EB04",
      "display" : "Osimertinib"
    },
    {
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "3C06JJ0Z2O",
      "display" : "OSIMERTINIB"
    }],
    "text" : "Osimertinib 80 mg"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "supportingInformation" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-mtb-ngs-bericht-1"
  }],
  "authoredOn" : "2024-03-28",
  "requester" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "code" : "C34.1",
      "display" : "Bösartige Neubildung: Oberlappen (-Bronchus)"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-mtb-therapieplan-1"
  }],
  "note" : [{
    "text" : "Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "80 mg einmal täglich oral",
    "timing" : {
      "event" : ["2024-04-15T08:00:00+02:00"],
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2024-04-15",
          "end" : "2024-08-30"
        },
        "count" : 130,
        "countMax" : 140,
        "duration" : 5,
        "durationMax" : 10,
        "durationUnit" : "min",
        "frequency" : 1,
        "frequencyMax" : 2,
        "period" : 1,
        "periodMax" : 2,
        "periodUnit" : "d",
        "dayOfWeek" : ["mon"],
        "timeOfDay" : ["08:00:00"]
      }
    },
    "asNeededBoolean" : false,
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "123851003",
        "display" : "Mouth region structure (body structure)"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route (qualifier value)"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 80,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 80,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Tag",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        }
      }
    },
    {
      "doseRange" : {
        "low" : {
          "value" : 40,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 80,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      },
      "rateQuantity" : {
        "value" : 3.3,
        "unit" : "mg/h",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/h"
      }
    },
    {
      "rateRange" : {
        "low" : {
          "value" : 2,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        },
        "high" : {
          "value" : 4,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        }
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 160,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Tag",
        "system" : "http://unitsofmeasure.org",
        "code" : "d"
      }
    },
    "maxDosePerAdministration" : {
      "value" : 80,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }],
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
