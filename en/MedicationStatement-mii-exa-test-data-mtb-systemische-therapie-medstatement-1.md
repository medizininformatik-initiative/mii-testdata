# MTB Systemische Therapie MedicationStatement - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Systemische Therapie MedicationStatement**

## Example MedicationStatement: MTB Systemische Therapie MedicationStatement

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Systemtherapie Medication Statement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/mtb-medikation`/MEDSTMT-2024-001

**basedOn**: [MedicationRequest: extension = 1,Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.,http://www.ncbi.nlm.nih.gov/pubmed#29151359; identifier = https://www.charite.de/fhir/sid/mtb-beschluss#TE-2024-001; status = draft; intent = proposal; medication[x] = Osimertinib; authoredOn = 2024-03-28; reasonCode = Bösartige Neubildung: Oberlappen (-Bronchus); note = Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-1.md)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-mii-exa-test-data-mtb-systemische-therapie-1.md)

**status**: Completed

**category**: Inpatient

**medication**: Osimertinib 80 mg Filmtabletten

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**context**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**effective**: 2024-04-15 --> 2024-04-15

**dateAsserted**: 2024-04-15

**informationSource**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**reasonCode**: Bösartige Neubildung: Oberlappen (-Bronchus)

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**note**: 

> 

Z1 Osimertinib 80mg oral, daily


> **dosage****sequence**: 1**text**: 80 mg einmal täglich oral**timing**: Events: 2024-04-15 08:00:00+0200 , Count 130 times, Duration 5days , 1-2 per 1-2 day**asNeeded**: false**site**: Mouth region structure (body structure)**route**: Oral route (qualifier value)
> **doseAndRate****type**: volle Dosis**dose**: 80 mg (Details: UCUM codemg = 'mg')**rate**: 80 mg (Details: UCUM codemg = 'mg')/1 Tag (Details: UCUM coded = 'd')

> **doseAndRate****dose**: 40-80 mg**rate**: 3.3 mg/h (Details: UCUM codemg/h = 'mg/h')

> **doseAndRate****rate**: 2-4 mg/h
**maxDosePerPeriod**: 160 mg (Details: UCUM codemg = 'mg')/1 Tag (Details: UCUM coded = 'd')**maxDosePerAdministration**: 80 mg (Details: UCUM codemg = 'mg')



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-mtb-systemische-therapie-medstatement-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/mtb-medikation",
    "value" : "MEDSTMT-2024-001"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-mtb-systemische-therapie-1"
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
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "3C06JJ0Z2O",
      "display" : "OSIMERTINIB"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "L01EB04",
      "display" : "Osimertinib"
    }],
    "text" : "Osimertinib 80 mg Filmtabletten"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-04-15",
    "end" : "2024-04-15"
  },
  "dateAsserted" : "2024-04-15",
  "informationSource" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
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
  "note" : [{
    "text" : "Z1 Osimertinib 80mg oral, daily"
  }],
  "dosage" : [{
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
      "type" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte",
          "code" : "volle-Dosis",
          "display" : "volle Dosis"
        }]
      },
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
  }]
}

```
