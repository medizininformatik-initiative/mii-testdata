# mii-exa-test-data-patient-12-labobs-4 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-labobs-4**

## Example Observation: mii-exa-test-data-patient-12-labobs-4

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000044

**basedOn**: [ServiceRequest Lactate [Moles/volume] in Serum or Plasma](ServiceRequest-mii-exa-test-data-patient-12-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Leukocytes [#/volume] in Blood

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-1.md)

**effective**: 2025-03-08 14:45:00+0100

**issued**: 2025-03-08 15:20:00+0100

**value**: 23.4 /nanoliter (Details: UCUM code/nL = '/nL')

**interpretation**: High

### ReferenceRanges

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** | **AppliesTo** |
| * | 3.9 /nanoliter (Details: UCUM code/nL = '/nL') | 10.5 /nanoliter (Details: UCUM code/nL = '/nL') | Normal Range | Male (finding) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-labobs-4",
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
    "value" : "LO_000044",
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
      "code" : "26464-8",
      "display" : "Leukocytes [#/volume] in Blood"
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
    "value" : 23.4,
    "unit" : "/nanoliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "/nL"
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
      "value" : 3.9,
      "unit" : "/nanoliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "/nL"
    },
    "high" : {
      "value" : 10.5,
      "unit" : "/nanoliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "/nL"
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
        "code" : "248153007",
        "display" : "Male (finding)"
      }]
    }]
  }]
}

```
