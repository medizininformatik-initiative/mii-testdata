# mii-exa-test-data-patient-13-labobs-agalsidase - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-labobs-agalsidase**

## Example Observation: mii-exa-test-data-patient-13-labobs-agalsidase

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000053

**basedOn**: [ServiceRequest Protein/Creatinine [Mass Ratio] in Urine](ServiceRequest-mii-exa-test-data-patient-13-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Alpha galactosidase A [Enzymatic activity/mass] in Leukocytes

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Nephrologie; period = 2023-11-14 10:00:00+0100 --> 2023-11-14 11:30:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-1.md)

**effective**: 2023-11-20 09:00:00+0100

**issued**: 2023-11-20 14:00:00+0100

**value**: 12.4 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg')

**interpretation**: Low

**note**: 

> 

Bei heterozygoten Frauen kann die Enzymaktivitaet aufgrund der X-Inaktivierung auch normal ausfallen — ein normaler Wert schliesst Morbus Fabry bei Frauen nicht aus. Hier deutlich erniedrigt.


### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** |
| * | 30 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg') | 90 nanomol pro Stunde und Milligramm Protein (Details: UCUM codenmol/h/mg = 'nmol/h/mg') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-13-labobs-agalsidase",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/lab-results",
    "value" : "LO_000053",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-13-labrequest-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.78",
      "code" : "24049-9",
      "display" : "Alpha galactosidase A [Enzymatic activity/mass] in Leukocytes"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-1"
  },
  "effectiveDateTime" : "2023-11-20T09:00:00+01:00",
  "issued" : "2023-11-20T14:00:00+01:00",
  "valueQuantity" : {
    "value" : 12.4,
    "unit" : "nanomol pro Stunde und Milligramm Protein",
    "system" : "http://unitsofmeasure.org",
    "code" : "nmol/h/mg"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "note" : [{
    "text" : "Bei heterozygoten Frauen kann die Enzymaktivitaet aufgrund der X-Inaktivierung auch normal ausfallen — ein normaler Wert schliesst Morbus Fabry bei Frauen nicht aus. Hier deutlich erniedrigt."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 30,
      "unit" : "nanomol pro Stunde und Milligramm Protein",
      "system" : "http://unitsofmeasure.org",
      "code" : "nmol/h/mg"
    },
    "high" : {
      "value" : 90,
      "unit" : "nanomol pro Stunde und Milligramm Protein",
      "system" : "http://unitsofmeasure.org",
      "code" : "nmol/h/mg"
    },
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
        "code" : "normal",
        "display" : "Normal Range"
      }]
    }
  }]
}

```
