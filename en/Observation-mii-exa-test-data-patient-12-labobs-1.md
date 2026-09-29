# mii-exa-test-data-patient-12-labobs-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-labobs-1**

## Example Observation: mii-exa-test-data-patient-12-labobs-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000041

**basedOn**: [ServiceRequest Lactate [Moles/volume] in Serum or Plasma](ServiceRequest-mii-exa-test-data-patient-12-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Lactate [Moles/volume] in Serum or Plasma

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-1.md)

**effective**: 2025-03-08 14:45:00+0100

**issued**: 2025-03-08 15:20:00+0100

**value**: 4.8 millimole per liter (Details: UCUM codemmol/L = 'mmol/L')

**interpretation**: Critical high

**note**: 

> 

Laktat > 2 mmol/L trotz Volumengabe — Kriterium des septischen Schocks (Sepsis-3).


### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** |
| * | 0.5 millimole per liter (Details: UCUM codemmol/L = 'mmol/L') | 1.6 millimole per liter (Details: UCUM codemmol/L = 'mmol/L') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-labobs-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/lab-results",
    "value" : "LO_000041",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-12-labrequest-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.78",
      "code" : "2524-7",
      "display" : "Lactate [Moles/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-1"
  },
  "effectiveDateTime" : "2025-03-08T14:45:00+01:00",
  "issued" : "2025-03-08T15:20:00+01:00",
  "valueQuantity" : {
    "value" : 4.8,
    "unit" : "millimole per liter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "HH",
      "display" : "Critical high"
    }]
  }],
  "note" : [{
    "text" : "Laktat > 2 mmol/L trotz Volumengabe — Kriterium des septischen Schocks (Sepsis-3)."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 0.5,
      "unit" : "millimole per liter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    },
    "high" : {
      "value" : 1.6,
      "unit" : "millimole per liter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    },
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
        "code" : "normal",
        "display" : "Normal Range"
      }]
    }
  }]
}

```
