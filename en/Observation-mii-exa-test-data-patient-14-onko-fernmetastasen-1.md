# mii-exa-test-data-patient-14-onko-fernmetastasen-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-fernmetastasen-1**

## Example Observation: mii-exa-test-data-patient-14-onko-fernmetastasen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Fernmetastasen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Site of distant metastasis

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Allgemeine Chirurgie; period = 2024-03-11 --> 2024-03-22](Encounter-mii-exa-test-data-patient-14-encounter-1.md)

**effective**: 2024-03-08

**value**: Leber

**bodySite**: Liver structure (body structure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-14-onko-fernmetastasen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen"],
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
      "code" : "385421009",
      "display" : "Site of distant metastasis"
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
  "effectiveDateTime" : "2024-03-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
      "code" : "HEP",
      "display" : "Leber"
    }]
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10200004",
      "display" : "Liver structure (body structure)"
    }]
  }
}

```
