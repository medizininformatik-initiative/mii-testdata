# mii-exa-test-data-onko-prostata-komplikation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-prostata-komplikation-1**

## Example Observation: mii-exa-test-data-onko-prostata-komplikation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Clavien Dindo](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Clavien-Dindo classification grade (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: 

* [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)
* [Procedure Radikale Prostatovesikulektomie: Retropubisch](Procedure-mii-exa-test-data-onko-prostata-surgery-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-10-15

**value**: Clavien-Dindo classification grade IIIa (finding)

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-prostata-komplikation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo"],
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
      "code" : "789279006",
      "display" : "Clavien-Dindo classification grade (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  },
  {
    "reference" : "Procedure/mii-exa-test-data-onko-prostata-surgery-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "effectiveDateTime" : "2021-10-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1367522003",
      "display" : "Clavien-Dindo classification grade IIIa (finding)"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications",
      "code" : "J",
      "display" : "Ja"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-onko-specimen-1"
  }
}

```
