# mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1**

## Example Procedure: mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Strahlentherapie Nuklearmedizin](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Procedure Method**: Radiojod-Therapie

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 3700 MBq (Details: UCUM codeMBq = 'MBq')

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 3700 MBq (Details: UCUM codeMBq = 'MBq')

**MII EX Onko Strahlentherapie Bestrahlung Boost**: nein, ohne Boost

**ExtensionProzedurDokumentationsdatum**: 2022-04-04

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**basedOn**: [CarePlan: identifier = TK-2021-001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-20](CarePlan-mii-exa-test-data-onko-tumorkonferenz-1.md)

**partOf**: [Procedure Hochvoltstrahlentherapie](Procedure-mii-exa-test-data-onko-strahlentherapie-1.md)

**status**: Completed

**category**: Radionuclide therapy

**code**: Radiojodtherapie

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**performed**: 2022-04-01 --> 2022-04-03

**reasonReference**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**bodySite**: Schilddrüse

**note**: 

> 

Radiojodtherapie mit 3700 MBq I-131.


**usedCode**: Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-onko-bestrahlung-nuklearmedizin-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
        "code" : "MRJT",
        "display" : "Radiojod-Therapie"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 3700,
      "unit" : "MBq",
      "system" : "http://unitsofmeasure.org",
      "code" : "MBq"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
    "valueQuantity" : {
      "value" : 3700,
      "unit" : "MBq",
      "system" : "http://unitsofmeasure.org",
      "code" : "MBq"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost",
        "code" : "N",
        "display" : "nein, ohne Boost"
      }]
    }
  },
  {
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2022-04-04"
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
    "reference" : "Procedure/mii-exa-test-data-onko-strahlentherapie-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399315003",
      "display" : "Radionuclide therapy"
    }]
  },
  "code" : {
    "coding" : [{
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
      "code" : "8-531",
      "display" : "Radiojodtherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2022-04-01",
    "end" : "2022-04-03"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
          "code" : "T",
          "display" : "trifft nicht zu"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet",
      "code" : "2.11",
      "display" : "Schilddrüse"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "69748006",
      "display" : "Thyroid structure (body structure)"
    }]
  }],
  "note" : [{
    "text" : "Radiojodtherapie mit 3700 MBq I-131."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "code" : "UH",
      "display" : "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
    }]
  }]
}

```
