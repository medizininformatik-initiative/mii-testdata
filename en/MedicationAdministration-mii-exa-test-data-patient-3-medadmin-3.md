# mii-exa-test-data-patient-3-medadmin-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-medadmin-3**

## Example MedicationAdministration: mii-exa-test-data-patient-3-medadmin-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000008

**status**: Completed

**category**: Inpatient

**medication**: [Medication Oxaliplatin](Medication-mii-exa-test-data-medication-oxaliplatin.md)

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**effective**: 2022-04-25 09:30:00+0200 --> 2022-04-25 11:30:00+0200

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000010; status = active; intent = order; medication[x] = ->Medication Oxaliplatin; authoredOn = 2022-04-25 09:30:00+0200](MedicationRequest-mii-exa-test-data-patient-3-medrequest-3.md)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** | **Rate[x]** |
| * | Oxaliplatin 85mg IV über 2 Stunden | Intravenous use | 85 mg (Details: UCUM codemg = 'mg') | 85 mg (Details: UCUM codemg = 'mg')/2 h (Details: UCUM codeh = 'h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-3-medadmin-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
    "value" : "MA_0000008"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient",
      "display" : "Inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-oxaliplatin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2022-04-25T09:30:00+02:00",
    "end" : "2022-04-25T11:30:00+02:00"
  },
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-3-medrequest-3"
  },
  "dosage" : {
    "text" : "Oxaliplatin 85mg IV über 2 Stunden",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 85,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 85,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 2,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
