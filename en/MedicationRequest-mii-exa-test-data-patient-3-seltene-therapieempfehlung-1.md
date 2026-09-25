# mii-exa-test-data-patient-3-seltene-therapieempfehlung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-seltene-therapieempfehlung-1**

## Example MedicationRequest: mii-exa-test-data-patient-3-seltene-therapieempfehlung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR SE Therapieempfehlung Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX SE Empfehlung Priorität**: 1

**de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung**: Evidenzgrad 1A

**MII EX SE Empfehlung Publikation**: `https://doi.org`/10.1016/j.ejphar.2015.03.048

**identifier**: `https://www.charite.de/fhir/sid/therapieempfehlungen`/SE-TE-2025-0001

**status**: Active

**intent**: Proposal

**category**: Präventive Medikation, Symptomatisch

**medication**: Losartan 50 mg Filmtabletten

**subject**: [Luisa Seltenfall Female, DoB: 1995-02-10 ( https://www.charite.de/fhir/sid/patientenidentifikation#SELT-TEST-001)](Patient-mii-exa-test-data-seltene-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-25](Encounter-mii-exa-test-data-seltene-encounter-1.md)

**authoredOn**: 2025-03-10

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Marfan syndrome

**reasonReference**: [Condition Marfan syndrome](Condition-mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1.md)

**basedOn**: [CarePlan: status = draft; intent = proposal; description = Therapieplan fuer Patient mit Marfan-Syndrom: Medikamentoese Therapie mit Losartan, kardiologische Frueherkennung und Studieneinschluss; created = 2025-03-10](CarePlan-mii-exa-test-data-patient-3-seltene-therapieplan-1.md)

**note**: 

> 

Zieldosis 50 mg erreicht; Blutdruck- und Aortenwurzel-Kontrolle alle 6 Monate.


> **dosageInstruction****sequence**: 1**text**: 50mg 1x taeglich morgens**timing**: Events: 2025-03-10 08:00:00+0100 , Count 365 times, Duration 5days , 1-2 per 1 day**asNeeded**: false**site**: Mouth region structure (body structure)**route**: Oral route (qualifier value)
> **doseAndRate****dose**: 50 mg (Details: UCUM codemg = 'mg')**rate**: 50 mg/Tag (Details: UCUM codemg/d = 'mg/d')

> **doseAndRate****dose**: 25-50 mg**rate**: 25-50 mg/Tag
**maxDosePerPeriod**: 100 mg (Details: UCUM codemg = 'mg')/1 Tag (Details: UCUM coded = 'd')**maxDosePerAdministration**: 100 mg (Details: UCUM codemg = 'mg')

> **dosageInstruction****sequence**: 2**text**: Zusaetzliche Einnahme montags 30 Minuten vor dem Fruehstueck bei Blutdruckspitzen, max. alle 1-2 Wochen**timing**: 30min , before breakfast, Once per 1-2 week**asNeeded**: Hypertensive disorder, systemic arterial (disorder)**route**: Oral route (qualifier value)

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Dose[x]** | **Rate[x]** |
| * | 25 mg (Details: UCUM codemg = 'mg') | 25 mg (Details: UCUM codemg = 'mg')/1 Woche (Details: UCUM codewk = 'wk') |


> **dosageInstruction****sequence**: 3**text**: Ausschleichen bei Therapieende: 25 mg taeglich ueber 1-2 Wochen**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 25 mg (Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 4**text**: Begleitende Einnahme im Beobachtungszeitraum der Studie**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg (Details: UCUM codemg = 'mg') |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |

**priorPrescription**: Losartan 25 mg Aufdosierungsphase (Identifier: `https://www.charite.de/fhir/sid/therapieempfehlungen`/SE-TE-2024-0117)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-3-seltene-therapieempfehlung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.cebm.ox.ac.uk/resources/levels-of-evidence",
        "code" : "1A",
        "display" : "Evidenzgrad 1A"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "https://doi.org",
      "value" : "10.1016/j.ejphar.2015.03.048"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/therapieempfehlungen",
    "value" : "SE-TE-2025-0001"
  }],
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "prevention-medication",
      "display" : "Präventive Medikation"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "symptomatic",
      "display" : "Symptomatisch"
    }]
  }],
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2026",
      "code" : "C09CA01",
      "display" : "Losartan"
    }],
    "text" : "Losartan 50 mg Filmtabletten"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-seltene-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-seltene-encounter-1"
  },
  "authoredOn" : "2025-03-10",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-3-seltene-clinical-diagnosis-1"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-patient-3-seltene-therapieplan-1"
  }],
  "note" : [{
    "text" : "Zieldosis 50 mg erreicht; Blutdruck- und Aortenwurzel-Kontrolle alle 6 Monate."
  }],
  "dosageInstruction" : [{
    "sequence" : 1,
    "text" : "50mg 1x taeglich morgens",
    "timing" : {
      "event" : ["2025-03-10T08:00:00+01:00"],
      "repeat" : {
        "boundsDuration" : {
          "value" : 12,
          "unit" : "Monate",
          "system" : "http://unitsofmeasure.org",
          "code" : "mo"
        },
        "count" : 365,
        "countMax" : 400,
        "duration" : 5,
        "durationMax" : 10,
        "durationUnit" : "min",
        "frequency" : 1,
        "frequencyMax" : 2,
        "period" : 1,
        "periodUnit" : "d",
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
        "value" : 50,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateQuantity" : {
        "value" : 50,
        "unit" : "mg/Tag",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/d"
      }
    },
    {
      "doseRange" : {
        "low" : {
          "value" : 25,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 50,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      },
      "rateRange" : {
        "low" : {
          "value" : 25,
          "unit" : "mg/Tag",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/d"
        },
        "high" : {
          "value" : 50,
          "unit" : "mg/Tag",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/d"
        }
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 100,
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
      "value" : 100,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  },
  {
    "sequence" : 2,
    "text" : "Zusaetzliche Einnahme montags 30 Minuten vor dem Fruehstueck bei Blutdruckspitzen, max. alle 1-2 Wochen",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodMax" : 2,
        "periodUnit" : "wk",
        "dayOfWeek" : ["mon"],
        "when" : ["ACM"],
        "offset" : 30
      }
    },
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "38341003",
        "display" : "Hypertensive disorder, systemic arterial (disorder)"
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
        "value" : 25,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "rateRatio" : {
        "numerator" : {
          "value" : 25,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Woche",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        }
      }
    }]
  },
  {
    "sequence" : 3,
    "text" : "Ausschleichen bei Therapieende: 25 mg taeglich ueber 1-2 Wochen",
    "timing" : {
      "repeat" : {
        "boundsRange" : {
          "low" : {
            "value" : 1,
            "unit" : "Woche",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          },
          "high" : {
            "value" : 2,
            "unit" : "Wochen",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          }
        },
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 25,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  },
  {
    "sequence" : 4,
    "text" : "Begleitende Einnahme im Beobachtungszeitraum der Studie",
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2025-03-10",
          "end" : "2026-03-09"
        },
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 50,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }],
  "substitution" : {
    "allowedBoolean" : true
  },
  "priorPrescription" : {
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/therapieempfehlungen",
      "value" : "SE-TE-2024-0117"
    },
    "display" : "Losartan 25 mg Aufdosierungsphase"
  }
}

```
