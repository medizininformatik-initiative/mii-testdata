# mii-exa-test-data-onko-systemische-therapie-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-systemische-therapie-1**

## Example Procedure: mii-exa-test-data-onko-systemische-therapie-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Systemische Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Onko Systemische Therapie Intention**: kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: neoadjuvant

**ExtensionProzedurDokumentationsdatum**: 2021-09-06

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**basedOn**: [CarePlan: identifier = TK-2021-001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-20](CarePlan-mii-exa-test-data-onko-tumorkonferenz-1.md)

**partOf**: [Procedure Resektion von Gewebe in der Bauchregion ohne sichere Organzuordnung: Intraperitoneal](Procedure-mii-exa-test-data-onko-operation-1.md)

**status**: Completed

**category**: Administration of drug or medicament

**code**: Chemotherapie

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**performed**: 2021-07-05 --> 2021-09-05

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**bodySite**: Ovarian structure (body structure)

**outcome**: reguläres Ende

**note**: 

> 

Neoadjuvante Chemotherapie nach CarboTax-Schema.


**usedCode**: CarboTax



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-onko-systemische-therapie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"],
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
        "code" : "K",
        "display" : "kurativ"
      }],
      "text" : "kurativ"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "N",
        "display" : "neoadjuvant"
      }],
      "text" : "neoadjuvant"
    }
  },
  {
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2021-09-06"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-onko-tumorkonferenz-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-onko-operation-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "18629005",
      "display" : "Administration of drug or medicament"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH",
      "display" : "Chemotherapie"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "T",
          "display" : "trifft nicht zu"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "8-54",
      "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2021-07-05",
    "end" : "2021-09-05"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "15497006",
      "display" : "Ovarian structure (body structure)"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "E",
      "display" : "reguläres Ende"
    }]
  },
  "note" : [{
    "text" : "Neoadjuvante Chemotherapie nach CarboTax-Schema."
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
