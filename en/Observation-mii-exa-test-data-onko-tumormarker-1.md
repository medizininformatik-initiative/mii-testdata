# mii-exa-test-data-onko-tumormarker-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-onko-tumormarker-1**

## Example Observation: mii-exa-test-data-onko-tumormarker-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Onkologie Tumormarker](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Labor Interpretationsbeeinflussende Eigenschaft**: [SNOMED CT: 118127007](http://snomed.info/id/118127007) (Specimen lipemic (finding))

**identifier**: Observation Instance Identifier/TM-2021-000356

**basedOn**: [ServiceRequest Resektion von Gewebe in der Bauchregion ohne sichere Organzuordnung: Intraperitoneal](ServiceRequest-mii-exa-test-data-onko-therapieempfehlung-op-1.md)

**status**: Final

**category**: Laboratory

**code**: Cancer Ag 125 [Units/volume] in Serum or Plasma

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#ONKO-TEST-001)](Patient-mii-exa-test-data-onko-patient-1.md)

**focus**: [Condition Bösartige Neubildung des Ovars](Condition-mii-exa-test-data-onko-diagnose-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2021-06-10 --> 2021-10-15](Encounter-mii-exa-test-data-onko-encounter-1.md)

**effective**: 2021-09-28

**issued**: 2021-09-28 15:30:00+0200

**value**: >356 U/mL (Details: UCUM codeU/mL = 'U/mL')

**interpretation**: High

**note**: 

> 

CA-125 deutlich erhöht, passend zum Ovarialkarzinom.


**method**: Immunoassay method (procedure)

**specimen**: [Specimen: identifier = ONKO-SPECIMEN-001; accessionIdentifier = https://www.charite.de/fhir/sid/accession#PATH-2021-12345; status = available; type = Tissue specimen](Specimen-mii-exa-test-data-onko-specimen-1.md)

**device**: [Device: status = active; manufacturer = Illumina](Device-mii-exa-test-data-onko-sequencer-1.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0 U/mL (Details: UCUM codeU/mL = 'U/mL') | 35 U/mL (Details: UCUM codeU/mL = 'U/mL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-onko-tumormarker-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "modifierExtension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "118127007",
      "display" : "Specimen lipemic (finding)"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/tumormarker-befunde",
    "value" : "TM-2021-000356",
    "assigner" : {
      "reference" : "Organization/mii-exa-test-data-organization-charite"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-onko-therapieempfehlung-op-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "10334-1",
      "display" : "Cancer Ag 125 [Units/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-onko-patient-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
      "value" : "ONKO-TEST-001"
    }
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-test-data-onko-diagnose-1"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-onko-encounter-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/fallnummer",
      "value" : "F-2021-004711"
    }
  },
  "effectiveDateTime" : "2021-09-28",
  "_effectiveDateTime" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399445004",
        "display" : "Specimen collection date (observable entity)"
      }
    }]
  },
  "issued" : "2021-09-28T15:30:00+02:00",
  "valueQuantity" : {
    "value" : 356,
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
        "valueInteger" : 0
      }]
    },
    "comparator" : ">",
    "unit" : "U/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/mL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "CA-125 deutlich erhöht, passend zum Ovarialkarzinom."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "414464004",
      "display" : "Immunoassay method (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-onko-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/proben",
      "value" : "PROBE-2021-000356"
    }
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-onko-sequencer-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/geraete",
      "value" : "ANALYZER-0815"
    }
  },
  "referenceRange" : [{
    "low" : {
      "value" : 0,
      "system" : "http://unitsofmeasure.org",
      "code" : "U/mL"
    },
    "high" : {
      "value" : 35,
      "system" : "http://unitsofmeasure.org",
      "code" : "U/mL"
    }
  }]
}

```
