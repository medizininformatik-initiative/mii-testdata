# mii-exa-test-data-onko-tnm-klassifikation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tnm-klassifikation-1**

## Example Observation: mii-exa-test-data-onko-tnm-klassifikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie TNM-Klassifikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-10-05

**value**: Stadium IVB

**method**: 8. Auflage

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)

**hasMember**: 

* [Observation pT category](Observation-mii-exa-test-data-onko-tnm-t-kategorie-1.md)
* [Observation pN category (observable entity)](Observation-mii-exa-test-data-onko-tnm-n-kategorie-1.md)
* [Observation pM category](Observation-mii-exa-test-data-onko-tnm-m-kategorie-1.md)
* [Observation Status of lymphatic (small vessel) invasion by tumor](Observation-mii-exa-test-data-onko-tnm-l-kategorie-1.md)
* [Observation Status of venous (large vessel) invasion by tumor](Observation-mii-exa-test-data-onko-tnm-v-kategorie-1.md)
* [Observation Presence of direct invasion by primary malignant neoplasm to nerve](Observation-mii-exa-test-data-onko-tnm-pn-kategorie-1.md)
* [Observation Cancer staging after multimodality therapy](Observation-mii-exa-test-data-onko-tnm-y-symbol-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-tnm-klassifikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"],
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
      "code" : "399588009",
      "display" : "Pathologic TNM stage grouping"
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
  "effectiveDateTime" : "2021-10-05",
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
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-onko-tnm-t-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-n-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-m-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-l-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-v-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-pn-kategorie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-onko-tnm-y-symbol-1"
  }]
}

```
