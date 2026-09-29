# mii-exa-test-data-patient-14-onko-lk-befallen - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-lk-befallen**

## Example Observation: mii-exa-test-data-patient-14-onko-lk-befallen

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Anzahl der befallenen Lymphknoten](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory

**code**: Regional lymph nodes positive [#] Specimen

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Allgemeine Chirurgie; period = 2024-03-11 --> 2024-03-22](Encounter-mii-exa-test-data-patient-14-encounter-1.md)

**effective**: 2024-03-20

**value**: 7 1 (Details: UCUM code1 = '1')

**specimen**: [Specimen: identifier = ONKO-SPEC-014-1; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2024-08417; status = available; type = Specimen from colon obtained by sigmoidectomy](Specimen-mii-exa-test-data-patient-14-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-14-onko-lk-befallen",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "21893-3",
      "display" : "Regional lymph nodes positive [#] Specimen"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "443527007",
      "display" : "Number of lymph nodes containing metastatic neoplasm"
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
  "valueQuantity" : {
    "value" : 7,
    "unit" : "1",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-14-onko-specimen-1"
  }
}

```
