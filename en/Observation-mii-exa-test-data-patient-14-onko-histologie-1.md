# mii-exa-test-data-patient-14-onko-histologie-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-histologie-1**

## Example Observation: mii-exa-test-data-patient-14-onko-histologie-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Histologie ICD-O-3](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Histology and Behavior ICD-O-3 Cancer

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Allgemeine Chirurgie; period = 2024-03-11 --> 2024-03-22](Encounter-mii-exa-test-data-patient-14-encounter-1.md)

**effective**: 2024-03-20

**value**: Adenokarzinom o.n.A.

**specimen**: [Specimen: identifier = ONKO-SPEC-014-1; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2024-08417; status = available; type = Specimen from colon obtained by sigmoidectomy](Specimen-mii-exa-test-data-patient-14-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-14-onko-histologie-1",
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
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-1"
  },
  "effectiveDateTime" : "2024-03-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "8140/3",
      "display" : "Adenokarzinom o.n.A."
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-14-onko-specimen-1"
  }
}

```
