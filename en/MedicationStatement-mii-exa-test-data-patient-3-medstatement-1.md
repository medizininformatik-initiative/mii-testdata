# mii-exa-test-data-patient-3-medstatement-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-3-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000006

**basedOn**: [MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000005; status = active; intent = order; medication[x] = Metamizol HEXAL® 500 mg; authoredOn = 2022-04-12 11:32:00+0100](MedicationRequest-mii-exa-test-data-patient-3-medrequest-1.md)

**status**: Unknown

**category**: stationärer Aufenthalt

**medication**: [Medication Metamizol HEXAL® 500 mg](Medication-mii-exa-test-data-medication-metamizol.md)

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**context**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**effective**: 2022-04-12 11:32:00+0100 --> (ongoing)

**dateAsserted**: 2022-04-12

> **dosage****timing**: 4 per 1 day**asNeeded**: true**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500-1000 mg |

**maxDosePerPeriod**: 5000 mg (Details: UCUM codemg = 'mg')/24 Stunden (Details: UCUM codeh = 'h')**maxDosePerAdministration**: 1000 mg (Details: UCUM codemg = 'mg')



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-3-medstatement-1",
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
    "value" : "MS_0000006"
  }],
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-test-data-patient-3-medrequest-1"
  }],
  "status" : "unknown",
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
    "reference" : "Medication/mii-exa-test-data-medication-metamizol"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2022-04-12T11:32:00+01:00"
  },
  "dateAsserted" : "2022-04-12",
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseRange" : {
        "low" : {
          "value" : 500,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 1000,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 5000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 24,
        "unit" : "Stunden",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    },
    "maxDosePerAdministration" : {
      "value" : 1000,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }]
}

```
