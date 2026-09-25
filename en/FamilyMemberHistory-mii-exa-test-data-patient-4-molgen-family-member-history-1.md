# mii-exa-test-data-patient-4-molgen-family-member-history-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-family-member-history-1**

## Example FamilyMemberHistory: mii-exa-test-data-patient-4-molgen-family-member-history-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**patient**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

**date**: 2022-11-30

**relationship**: Mother (person)

**sex**: Female (finding)

**deceased**: true

**reasonCode**: Malignant adenomatous neoplasm (disorder)

### Conditions

| | | |
| :--- | :--- | :--- |
| - | **Code** | **ContributedToDeath** |
| * | Malignant neoplasm of breast (disorder) | true |



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-test-data-patient-4-molgen-family-member-history-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "date" : "2022-11-30",
  "relationship" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "72705000",
      "display" : "Mother (person)"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "MTH",
      "display" : "mother"
    }]
  },
  "sex" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/administrative-gender",
      "code" : "female"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "248152002",
      "display" : "Female (finding)"
    }]
  },
  "deceasedBoolean" : true,
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "443961001",
      "display" : "Malignant adenomatous neoplasm (disorder)"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2022",
      "code" : "C16.9",
      "display" : "Bösartige Neubildung: Magen, nicht näher bezeichnet"
    }]
  }],
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "254837009",
        "display" : "Malignant neoplasm of breast (disorder)"
      },
      {
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2022",
        "code" : "C50.9",
        "display" : "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
      }]
    },
    "contributedToDeath" : true
  }]
}

```
