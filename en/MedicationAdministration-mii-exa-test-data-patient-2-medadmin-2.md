# mii-exa-test-data-patient-2-medadmin-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-2-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000004

**status**: Completed

**category**: Inpatient

**medication**: [Medication Carboplatin](Medication-mii-exa-test-data-medication-carboplatin.md)

**subject**: [Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --> 2024-03-13](Encounter-mii-exa-test-data-patient-2-encounter-1.md)

**effective**: 2024-03-07 10:00:00+0100 --> 2024-03-07 11:00:00+0100

**request**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000007; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-07 10:00:00+0100](MedicationRequest-mii-exa-test-data-patient-2-medrequest-2.md)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** | **Rate[x]** |
| * | Carboplatin 450mg IV über 1 Stunde | Intravenous use | 450 mg (Details: UCUM codemg = 'mg') | 450 mg (Details: UCUM codemg = 'mg')/1 h (Details: UCUM codeh = 'h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-2-medadmin-2",
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
    "value" : "MA_0000004"
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
    "reference" : "Medication/mii-exa-test-data-medication-carboplatin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2024-03-07T10:00:00+01:00",
    "end" : "2024-03-07T11:00:00+01:00"
  },
  "request" : {
    "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-2"
  },
  "dosage" : {
    "text" : "Carboplatin 450mg IV über 1 Stunde",
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 450,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 450,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
