# mii-exa-test-data-patient-14-mtb-therapieplan-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-14-mtb-therapieplan-1**

## Example CarePlan: mii-exa-test-data-patient-14-mtb-therapieplan-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieplan](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**description**: MTB-Beschluss: Erstlinie Pembrolizumab bei MSI-high metastasiertem Kolonkarzinom anstelle der Standard-Chemotherapie.

**subject**: [Hartmut Brenneke (official) Male, DoB: 1966-02-27 ( Medical record number)](Patient-mii-exa-test-data-patient-14.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Hämatologie und internistische Onkologie; period = 2024-05-02 08:00:00+0200 --> 2024-05-02 13:00:00+0200](Encounter-mii-exa-test-data-patient-14-encounter-2.md)

**created**: 2024-04-18

**addresses**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-test-data-patient-14-onko-diagnose-1.md)

**supportingInfo**: [ClinicalImpression: extension = Leitlinien nicht ausgeschöpft (MII CS Leitlinienbehandlung Status#non-exhausted); status = completed; effective[x] = 2024-03-26 --> 2024-04-18](ClinicalImpression-mii-exa-test-data-patient-14-mtb-episode-1.md)

> **activity****reference**: [MedicationRequest: extension = 1,Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.,https://pubmed.ncbi.nlm.nih.gov#33264544; status = active; intent = proposal; medication[x] = Pembrolizumab; authoredOn = 2024-04-18; note = Erstlinientherapie. Ansprechkontrolle per CT nach drei Monaten.](MedicationRequest-mii-exa-test-data-patient-14-mtb-empfehlung-1.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | Chemotherapie | Cancelled | zugunsten der Immuntherapie zurueckgestellt |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-patient-14-mtb-therapieplan-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth"
    }]
  }],
  "description" : "MTB-Beschluss: Erstlinie Pembrolizumab bei MSI-high metastasiertem Kolonkarzinom anstelle der Standard-Chemotherapie.",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-14"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-14-encounter-2"
  },
  "created" : "2024-04-18",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-patient-14-onko-diagnose-1"
  }],
  "supportingInfo" : [{
    "reference" : "ClinicalImpression/mii-exa-test-data-patient-14-mtb-episode-1"
  }],
  "activity" : [{
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-test-data-patient-14-mtb-empfehlung-1"
    }
  },
  {
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
          "code" : "J"
        }],
        "text" : "zugunsten der Immuntherapie zurueckgestellt"
      }
    }
  }]
}

```
