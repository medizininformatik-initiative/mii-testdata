# mii-exa-test-data-patient-12-icu-bilanz-urin-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-icu-bilanz-urin-1**

## Example Observation: mii-exa-test-data-patient-12-icu-bilanz-urin-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Bilanz Ausfuhr Urin](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-bilanz-urin-12-1

**status**: Final

**category**: Fluid balance observable (observable entity)

**code**: Urine output

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-09 06:00:00+0100

**issued**: 2025-03-09 06:10:00+0100

**value**: 620 ml (Details: UCUM codeml = 'ml')

**interpretation**: Low

**note**: 

> 

Oligurie (< 0.5 mL/kg/h) bei septischer Kreislaufsituation.


**bodySite**: Urinary bladder structure (body structure)

**method**: Measured (qualifier value)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-icu-bilanz-urin-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-urin"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-bilanz-urin-12-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "364396009",
      "display" : "Fluid balance observable (observable entity)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "9187-6",
      "display" : "Urine output"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "364201005",
      "display" : "Urine output observable (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-09T06:00:00+01:00",
  "issued" : "2025-03-09T06:10:00+01:00",
  "valueQuantity" : {
    "value" : 620,
    "unit" : "ml",
    "system" : "http://unitsofmeasure.org",
    "code" : "ml"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "note" : [{
    "text" : "Oligurie (< 0.5 mL/kg/h) bei septischer Kreislaufsituation."
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "89837001",
      "display" : "Urinary bladder structure (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258104002",
      "display" : "Measured (qualifier value)"
    }]
  }
}

```
