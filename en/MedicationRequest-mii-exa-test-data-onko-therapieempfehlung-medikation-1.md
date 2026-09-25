# mii-exa-test-data-onko-therapieempfehlung-medikation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-therapieempfehlung-medikation-1**

## Example MedicationRequest: mii-exa-test-data-onko-therapieempfehlung-medikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Therapieempfehlung Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/onko-beschluss`/TE-MED-2021-001

**status**: Active

**intent**: Proposal

**medication**: Carboplatin AUC5 i.v.

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**supportingInformation**: [Observation Genetic variant assessment](Observation-mii-exa-test-data-onko-genetische-variante-1.md)

**authoredOn**: 2021-06-20

**requester**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**reasonCode**: Bösartige Neubildung des Ovars

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**basedOn**: [CarePlan: identifier = TK-2021-001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-20](CarePlan-mii-exa-test-data-onko-tumorkonferenz-1.md)

> **dosageInstruction****sequence**: 1**text**: AUC5 i.v. Tag 1, alle 21 Tage**timing**: Events: 2021-07-05 09:00:00+0200 , Count 3 times, Duration 60days , 1-1 per 21-28 days**asNeeded**: false**site**: Structure of vein of upper extremity (body structure)**route**: Intravenous route (qualifier value)
> **doseAndRate****dose**: 450 mg (Details: UCUM codemg = 'mg')**rate**: 450 mg (Details: UCUM codemg = 'mg')/1 Stunde (Details: UCUM codeh = 'h')

> **doseAndRate****dose**: 400-450 mg**rate**: 450 mg/h (Details: UCUM codemg/h = 'mg/h')

> **doseAndRate****rate**: 300-500 mg/h
**maxDosePerPeriod**: 450 mg (Details: UCUM codemg = 'mg')/21 Tage (Details: UCUM coded = 'd')**maxDosePerAdministration**: 450 mg (Details: UCUM codemg = 'mg')

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-onko-therapieempfehlung-medikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/onko-beschluss",
    "value" : "TE-MED-2021-001"
  }],
  "status" : "active",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01XA02",
      "display" : "Carboplatin"
    }],
    "text" : "Carboplatin AUC5 i.v."
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "supportingInformation" : [{
    "reference" : "Observation/mii-exa-test-data-onko-genetische-variante-1"
  }],
  "authoredOn" : "2021-06-20",
  "requester" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2021",
      "code" : "C56",
      "display" : "Bösartige Neubildung des Ovars"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-onko-tumorkonferenz-1"
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "AUC5 i.v. Tag 1, alle 21 Tage",
    "timing" : {
      "event" : ["2021-07-05T09:00:00+02:00"],
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2021-07-05",
          "end" : "2021-09-05"
        },
        "count" : 3,
        "countMax" : 6,
        "duration" : 60,
        "durationMax" : 90,
        "durationUnit" : "min",
        "frequency" : 1,
        "frequencyMax" : 1,
        "period" : 21,
        "periodMax" : 28,
        "periodUnit" : "d",
        "dayOfWeek" : ["mon"],
        "timeOfDay" : ["09:00:00"]
      }
    },
    "asNeededBoolean" : false,
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "368049005",
        "display" : "Structure of vein of upper extremity (body structure)"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route (qualifier value)"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 450,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 450,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Stunde",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      }
    },
    {
      "doseRange" : {
        "low" : {
          "value" : 400,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 450,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      },
      "rateQuantity" : {
        "value" : 450,
        "unit" : "mg/h",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/h"
      }
    },
    {
      "rateRange" : {
        "low" : {
          "value" : 300,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        },
        "high" : {
          "value" : 500,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        }
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 450,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 21,
        "unit" : "Tage",
        "system" : "http://unitsofmeasure.org",
        "code" : "d"
      }
    },
    "maxDosePerAdministration" : {
      "value" : 450,
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
