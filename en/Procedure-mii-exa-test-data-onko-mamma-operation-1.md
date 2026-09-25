# mii-exa-test-data-onko-mamma-operation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-mamma-operation-1**

## Example Procedure: mii-exa-test-data-onko-mamma-operation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Mamma Operation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-operation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Onko Operation Intention**: kurativ

**ExtensionProzedurDokumentationsdatum**: 2021-10-01

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**MII EX Onko Operation Urgency**: Elektiveingriff

**basedOn**: [CarePlan: identifier = TK-2021-001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-20](CarePlan-mii-exa-test-data-onko-tumorkonferenz-1.md)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-test-data-onko-systemische-therapie-1.md)

**status**: Completed

**category**: Surgical procedure

**code**: Partielle (brusterhaltende) Exzision der Mamma: Exzision

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**performed**: 2021-09-30

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**bodySite**: Breast structure (body structure)

**outcome**: Kein Residualtumor

**complication**: Nein, Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert

**note**: 

> 

Brusterhaltende Exzision mit Drahtmarkierung.


**usedCode**: Mammography abnormal, Insertion of guide wire into breast using ultrasound guidance (procedure)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-onko-mamma-operation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-operation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
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
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2021-10-01"
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
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency",
        "code" : "E",
        "display" : "Elektiveingriff"
      }],
      "text" : "Elektiveingriff"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-test-data-onko-tumorkonferenz-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "L",
          "display" : "links"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "5-870.0",
      "display" : "Partielle (brusterhaltende) Exzision der Mamma: Exzision"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "392021009",
      "display" : "Lumpectomy of breast (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "performedDateTime" : "2021-09-30",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  },
  "complication" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation",
      "code" : "N",
      "display" : "Nein"
    }]
  },
  {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2021",
      "code" : "T81.0",
      "display" : "Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert"
    }]
  }],
  "note" : [{
    "text" : "Brusterhaltende Exzision mit Drahtmarkierung."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "168750009",
      "display" : "Mammography abnormal"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "433222002",
      "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
    }]
  }]
}

```
