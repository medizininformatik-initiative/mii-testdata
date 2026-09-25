# mii-exa-test-data-radiologische-messung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-radiologische-messung-1**

## Example Observation: mii-exa-test-data-radiologische-messung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Radiologische Messung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Bildgebung Bildnummer**: 1.2.34.5.6789.1.2.34.5678912.34567891234567891234

**MII EX Bildgebung SOPInstanz**: 1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789

**partOf**: [Procedure Native Computertomographie, sonstige](Procedure-mii-exa-test-data-befundungsprozedur.md)

**status**: Final

**category**: Measurement procedure (procedure)

**code**: Diameter of structure by imaging measurement (observable entity)

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**issued**: 2024-07-19 12:03:30+0200

**value**: 4.2 millimeter (Details: UCUM codemm = 'mm')

**bodySite**: Breast structure (body structure)

**method**: Measurement technique (qualifier value)

**hasMember**: [Observation Physical findings of Breast](Observation-mii-exa-test-data-radiologische-beobachtung.md)

**derivedFrom**: [ImagingStudy: extension = Verdacht auf Mammakarzinom; status = available; modality = Magnetic Resonance (DICOM#MR); started = 2024-07-19 12:03:30+0200; numberOfSeries = 11; numberOfInstances = 294; description = Mamma](ImagingStudy-mii-exa-test-data-bildgebungsstudie.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Length property (qualifier value) | 4.2 millimeter (Details: UCUM codemm = 'mm') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-radiologische-messung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid",
    "valueId" : "1.2.34.5.6789.1.2.34.5678912.34567891234567891234"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid",
    "valueId" : "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-befundungsprozedur"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122869004",
      "display" : "Measurement procedure (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439984002",
      "display" : "Diameter of structure by imaging measurement (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "issued" : "2024-07-19T12:03:30+02:00",
  "valueQuantity" : {
    "value" : 4.2,
    "unit" : "millimeter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/mii-exa-test-data-koerperstruktur"
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "272391002",
      "display" : "Measurement technique (qualifier value)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-radiologische-beobachtung"
  }],
  "derivedFrom" : [{
    "reference" : "ImagingStudy/mii-exa-test-data-bildgebungsstudie"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "410668003",
        "display" : "Length property (qualifier value)"
      }]
    },
    "valueQuantity" : {
      "value" : 4.2,
      "unit" : "millimeter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  }]
}

```
