# mii-exa-test-data-patient-11-medstatement-3 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-medstatement-3**

## Example MedicationStatement: mii-exa-test-data-patient-11-medstatement-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000023

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000022; status = active; intent = order; medication[x] = ->Medication Empagliflozin; authoredOn = 2025-01-28 09:42:00+0100; note = Indikation sowohl Herzinsuffizienz als auch Diabetes mellitus Typ 2.](MedicationRequest-mii-exa-test-data-patient-11-medrequest-2.md)

**status**: Active

**category**: stationäre Entlassung

**medication**: [Medication Empagliflozin](Medication-mii-exa-test-data-medication-empagliflozin.md)

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**effective**: 2025-01-28 --> (ongoing)

**dateAsserted**: 2025-01-28

**informationSource**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

> **dosage****sequence**: 1**timing**: Morning, Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablet (Details: standardterms.edqm.eu code10219000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-11-medstatement-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
    "value" : "MS_0000023"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-2"
  }],
  "status" : "active",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "outpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E230",
      "display" : "stationäre Entlassung"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-empagliflozin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2025-01-28"
  },
  "dateAsserted" : "2025-01-28",
  "informationSource" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-11-diagnose-1"
  }],
  "dosage" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Tablet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000"
      }
    }]
  }]
}

```
