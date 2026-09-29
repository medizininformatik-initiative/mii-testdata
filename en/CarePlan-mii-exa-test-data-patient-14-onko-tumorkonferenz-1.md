# mii-exa-test-data-patient-14-onko-tumorkonferenz-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-onko-tumorkonferenz-1**

## Example CarePlan: mii-exa-test-data-patient-14-onko-tumorkonferenz-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: TK-2024-014

**status**: Completed

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Allgemeine Chirurgie; period = 2024-03-11 --> 2024-03-22](Encounter-mii-exa-test-data-patient-14-encounter-1.md)

**created**: 2024-03-26

**addresses**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**supportingInfo**: [Diagnostic Report for 'Pathology report Cancer Narrative' for '->Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)'](DiagnosticReport-mii-exa-test-data-patient-14-onko-befund-1.md)

> **activity**

### Details

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** | **Description** |
| * | Chemotherapie | Cancelled | ja | Standard-Erstlinienchemotherapie zurueckgestellt; wegen MLH1/PMS2-Verlust zunaechst Molekulardiagnostik und Vorstellung im Molekularen Tumorboard. |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-patient-14-onko-tumorkonferenz-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "value" : "TK-2024-014"
  }],
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-1"
  },
  "created" : "2024-03-26",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-patient-14-onko-befund-1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH",
          "display" : "Chemotherapie"
        }]
      },
      "status" : "cancelled",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
          "code" : "J",
          "display" : "ja"
        }]
      },
      "description" : "Standard-Erstlinienchemotherapie zurueckgestellt; wegen MLH1/PMS2-Verlust zunaechst Molekulardiagnostik und Vorstellung im Molekularen Tumorboard."
    }
  }]
}

```
