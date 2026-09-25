# mii-exa-test-data-onko-medikation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-medikation-1**

## Example MedicationStatement: mii-exa-test-data-onko-medikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Systemische Therapie Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/onko-medikation`/ONKO-MED-2021-001

**basedOn**: 

* [CarePlan: identifier = TK-2021-001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-20](CarePlan-mii-exa-test-data-onko-tumorkonferenz-1.md)
* [MedicationRequest: status = active; intent = proposal; medication[x] = Paclitaxel; authoredOn = 2021-06-20](MedicationRequest-mii-exa-test-data-onko-therapieempfehlung-medikation-2.md)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-test-data-onko-systemische-therapie-1.md)

**status**: Completed

**category**: Inpatient

**medication**: Paclitaxel 175 mg/m2 i.v.

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**context**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-07-05 --> 2021-09-05

**dateAsserted**: 2021-07-05

**informationSource**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**reasonCode**: Bösartige Neubildung des Ovars

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**note**: 

> 

CarboTax Schema


> **dosage****sequence**: 1**text**: 175 mg/m2 i.v. über 3 Stunden, Tag 1 des 21-Tage-Zyklus**timing**: Events: 2021-07-05 09:00:00+0200 , Count 3 times, Duration 180days , 1-1 per 21-28 days**asNeeded**: false**site**: Structure of vein of upper extremity (body structure)**route**: Intravenous route (qualifier value)
> **doseAndRate****dose**: 300 mg (Details: UCUM codemg = 'mg')**rate**: 100 mg (Details: UCUM codemg = 'mg')/1 Stunde (Details: UCUM codeh = 'h')

> **doseAndRate****dose**: 250-300 mg**rate**: 100 mg/h (Details: UCUM codemg/h = 'mg/h')

> **doseAndRate****rate**: 80-120 mg/h
**maxDosePerPeriod**: 300 mg (Details: UCUM codemg = 'mg')/21 Tage (Details: UCUM coded = 'd')**maxDosePerAdministration**: 300 mg (Details: UCUM codemg = 'mg')



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-onko-medikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/onko-medikation",
    "value" : "ONKO-MED-2021-001"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-onko-tumorkonferenz-1"
  },
  {
    "reference" : "MedicationRequest/mii-exa-test-data-onko-therapieempfehlung-medikation-2"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "inpatient",
      "display" : "Inpatient"
    }]
  },
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01CD01",
      "display" : "Paclitaxel"
    }],
    "text" : "Paclitaxel 175 mg/m2 i.v."
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2021-07-05",
    "end" : "2021-09-05"
  },
  "dateAsserted" : "2021-07-05",
  "informationSource" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
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
  "note" : [{
    "text" : "CarboTax Schema"
  }],
  "dosage" : [{
    "sequence" : 1,
    "text" : "175 mg/m2 i.v. über 3 Stunden, Tag 1 des 21-Tage-Zyklus",
    "timing" : {
      "event" : ["2021-07-05T09:00:00+02:00"],
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2021-07-05",
          "end" : "2021-09-05"
        },
        "count" : 3,
        "countMax" : 6,
        "duration" : 180,
        "durationMax" : 240,
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
        "value" : 300,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 100,
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
          "value" : 250,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 300,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      },
      "rateQuantity" : {
        "value" : 100,
        "unit" : "mg/h",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/h"
      }
    },
    {
      "rateRange" : {
        "low" : {
          "value" : 80,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        },
        "high" : {
          "value" : 120,
          "unit" : "mg/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/h"
        }
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 300,
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
      "value" : 300,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }]
}

```
