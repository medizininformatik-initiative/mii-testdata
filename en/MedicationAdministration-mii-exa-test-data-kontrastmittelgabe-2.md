# mii-exa-test-data-kontrastmittelgabe-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kontrastmittelgabe-2**

## Example MedicationAdministration: mii-exa-test-data-kontrastmittelgabe-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Konstrastmittelgabe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_KM_0000002

**partOf**: [Procedure Mammographie](Procedure-mii-exa-test-data-bildgebungsprozedur.md)

**status**: Completed

**category**: Inpatient

**medication**: Natriumchlorid 0,9 % Injektionsloesung (Nachspuelung)

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**context**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-15](Encounter-mii-exa-test-data-bildgebung-encounter-1.md)

**effective**: 2024-07-19 12:22:45+0200 --> 2024-07-19 12:23:45+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md) |

**reasonCode**: Given as Ordered

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-bildgebung-diagnose-1.md)

**request**: [MedicationRequest: status = completed; intent = order; medication[x] = ->Medication Xydalba 500 mg Pulver für ein Konzentrat zur Herst. einer Infusionslösung 1 Durchstechfl. N1](MedicationRequest-mii-exa-test-data-bildgebung-medrequest-1.md)

**note**: 

> 

NaCl-Nachspuelung des Kontrastmittelbolus ueber denselben Zugang


### Dosages

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** | **Rate[x]** |
| * | 30 mL NaCl 0,9 % intravenoes ueber 1 Minute (Nachspuelung) | Left upper arm structure (body structure) | Intravenous route (qualifier value) | 30 milliliter (Details: UCUM codemL = 'mL') | 30 milliliter (Details: UCUM codemL = 'mL')/1 minute (Details: UCUM codemin = 'min') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-kontrastmittelgabe-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
    "value" : "MA_KM_0000002"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-bildgebungsprozedur"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient",
      "display" : "Inpatient"
    }]
  },
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "B05XA03",
      "display" : "Natriumchlorid"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "code" : "B05XA03",
      "display" : "sodium chloride"
    }],
    "text" : "Natriumchlorid 0,9 % Injektionsloesung (Nachspuelung)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-bildgebung-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-07-19T12:22:45+02:00",
    "end" : "2024-07-19T12:23:45+02:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/reason-medication-given",
      "code" : "b",
      "display" : "Given as Ordered"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-bildgebung-diagnose-1"
  }],
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-bildgebung-medrequest-1"
  },
  "note" : [{
    "text" : "NaCl-Nachspuelung des Kontrastmittelbolus ueber denselben Zugang"
  }],
  "dosage" : {
    "text" : "30 mL NaCl 0,9 % intravenoes ueber 1 Minute (Nachspuelung)",
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "368208006",
        "display" : "Left upper arm structure (body structure)"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route (qualifier value)"
      }]
    },
    "dose" : {
      "value" : 30,
      "unit" : "milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 30,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  }
}

```
