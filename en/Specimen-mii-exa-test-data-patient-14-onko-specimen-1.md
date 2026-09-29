# mii-exa-test-data-patient-14-onko-specimen-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-specimen-1**

## Example Specimen: mii-exa-test-data-patient-14-onko-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: ONKO-SPEC-014-1

**accessionIdentifier**: `https://www.charite.de/fhir/sid/accession`/PATH-2024-08417

**status**: Available

**type**: Specimen from colon obtained by sigmoidectomy

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-03-12 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-14-onko-specimen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "value" : "ONKO-SPEC-014-1"
  }],
  "accessionIdentifier" : {
    "system" : "https://www.charite.de/fhir/sid/accession",
    "value" : "PATH-2024-08417"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122651006",
      "display" : "Specimen from colon obtained by sigmoidectomy"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "collection" : {
    "collectedDateTime" : "2024-03-12"
  }
}

```
