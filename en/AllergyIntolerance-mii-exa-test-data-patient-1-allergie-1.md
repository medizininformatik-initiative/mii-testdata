# mii-exa-test-data-patient-1-allergie-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-allergie-1**

## Example AllergyIntolerance: mii-exa-test-data-patient-1-allergie-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Person Allergy Intolerance](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-person/StructureDefinition/AllergieUnvertraeglichkeit)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Abatement**: 2023-11-01

**clinicalStatus**: Inactive

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Allergy to penicillin (finding)

**patient**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**onset**: 2018-06-12

**recordedDate**: 2024-02-23 12:30:00+0100

### Reactions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Manifestation** | **Severity** | **ExposureRoute** |
| * | Urticaria (disorder) | Moderate | Oral route (qualifier value) |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "mii-exa-test-data-patient-1-allergie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-person/StructureDefinition/AllergieUnvertraeglichkeit"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
    "valueDateTime" : "2023-11-01"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "inactive",
      "display" : "Inactive"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "91936005",
      "display" : "Allergy to penicillin (finding)"
    }]
  },
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "onsetDateTime" : "2018-06-12",
  "recordedDate" : "2024-02-23T12:30:00+01:00",
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "126485001",
        "display" : "Urticaria (disorder)"
      }]
    }],
    "severity" : "moderate",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route (qualifier value)"
      }]
    }
  }]
}

```
