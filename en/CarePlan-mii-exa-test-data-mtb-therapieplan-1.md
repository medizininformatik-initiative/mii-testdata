# MTB Therapieplan - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Therapieplan**

## Example CarePlan: MTB Therapieplan

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Therapieplan](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**description**: MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**created**: 2024-03-28

**addresses**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**supportingInfo**: [ClinicalImpression: extension = exhausted (MII CS Leitlinienbehandlung Status#exhausted); status = completed; effective[x] = 2024-01-15 --> 2024-06-30](ClinicalImpression-mii-exa-test-data-mtb-behandlungsepisode-1.md)

> **activity****progress**: 
> 

Therapieempfehlung in Umsetzung


**reference**: [MedicationRequest: extension = 1,Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.,http://www.ncbi.nlm.nih.gov/pubmed#29151359; identifier = https://www.charite.de/fhir/sid/mtb-beschluss#TE-2024-001; status = draft; intent = proposal; medication[x] = Osimertinib; authoredOn = 2024-03-28; reasonCode = Bösartige Neubildung: Oberlappen (-Bronchus); note = Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-1.md)

> **activity****reference**: [RequestGroup zielgerichtete Substanzen](RequestGroup-mii-exa-test-data-mtb-therapieempfehlung-kombination-1.md)

> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-test-data-mtb-studieneinschluss-anfrage-1.md)

> **activity****reference**: [ServiceRequest Genetic consultation (procedure)](ServiceRequest-mii-exa-test-data-mtb-humangenetische-beratung-1.md)

> **activity****reference**: [ServiceRequest Refer for histology (procedure)](ServiceRequest-mii-exa-test-data-mtb-histologie-evaluation-1.md)

> **activity****reference**: [ServiceRequest Biopsy (procedure)](ServiceRequest-mii-exa-test-data-mtb-biopsie-auftrag-1.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | Chemotherapie | Completed | regulär abgeschlossen |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-mtb-therapieplan-1",
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
  "description" : "MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "created" : "2024-03-28",
  "addresses" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "supportingInfo" : [{
    "reference" : "ClinicalImpression/mii-exa-test-data-mtb-behandlungsepisode-1"
  }],
  "activity" : [{
    "progress" : [{
      "text" : "Therapieempfehlung in Umsetzung"
    }],
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-1"
    }
  },
  {
    "reference" : {
      "reference" : "RequestGroup/mii-exa-test-data-mtb-therapieempfehlung-kombination-1"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-test-data-mtb-studieneinschluss-anfrage-1"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-test-data-mtb-humangenetische-beratung-1"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-test-data-mtb-histologie-evaluation-1"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-test-data-mtb-biopsie-auftrag-1"
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
      "status" : "completed",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
          "code" : "N"
        }],
        "text" : "regulär abgeschlossen"
      }
    }
  }]
}

```
