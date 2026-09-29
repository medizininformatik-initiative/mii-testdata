# mii-exa-test-data-patient-11-labobs-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-labobs-2**

## Example Observation: mii-exa-test-data-patient-11-labobs-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000032

**basedOn**: [ServiceRequest Natriuretic peptide.B prohormone N-Terminal [Mass/volume] in Serum or Plasma](ServiceRequest-mii-exa-test-data-patient-11-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Creatinine [Mass/volume] in Serum or Plasma

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**effective**: 2025-01-21 07:35:00+0100

**issued**: 2025-01-21 09:02:00+0100

**value**: 1.42 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: High

### ReferenceRanges

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** | **AppliesTo** |
| * | 0.51 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL') | 0.95 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL') | Normal Range | Female (finding) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-11-labobs-2",
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
    "value" : "LO_000032",
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
      "code" : "2160-0",
      "display" : "Creatinine [Mass/volume] in Serum or Plasma"
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
    "value" : 1.42,
    "unit" : "milligram per deciliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 0.51,
      "unit" : "milligram per deciliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "high" : {
      "value" : 0.95,
      "unit" : "milligram per deciliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
        "code" : "normal",
        "display" : "Normal Range"
      }]
    },
    "appliesTo" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "248152002",
        "display" : "Female (finding)"
      }]
    }]
  }]
}

```
