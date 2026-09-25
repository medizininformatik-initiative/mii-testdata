# mii-exa-test-data-patient-3-medrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-medrequest-1**

## Example MedicationRequest: mii-exa-test-data-patient-3-medrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationOrders`/MO_0000005

**status**: Active

**intent**: Order

**medication**: Metamizol 500 mg Filmtabletten

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**authoredOn**: 2022-04-12 11:32:00+0100

> **dosageInstruction****text**: Die Einzeldosis 500-1000 mg, Tageshöchstdosis 5000 mg**timing**: Once per 1 day**asNeeded**: true**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500-1000 mg |

**maxDosePerPeriod**: 5000 mg (Details: UCUM codemg = 'mg')/24 Stunden (Details: UCUM codeh = 'h')**maxDosePerAdministration**: 1000 mg (Details: UCUM codemg = 'mg')

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-test-data-patient-3-medrequest-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
    "value" : "MO_0000005"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "00651306",
      "display" : "Metamizol HEXAL® 500 mg"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "N02BB02",
      "display" : "Metamizol-Natrium"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "code" : "N02BB02",
      "display" : "metamizole sodium"
    }],
    "text" : "Metamizol 500 mg Filmtabletten"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "authoredOn" : "2022-04-12T11:32:00+01:00",
  "dosageInstruction" : [{
    "text" : "Die Einzeldosis 500-1000 mg, Tageshöchstdosis 5000 mg",
    "timing" : {
      "repeat" : {
        "frequencyMax" : 6,
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
  }],
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
