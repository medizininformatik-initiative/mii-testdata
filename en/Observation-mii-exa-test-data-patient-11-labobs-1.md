# mii-exa-test-data-patient-11-labobs-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-labobs-1**

## Example Observation: mii-exa-test-data-patient-11-labobs-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000031

**basedOn**: [ServiceRequest Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma](ServiceRequest-mii-exa-test-data-patient-11-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**effective**: 2025-01-21 07:35:00+0100

**issued**: 2025-01-21 09:02:00+0100

**value**: 3840 picogram per milliliter (Details: UCUM codepg/mL = 'pg/mL')

**interpretation**: High

**note**: 

> 

Ausschlussgrenze chronische Herzinsuffizienz: < 125 pg/mL


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Type** |
| * | 125 picogram per milliliter (Details: UCUM codepg/mL = 'pg/mL') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-labobs-1",
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
    "value" : "LO_000031",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-11-labrequest-1"
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
      "code" : "33762-6",
      "display" : "Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "effectiveDateTime" : "2025-01-21T07:35:00+01:00",
  "issued" : "2025-01-21T09:02:00+01:00",
  "valueQuantity" : {
    "value" : 3840,
    "unit" : "picogram per milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "pg/mL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "Ausschlussgrenze chronische Herzinsuffizienz: < 125 pg/mL"
  }],
  "referenceRange" : [{
    "high" : {
      "value" : 125,
      "unit" : "picogram per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "pg/mL"
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
