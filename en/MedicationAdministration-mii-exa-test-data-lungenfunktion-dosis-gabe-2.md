# mii-exa-test-data-lungenfunktion-dosis-gabe-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-lungenfunktion-dosis-gabe-2**

## Example MedicationAdministration: mii-exa-test-data-lungenfunktion-dosis-gabe-2

Information Source: [https://www.charite.de/fhir/lungenfunktion-messplatz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/lungenfunktion-messplatz)

Profile: [MII PR Lungenfunktion Dosisgabe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/lufu-dosis-gabe-2

**partOf**: 

* [Procedure Methacholine challenge (procedure)](Procedure-mii-exa-test-data-lungenfunktion-provokationstest-messung-1.md)
* [MedicationAdministration: identifier = https://www.charite.de/fhir/sid/MedicationAdministrations#lufu-dosis-gabe-1; status = completed; category = Inpatient; medication[x] = ->Medication Provokit® 0,33%; effective[x] = 2025-02-18 11:05:00+0100; reasonCode = Methacholine challenge (procedure); note = Erste Dosisstufe des Provokationsprotokolls.](MedicationAdministration-mii-exa-test-data-lungenfunktion-dosis-gabe-1.md)

**status**: Completed

**category**: Inpatient

**medication**: [Medication Provokit® 0,33%](Medication-mii-exa-test-data-lungenfunktion-methacholine-1.md)

**subject**: [Luise Atemwald Female, DoB: 1972-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#LUFU-TEST-001)](Patient-mii-exa-test-data-lungenfunktion-patient-1.md)

**context**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-02-18 08:30:00+0100 --> 2025-02-18 12:30:00+0100](Encounter-mii-exa-test-data-lungenfunktion-encounter-1.md)

**effective**: 2025-02-18 11:25:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | MTA Lungenfunktionslabor |

**reasonCode**: Methacholine challenge (procedure)

**request**: [MedicationRequest: status = completed; intent = order; medication[x] = ->Medication Provokit® 0,33%; authoredOn = 2025-02-18 10:50:00+0100](MedicationRequest-mii-exa-test-data-lungenfunktion-methacholine-anordnung-1.md)

**note**: 

> 

Abbruchdosis: PD20 erreicht (FEV1-Abfall 26 %).


### Dosages

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** | **Rate[x]** |
| * | 0,30 mg Methacholin inhalativ ueber Dosimeter-Vernebler (Abbruchdosis) | Mouth region structure (body structure) | Respiratory tract route (qualifier value) | 0.3 mg (Details: UCUM codemg = 'mg') | 0.3 mg (Details: UCUM codemg = 'mg')/2 min (Details: UCUM codemin = 'min') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-lungenfunktion-dosis-gabe-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/lungenfunktion-messplatz",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
    "value" : "lufu-dosis-gabe-2"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-lungenfunktion-provokationstest-messung-1"
  },
  {
    "reference" : "MedicationAdministration/mii-exa-test-data-lungenfunktion-dosis-gabe-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-lungenfunktion-methacholine-1"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-lungenfunktion-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-lungenfunktion-encounter-1"
  },
  "effectiveDateTime" : "2025-02-18T11:25:00+01:00",
  "performer" : [{
    "actor" : {
      "display" : "MTA Lungenfunktionslabor"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "252520007",
      "display" : "Methacholine challenge (procedure)"
    }]
  }],
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-lungenfunktion-methacholine-anordnung-1"
  },
  "note" : [{
    "text" : "Abbruchdosis: PD20 erreicht (FEV1-Abfall 26 %)."
  }],
  "dosage" : {
    "text" : "0,30 mg Methacholin inhalativ ueber Dosimeter-Vernebler (Abbruchdosis)",
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
        "code" : "447694001",
        "display" : "Respiratory tract route (qualifier value)"
      }]
    },
    "dose" : {
      "value" : 0.3,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 0.3,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 2,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  }
}

```
