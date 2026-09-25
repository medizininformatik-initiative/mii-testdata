# mii-exa-test-data-patient-3-medstatement-4 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-medstatement-4**

## Example MedicationStatement: mii-exa-test-data-patient-3-medstatement-4

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000026

**status**: Completed

**category**: stationärer Aufenthalt

**medication**: [Medication Doxorubicin](Medication-mii-exa-test-data-medication-rezeptur-doxorubicin.md)

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**effective**: 2022-04-14 13:43:00+0100 --> 2022-04-14 14:43:00+0100

**dateAsserted**: 2022-04-14

> **dosage****text**: Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion**timing**: Once per 4 weeks**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg/kilogram (Details: UCUM codemg/kg = 'mg/kg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-3-medstatement-4",
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
    "value" : "MS_0000026"
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
    "reference" : "Medication/mii-exa-test-data-medication-rezeptur-doxorubicin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2022-04-14T13:43:00+01:00",
    "end" : "2022-04-14T14:43:00+01:00"
  },
  "dateAsserted" : "2022-04-14",
  "dosage" : [{
    "text" : "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 4,
        "periodUnit" : "wk"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 50,
        "unit" : "mg/kilogram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/kg"
      }
    }]
  }]
}

```
