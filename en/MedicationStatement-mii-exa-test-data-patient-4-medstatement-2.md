# mii-exa-test-data-patient-4-medstatement-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-medstatement-2**

## Example MedicationStatement: mii-exa-test-data-patient-4-medstatement-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000013

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000012; status = active; intent = order; medication[x] = ->Medication Omeprazol; authoredOn = 2020-09-16 10:00:00+0200](MedicationRequest-mii-exa-test-data-patient-4-medrequest-2.md)

**status**: Active

**category**: stationärer Aufenthalt

**medication**: [Medication Omeprazol](Medication-mii-exa-test-data-medication-omeprazol.md)

**subject**: [Anonymous Patient Male, DoB: 1962 ( pseudonymized)](Patient-mii-exa-test-data-patient-4.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2020-09-15 --> 2020-09-25](Encounter-mii-exa-test-data-patient-4-encounter-1.md)

**effective**: 2020-09-16 10:00:00+0200 --> 2020-09-25 10:00:00+0200

**dateAsserted**: 2020-09-16

> **dosage****text**: Omeprazol 20mg 1x täglich morgens**timing**: Morning, Once per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 20 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-4-medstatement-2",
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
    "value" : "MS_0000013"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-4-medrequest-2"
  }],
  "status" : "active",
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
    "reference" : "Medication/mii-exa-test-data-medication-omeprazol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-4"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-4-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2020-09-16T10:00:00+02:00",
    "end" : "2020-09-25T10:00:00+02:00"
  },
  "dateAsserted" : "2020-09-16",
  "dosage" : [{
    "text" : "Omeprazol 20mg 1x täglich morgens",
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
        "value" : 20,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
