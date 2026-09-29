# mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1**

## Example Observation: mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Bilanz Ausfuhr OP Drainage](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-op-drainage)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-bilanz-ausf-opdrain-1

**status**: Final

**category**: Fluid balance observable (observable entity)

**code**: Fluid output from surgical drain (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-05 08:00:00+0200

**issued**: 2024-05-05 11:00:00+0200

**value**: 75 ml (Details: UCUM codeml = 'ml')

**interpretation**: Normal

**bodySite**: Thoracic structure

**method**: Measured (qualifier value)

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/icu-specimen-id#icu-spec-drainagesekret-1; status = available; type = Drainage fluid specimen; receivedTime = 2024-05-05 08:30:00+0200](Specimen-mii-exa-test-data-patient-1-icu-spec-drainagesekret-1.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#ICU-PDMS-001; status = active; type = Software](Device-mii-exa-test-data-patient-1-icu-device-pdms-1.md)

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 0 mL (Details: UCUM codemL = 'mL') | 200 mL (Details: UCUM codemL = 'mL') | unauffaellige Foerderung der OP-Drainage pro 24h |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-bilanz-ausf-opdrain-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-bilanz-ausfuhr-op-drainage"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-bilanz-ausf-opdrain-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "364396009",
      "display" : "Fluid balance observable (observable entity)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "251844004",
      "display" : "Fluid output from surgical drain (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-05T08:00:00+02:00",
  "issued" : "2024-05-05T11:00:00+02:00",
  "valueQuantity" : {
    "value" : 75,
    "unit" : "ml",
    "system" : "http://unitsofmeasure.org",
    "code" : "ml"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "51185008",
      "display" : "Thoracic structure"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258104002",
      "display" : "Measured (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-1-icu-spec-drainagesekret-1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-patient-1-icu-device-pdms-1"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 0,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "high" : {
      "value" : 200,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "text" : "unauffaellige Foerderung der OP-Drainage pro 24h"
  }]
}

```
