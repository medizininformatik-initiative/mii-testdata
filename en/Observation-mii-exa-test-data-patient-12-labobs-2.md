# mii-exa-test-data-patient-12-labobs-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-labobs-2**

## Example Observation: mii-exa-test-data-patient-12-labobs-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000042

**basedOn**: [ServiceRequest Lactate [Moles/volume] in Serum or Plasma](ServiceRequest-mii-exa-test-data-patient-12-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Procalcitonin [Mass/volume] in Serum or Plasma

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-1.md)

**effective**: 2025-03-08 14:45:00+0100

**issued**: 2025-03-08 15:20:00+0100

**value**: 28.4 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL')

**interpretation**: Critical high

**note**: 

> 

PCT-Verlauf steuert die Therapiedauer im Stewardship-Protokoll.


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Type** |
| * | 0.5 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-labobs-2",
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
    "value" : "LO_000042",
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
      "code" : "33959-8",
      "display" : "Procalcitonin [Mass/volume] in Serum or Plasma"
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
    "value" : 28.4,
    "unit" : "nanogram per milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/mL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "HH",
      "display" : "Critical high"
    }]
  }],
  "note" : [{
    "text" : "PCT-Verlauf steuert die Therapiedauer im Stewardship-Protokoll."
  }],
  "referenceRange" : [{
    "high" : {
      "value" : 0.5,
      "unit" : "nanogram per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "ng/mL"
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
