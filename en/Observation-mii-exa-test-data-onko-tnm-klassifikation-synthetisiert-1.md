# mii-exa-test-data-onko-tnm-klassifikation-synthetisiert-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tnm-klassifikation-synthetisiert-1**

## Example Observation: mii-exa-test-data-onko-tnm-klassifikation-synthetisiert-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Integrated TNM category

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-10-12

**value**: Stadium IVB

**method**: 8. Auflage

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-onko-sequencer-1.md)

**hasMember**: [Observation pM category](Observation-mii-exa-test-data-onko-tnm-m-kategorie-1.md)

**derivedFrom**: 

* [Observation Pathologic TNM stage grouping](Observation-mii-exa-test-data-onko-tnm-klassifikation-1.md)
* [Observation Clinical TNM stage grouping](Observation-mii-exa-test-data-onko-tnm-klassifikation-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | TNM-Formel | ypT3c pN1 M1b (Stadium IVB) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-tnm-klassifikation-synthetisiert-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399703000",
      "display" : "Integrated TNM category"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "effectiveDateTime" : "2021-10-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IVB",
      "display" : "Stadium IVB"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-onko-specimen-1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-onko-sequencer-1"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-onko-tnm-m-kategorie-1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-onko-tnm-klassifikation-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-klassifikation-2"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel",
        "code" : "tnm-formel",
        "display" : "TNM-Formel"
      }]
    },
    "valueString" : "ypT3c pN1 M1b (Stadium IVB)"
  }]
}

```
