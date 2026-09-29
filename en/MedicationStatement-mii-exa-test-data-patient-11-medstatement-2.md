# mii-exa-test-data-patient-11-medstatement-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-11-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000022

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000021; status = active; intent = order; medication[x] = ->Medication Valsartan und Sacubitril; authoredOn = 2025-01-28 09:40:00+0100; note = Auftitration auf 97/103 mg nach vier Wochen bei stabilem Blutdruck vorgesehen.](MedicationRequest-mii-exa-test-data-patient-11-medrequest-1.md)

**status**: Active

**category**: stationäre Entlassung

**medication**: [Medication Valsartan und Sacubitril](Medication-mii-exa-test-data-medication-sacubitril-valsartan.md)

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**effective**: 2025-01-28 --> (ongoing)

**dateAsserted**: 2025-01-28

**informationSource**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonReference**: [Condition Heart failure](Condition-mii-exa-test-data-patient-11-diagnose-1.md)

> **dosage****sequence**: 1**timing**: 2 per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablet (Details: standardterms.edqm.eu code10219000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-11-medstatement-2",
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
    "value" : "MS_0000022"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-11-medrequest-1"
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
    "reference" : "Medication/mii-exa-test-data-medication-sacubitril-valsartan"
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
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d"
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
