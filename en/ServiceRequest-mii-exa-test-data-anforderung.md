# mii-exa-test-data-anforderung - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-anforderung**

## Example ServiceRequest: mii-exa-test-data-anforderung

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Anforderung Bildgebung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**intent**: Order

**category**: Imaging (procedure)

**code**: Mammography (procedure)

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-15](Encounter-mii-exa-test-data-bildgebung-encounter-1.md)

**authoredOn**: 2024-07-19 12:03:30+0200

**requester**: [Organization Zentrale Biobank der Charité](Organization-mii-exa-test-data-organization-biobank-charite.md)

**reasonCode**: Breast finding

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-bildgebung-diagnose-1.md)

**supportingInfo**: [ImagingStudy: extension = Verdacht auf Mammakarzinom; status = available; modality = Magnetic Resonance (DICOM#MR); started = 2024-07-19 12:03:30+0200; numberOfSeries = 11; numberOfInstances = 294; description = Mamma](ImagingStudy-mii-exa-test-data-bildgebungsstudie.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-anforderung",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "71651007",
      "display" : "Mammography (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-bildgebung-encounter-1"
  },
  "authoredOn" : "2024-07-19T12:03:30+02:00",
  "requester" : {
    "reference" : "Organization/mii-exa-test-data-organization-biobank-charite"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "116339002",
      "display" : "Breast finding"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-bildgebung-diagnose-1"
  }],
  "supportingInfo" : [{
    "reference" : "ImagingStudy/mii-exa-test-data-bildgebungsstudie"
  }]
}

```
