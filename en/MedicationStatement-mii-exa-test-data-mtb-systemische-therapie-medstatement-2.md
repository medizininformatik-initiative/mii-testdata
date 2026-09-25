# MTB Systemtherapie MedicationStatement (Variante asNeededCodeableConcept) - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Systemtherapie MedicationStatement (Variante asNeededCodeableConcept)**

## Example MedicationStatement: MTB Systemtherapie MedicationStatement (Variante asNeededCodeableConcept)

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Systemtherapie Medication Statement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-mii-exa-test-data-mtb-systemische-therapie-1.md)

**status**: Completed

**medication**: Palonosetron, Kombinationen

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**effective**: 2024-04-15 --> (ongoing)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Text** | **Timing** | **AsNeeded[x]** |
| * | 1 | Bei Bedarf bei Übelkeit, morgens | 30min , Morning, Once | Nausea (finding) |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-test-data-mtb-systemische-therapie-medstatement-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-mtb-systemische-therapie-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2024",
      "code" : "A04AA55",
      "display" : "Palonosetron, Kombinationen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "effectivePeriod" : {
    "start" : "2024-04-15"
  },
  "dosage" : [{
    "sequence" : 1,
    "text" : "Bei Bedarf bei Übelkeit, morgens",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 7,
          "unit" : "Tage",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        },
        "when" : ["MORN"],
        "offset" : 30
      }
    },
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422587007",
        "display" : "Nausea (finding)"
      }]
    }
  }]
}

```
