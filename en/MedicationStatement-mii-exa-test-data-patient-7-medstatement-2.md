# mii-exa-test-data-patient-7-medstatement-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-7-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000020

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000019; status = active; intent = order; medication[x] = ->Medication Salbutamol; authoredOn = 2024-01-10 16:30:00+0100](MedicationRequest-mii-exa-test-data-patient-7-medrequest-2.md)

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication Salbutamol](Medication-mii-exa-test-data-medication-salbutamol.md)

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Pädiatrie; period = 2024-01-08 --> 2024-01-15](Encounter-mii-exa-test-data-patient-7-encounter-1.md)

**effective**: 2024-01-10 16:30:00+0100 --> 2024-01-15 12:00:00+0100

**dateAsserted**: 2024-01-10

> **dosage****text**: Salbutamol 2 Hubs inhalativ bei Bedarf**timing**: Once per 4 hours**asNeeded**: true**route**: Inhalation use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 200 μg (Details: UCUM codeug = 'ug') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-7-medstatement-2",
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
    "value" : "MS_0000020"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-7-medrequest-2"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "inpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200",
      "display" : "stationärer Aufenthalt"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-salbutamol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-01-10T16:30:00+01:00",
    "end" : "2024-01-15T12:00:00+01:00"
  },
  "dateAsserted" : "2024-01-10",
  "dosage" : [{
    "text" : "Salbutamol 2 Hubs inhalativ bei Bedarf",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 4,
        "periodUnit" : "h"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20020000",
        "display" : "Inhalation use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 200,
        "unit" : "μg",
        "system" : "http://unitsofmeasure.org",
        "code" : "ug"
      }
    }]
  }]
}

```
