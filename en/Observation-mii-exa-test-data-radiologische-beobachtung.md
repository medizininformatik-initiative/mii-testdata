# mii-exa-test-data-radiologische-beobachtung - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-radiologische-beobachtung**

## Example Observation: mii-exa-test-data-radiologische-beobachtung

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Radiologische Beobachtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Bildgebung Bildnummer**: 1.2.34.5.6789.1.2.34.5678912.34567891234567891234

**MII EX Bildgebung SOPInstanz**: 1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789

**partOf**: [Procedure Native Computertomographie, sonstige](Procedure-mii-exa-test-data-befundungsprozedur.md)

**status**: Final

**category**: Imaging

**code**: Physical findings of Breast

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**issued**: 2024-07-19 12:03:30+0200

**value**: microcalcifications in the upper outer quadrant in the left breast

**bodySite**: Breast structure (body structure)

**hasMember**: [Observation Size Tumor](Observation-mii-exa-test-data-bildgebung-labobs-1.md)

**derivedFrom**: [ImagingStudy: extension = Verdacht auf Mammakarzinom; status = available; modality = Magnetic Resonance (DICOM#MR); started = 2024-07-19 12:03:30+0200; numberOfSeries = 11; numberOfInstances = 294; description = Mamma](ImagingStudy-mii-exa-test-data-bildgebungsstudie.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | History of family member diseases note | true |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-radiologische-beobachtung",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"],
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
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging",
      "display" : "Imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "32422-8",
      "display" : "Physical findings of Breast"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "issued" : "2024-07-19T12:03:30+02:00",
  "valueString" : "microcalcifications in the upper outer quadrant in the left breast",
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
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-bildgebung-labobs-1"
  }],
  "derivedFrom" : [{
    "reference" : "ImagingStudy/mii-exa-test-data-bildgebungsstudie"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10157-6",
        "display" : "History of family member diseases note"
      }]
    },
    "valueBoolean" : true
  }]
}

```
