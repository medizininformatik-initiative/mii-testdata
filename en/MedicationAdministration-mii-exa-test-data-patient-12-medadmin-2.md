# mii-exa-test-data-patient-12-medadmin-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-medadmin-2**

## Example MedicationAdministration: mii-exa-test-data-patient-12-medadmin-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationAdministration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationAdministrations`/MA_0000032

**status**: Completed

**category**: Inpatient

**medication**: [Medication Norepinephrin](Medication-mii-exa-test-data-medication-noradrenalin.md)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-08 18:10:00+0100 --> 2025-03-14 06:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md) |

**reasonReference**: [Condition Sepsis: Sonstige gramnegative Erreger](Condition-mii-exa-test-data-patient-12-diagnose-2.md)

**note**: 

> 

Spitzendosis 0,35 µg/kg/min am 09.03.; ausgeschlichen bis 14.03. — begruendet den Kreislauf-Teilscore im SOFA-Verlauf.


### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Rate[x]** |
| * | Intravenous use | 0.35 µg/kg/min (Details: UCUM codeug/kg/min = 'ug/kg/min') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-test-data-patient-12-medadmin-2",
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
    "value" : "MA_0000032"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "inpatient"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/mii-exa-test-data-medication-noradrenalin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectivePeriod" : {
    "start" : "2025-03-08T18:10:00+01:00",
    "end" : "2025-03-14T06:00:00+01:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-patient-12-diagnose-2"
  }],
  "note" : [{
    "text" : "Spitzendosis 0,35 µg/kg/min am 09.03.; ausgeschlichen bis 14.03. — begruendet den Kreislauf-Teilscore im SOFA-Verlauf."
  }],
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "rateQuantity" : {
      "value" : 0.35,
      "unit" : "µg/kg/min",
      "system" : "http://unitsofmeasure.org",
      "code" : "ug/kg/min"
    }
  }
}

```
