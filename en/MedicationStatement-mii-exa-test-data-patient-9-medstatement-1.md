# mii-exa-test-data-patient-9-medstatement-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-9-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-9-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000024

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000023; status = active; intent = order; medication[x] = ->Medication Levonorgestrel und Ethinylestradiol; authoredOn = 2024-02-21 10:00:00+0100](MedicationRequest-mii-exa-test-data-patient-9-medrequest-1.md)

**status**: Active

**category**: stationäre Aufnahme

**medication**: [Medication Levonorgestrel und Ethinylestradiol](Medication-mii-exa-test-data-medication-ethinylestradiol-levonorgestrel.md)

**subject**: [Petra Elisabeth Klein (official) Female, DoB: 1981-12-03 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-9.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2024-02-20 --> 2024-02-28](Encounter-mii-exa-test-data-patient-9-encounter-1.md)

**effective**: 2024-01-01 08:00:00+0100 --> 2024-02-28 08:00:00+0100

**dateAsserted**: 2024-02-21

> **dosage****text**: Verhütungspille 1 Tablette täglich**timing**: Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 1 (Details: UCUM code1 = '1') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-9-medstatement-1",
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
    "value" : "MS_0000024"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-9-medrequest-1"
  }],
  "status" : "active",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
      "code" : "outpatient"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E210",
      "display" : "stationäre Aufnahme"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-ethinylestradiol-levonorgestrel"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-9"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-9-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-01-01T08:00:00+01:00",
    "end" : "2024-02-28T08:00:00+01:00"
  },
  "dateAsserted" : "2024-02-21",
  "dosage" : [{
    "text" : "Verhütungspille 1 Tablette täglich",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
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
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }]
}

```
