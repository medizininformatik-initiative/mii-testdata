# MTB Systemische Therapie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Systemische Therapie**

## Example Procedure: MTB Systemische Therapie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Onko Systemische Therapie Intention**: kurativ

**ExtensionProzedurDokumentationsdatum**: 2024-08-30

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**MII EX Onko Systemische Therapie Stellung zur OP**: ohne Bezug zur operativen Therapie

**Procedure Caused By**: [MedicationRequest: extension = 1,Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type.,http://www.ncbi.nlm.nih.gov/pubmed#29151359; identifier = https://www.charite.de/fhir/sid/mtb-beschluss#TE-2024-001; status = draft; intent = proposal; medication[x] = Osimertinib; authoredOn = 2024-03-28; reasonCode = Bösartige Neubildung: Oberlappen (-Bronchus); note = Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante.](MedicationRequest-mii-exa-test-data-mtb-therapieempfehlung-1.md)

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); description = MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss; created = 2024-03-28](CarePlan-mii-exa-test-data-mtb-therapieplan-1.md)

**partOf**: [Procedure Chemotherapy (procedure)](Procedure-mii-exa-test-data-mtb-systemische-vortherapie-1.md)

**status**: Completed

**statusReason**: Reguläres Ende

**category**: Chemotherapy (procedure)

**code**: Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 --> 2024-06-30](Encounter-mii-exa-test-data-mtb-encounter-1.md)

**performed**: 2024-04-15 --> 2024-08-30

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-mtb-diagnose-primaertumor-1.md)

**bodySite**: Lung structure (body structure)

**outcome**: reguläres Ende

**note**: 

> 

Zielgerichtete Therapie mit Osimertinib gemaess MTB-Beschluss.


**usedCode**: CarboTax



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-mtb-systemische-therapie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }],
      "text" : "kurativ"
    }
  },
  {
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2024-08-30"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "O"
      }],
      "text" : "ohne Bezug zur operativen Therapie"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-causedBy",
    "valueReference" : {
      "reference" : "MedicationRequest/mii-exa-test-data-mtb-therapieempfehlung-1"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-mtb-therapieplan-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-mtb-systemische-vortherapie-1"
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund",
      "code" : "regular-completion"
    }]
  },
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "367336001",
      "display" : "Chemotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "ZS"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "R",
          "display" : "rechts"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-54",
      "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mtb-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2024-04-15",
    "end" : "2024-08-30"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-mtb-diagnose-primaertumor-1"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "39607008",
      "display" : "Lung structure (body structure)"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "E"
    }]
  },
  "note" : [{
    "text" : "Zielgerichtete Therapie mit Osimertinib gemaess MTB-Beschluss."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
      "code" : "CarboTax",
      "display" : "CarboTax"
    }]
  }]
}

```
