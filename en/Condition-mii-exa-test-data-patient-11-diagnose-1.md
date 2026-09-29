# mii-exa-test-data-patient-11-diagnose-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-diagnose-1**

## Example Condition: mii-exa-test-data-patient-11-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Diagnose Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Herzinsuffizienz NYHA III

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2025-01-20 --> 2025-01-28](Encounter-mii-exa-test-data-patient-11-encounter-1.md)

**onset**: 2023-09-14

**recordedDate**: 2025-01-20

**note**: 

> 

Linksherzinsuffizienz NYHA III mit Beschwerden bei leichterer Belastung




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-patient-11-diagnose-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "I50.13"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "84114007",
      "display" : "Heart failure"
    }],
    "text" : "Herzinsuffizienz NYHA III"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-11-encounter-1"
  },
  "onsetDateTime" : "2023-09-14",
  "recordedDate" : "2025-01-20",
  "note" : [{
    "text" : "Linksherzinsuffizienz NYHA III mit Beschwerden bei leichterer Belastung"
  }]
}

```
