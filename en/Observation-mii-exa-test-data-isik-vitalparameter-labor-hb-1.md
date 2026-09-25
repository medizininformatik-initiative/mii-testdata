# mii-exa-test-data-isik-vitalparameter-labor-hb-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-labor-hb-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-labor-hb-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [ISiKLaboruntersuchungHb](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungHb)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/ISIK-VITAL-LAB-003

**status**: Final

**category**: Laboratory

**code**: Haemoglobin (EDTA-Blut)

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 07:30:00+0200

**issued**: 2026-05-12 09:00:00+0200

**performer**: Zentrallabor Charite

**value**: 13.2 gram per deciliter (Details: UCUM codeg/dL = 'g/dL')

**interpretation**: Normal

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** |
| * | 12 gram per deciliter (Details: UCUM codeg/dL = 'g/dL') | 16 gram per deciliter (Details: UCUM codeg/dL = 'g/dL') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-labor-hb-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungHb"],
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
    "value" : "ISIK-VITAL-LAB-003"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "718-7",
      "display" : "Hemoglobin [Mass/volume] in Blood"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "416125006",
      "display" : "Hemoglobin level (observable entity)"
    }],
    "text" : "Haemoglobin (EDTA-Blut)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-isik-vitalparameter-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-isik-vitalparameter-encounter-1"
  },
  "effectiveDateTime" : "2026-05-12T07:30:00+02:00",
  "issued" : "2026-05-12T09:00:00+02:00",
  "performer" : [{
    "display" : "Zentrallabor Charite"
  }],
  "valueQuantity" : {
    "value" : 13.2,
    "unit" : "gram per deciliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 12,
      "unit" : "gram per deciliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "g/dL"
    },
    "high" : {
      "value" : 16,
      "unit" : "gram per deciliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "g/dL"
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
