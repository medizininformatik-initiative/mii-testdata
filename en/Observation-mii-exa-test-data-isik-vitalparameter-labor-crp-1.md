# mii-exa-test-data-isik-vitalparameter-labor-crp-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-isik-vitalparameter-labor-crp-1**

## Example Observation: mii-exa-test-data-isik-vitalparameter-labor-crp-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [ISiKLaboruntersuchungCRP](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.icu@2027.0.0-ballot.3&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungCRP)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/ISIK-VITAL-LAB-001

**status**: Final

**category**: Laboratory

**code**: C-reaktives Protein (Serum)

**subject**: [Viktoria Vogel Female, DoB: 1968-04-17 ( https://www.charite.de/fhir/sid/patientenidentifikation#ISIK-VITAL-TEST-001)](Patient-mii-exa-test-data-isik-vitalparameter-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-05-11 --> 2026-05-14](Encounter-mii-exa-test-data-isik-vitalparameter-encounter-1.md)

**effective**: 2026-05-12 07:30:00+0200

**issued**: 2026-05-12 09:00:00+0200

**performer**: Zentrallabor Charite

**value**: 4.2 milligram per liter (Details: UCUM codemg/L = 'mg/L')

**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Type** |
| * | 5 milligram per liter (Details: UCUM codemg/L = 'mg/L') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-isik-vitalparameter-labor-crp-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKLaboruntersuchungCRP"],
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
    "value" : "ISIK-VITAL-LAB-001"
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
      "code" : "1988-5",
      "display" : "C reactive protein [Mass/volume] in Serum or Plasma"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "55235003",
      "display" : "C-reactive protein measurement (procedure)"
    }],
    "text" : "C-reaktives Protein (Serum)"
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
    "value" : 4.2,
    "unit" : "milligram per liter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "referenceRange" : [{
    "high" : {
      "value" : 5,
      "unit" : "milligram per liter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/L"
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
