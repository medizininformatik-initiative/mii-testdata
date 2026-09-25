# mii-exa-test-data-onko-histologie-icdo3-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-histologie-icdo3-1**

## Example Observation: mii-exa-test-data-onko-histologie-icdo3-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Histologie ICD-O-3](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Histology and Behavior ICD-O-3 Cancer

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-10-05

**value**: Seröses Adenokarzinom

**bodySite**: Links

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-histologie-icdo3-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59847-4",
      "display" : "Histology and Behavior ICD-O-3 Cancer"
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
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "8441/3",
      "display" : "Seröses Karzinom o.n.A."
    }],
    "text" : "Seröses Adenokarzinom"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
      "code" : "L",
      "display" : "Links"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C56.9",
      "display" : "Ovar"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-onko-specimen-1"
  }
}

```
