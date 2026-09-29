# mii-exa-test-data-patient-13-labobs-kreatinin - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-labobs-kreatinin**

## Example Observation: mii-exa-test-data-patient-13-labobs-kreatinin

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000052

**basedOn**: [ServiceRequest Protein/Creatinine [Mass Ratio] in Urine](ServiceRequest-mii-exa-test-data-patient-13-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Creatinine [Mass/volume] in Serum or Plasma

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Nephrologie; period = 2023-11-14 10:00:00+0100 --> 2023-11-14 11:30:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-1.md)

**effective**: 2023-11-14 10:30:00+0100

**issued**: 2023-11-14 16:00:00+0100

**value**: 0.82 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: Normal

**note**: 

> 

Nierenfunktion noch normal — die Proteinurie ist hier das einzige Warnsignal.


### ReferenceRanges

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** | **AppliesTo** |
| * | 0.51 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL') | 0.95 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL') | Normal Range | Female (finding) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-13-labobs-kreatinin",
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
    "value" : "LO_000052",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-13-labrequest-1"
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
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-1"
  },
  "effectiveDateTime" : "2023-11-14T10:30:00+01:00",
  "issued" : "2023-11-14T16:00:00+01:00",
  "valueQuantity" : {
    "value" : 0.82,
    "unit" : "milligram per deciliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Nierenfunktion noch normal — die Proteinurie ist hier das einzige Warnsignal."
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
