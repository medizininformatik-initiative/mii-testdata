# mii-exa-test-data-onko-krk-stoma-markierung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-krk-stoma-markierung-1**

## Example Procedure: mii-exa-test-data-onko-krk-stoma-markierung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie KRK Stoma-Markierung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2021-09-25

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**statusReason**: Planned (qualifier value)

**category**: Surgical procedure

**code**: Marking position of planned stoma site (procedure)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**performed**: 2021-09-25 10:00:00+0200

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**bodySite**: Structure of left lower quadrant of abdomen (body structure)

**note**: 

> 

Stomaposition praeoperativ markiert.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-onko-krk-stoma-markierung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2021-09-25"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "397943006",
      "display" : "Planned (qualifier value)"
    }]
  },
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "225134005",
      "display" : "Marking position of planned stoma site (procedure)"
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
      "code" : "5-460",
      "display" : "Anlegen eines Enterostomas, doppelläufig, als selbständiger Eingriff"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "performedDateTime" : "2021-09-25T10:00:00+02:00",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "699600004",
      "display" : "Structure of left lower quadrant of abdomen (body structure)"
    }]
  }],
  "note" : [{
    "text" : "Stomaposition praeoperativ markiert."
  }]
}

```
