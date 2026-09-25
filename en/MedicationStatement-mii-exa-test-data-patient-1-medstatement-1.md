# mii-exa-test-data-patient-1-medstatement-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-medstatement-1**

## Example MedicationStatement: mii-exa-test-data-patient-1-medstatement-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/MedicationStatements`/MS_0000001

**status**: Active

**category**: stationäre Aufnahme

**medication**: ASS 100 mg Tabletten

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**context**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2020-08-30 --> (ongoing)

**dateAsserted**: 2024-02-14

**informationSource**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**reasonCode**: Direct thrombin inhibitor prophylaxis indicated (situation)

**note**: 

> 

Dauermedikation, Einnahme 30 Minuten nach dem Mittagessen.


> **dosage****sequence**: 1**timing**: 30min , after breakfast, 1-2 per 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 100 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-patient-1-medstatement-1",
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
    "value" : "MS_0000001"
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
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "06312077",
      "display" : "ASS 100 - 1a Pharma TAH Tabletten"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "B01AC06",
      "display" : "Acetylsalicylsäure"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "code" : "B01AC06",
      "display" : "acetylsalicylic acid"
    }],
    "text" : "ASS 100 mg Tabletten"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "context" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "effectivePeriod" : {
    "start" : "2020-08-30"
  },
  "dateAsserted" : "2024-02-14",
  "informationSource" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "787930001",
      "display" : "Direct thrombin inhibitor prophylaxis indicated (situation)"
    }]
  }],
  "note" : [{
    "text" : "Dauermedikation, Einnahme 30 Minuten nach dem Mittagessen."
  }],
  "dosage" : [{
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2020-08-30",
          "end" : "2024-02-22"
        },
        "frequency" : 1,
        "frequencyMax" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["PCM"],
        "offset" : 30
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
        "value" : 100,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
