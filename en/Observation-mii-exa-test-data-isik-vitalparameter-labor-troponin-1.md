# mii-exa-test-data-isik-vitalparameter-labor-troponin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-labor-troponin-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-labor-troponin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [ISiKLaboruntersuchungTroponin](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTroponin)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/ISIK-VITAL-LAB-009

**status**: Final

**category**: Laboratory

**code**: Troponin I (Serum)

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 07:30:00+0200

**issued**: 2026-05-12 09:00:00+0200

**performer**: Zentrallabor Charite

**value**: 0.02 nanogram per milliliter (Details: UCUM codeng/mL = 'ng/mL')

**interpretation**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-labor-troponin-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungTroponin"],
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
    "value" : "ISIK-VITAL-LAB-009"
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
      "code" : "10839-9",
      "display" : "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "105000003",
      "display" : "Troponin measurement (procedure)"
    }],
    "text" : "Troponin I (Serum)"
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
    "value" : 0.02,
    "unit" : "nanogram per milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/mL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }]
}

```
