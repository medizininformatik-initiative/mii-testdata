# mii-exa-test-data-bildgebungsstudie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bildgebungsstudie**

## Example ImagingStudy: mii-exa-test-data-bildgebungsstudie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Bildgebungsstudie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf Mammakarzinom

**status**: Available

**modality**: [DICOM: MR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MR) (Magnetic Resonance)

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-15](Encounter-mii-exa-test-data-bildgebung-encounter-1.md)

**started**: 2024-07-19 12:03:30+0200

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-test-data-anforderung.md)

**endpoint**: [Endpoint Charite PACS WADO-RS](Endpoint-mii-exa-test-data-bildgebung-endpoint-1.md)

**numberOfSeries**: 11

**numberOfInstances**: 294

**procedureReference**: [Procedure Mammographie nativ](Procedure-mii-exa-test-data-bildgebungsprozedur.md)

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-bildgebung-diagnose-1.md)

**description**: Mamma

> **series**
> **MII EX Bildgebung Modalität MR**
* magneticFieldStrength: 3 tesla
* scanningSequence: Spin Echo
* scanningSequenceVariant: spoiled
* echoTime: 388 milliseconds
* repetitionTime: 5000 milliseconds
* inversionTime: 900 milliseconds
* flipAngle: 130 plane angle degree

> **MII EX Bildgebung Kontrastmittel**
* contrastBolus: true
* contrastBolusDetails: [MedicationAdministration: identifier = https://www.charite.de/fhir/sid/MedicationAdministrations#MA_KM_0000001; status = completed; category = Inpatient; medication[x] = Ultravist 300 Injektionsloesung; effective[x] = 2024-07-19 12:21:45+0200 --> 2024-07-19 12:22:45+0200; reasonCode = Given as Ordered; note = Kontrastmittelgabe](MedicationAdministration-mii-exa-test-data-kontrastmittelgabe.md)

**uid**: 1.2.34.5.6789.1.2.34.5678912.34567891234567891234**number**: 9**modality**: [DICOM: MR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MR) (Magnetic Resonance)**description**: T2 STIR_tra DRB**numberOfInstances**: 28**bodySite**: [SNOMED CT: 76752008](http://snomed.info/id/76752008) (Breast structure (body structure))**laterality**: [SNOMED CT: 419161000](http://snomed.info/id/419161000) (Unilateral left)**started**: 2024-07-19 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-test-data-geraet.md) |

### Instances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Uid** | **SopClass** | **Number** |
| * |  | 1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.4 (urn:oid:1.2.840.10008.5.1.4.1.1.4) | 28 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-test-data-bildgebungsstudie",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund",
    "valueString" : "Verdacht auf Mammakarzinom"
  }],
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "MR",
    "display" : "Magnetic Resonance"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-bildgebung-encounter-1"
  },
  "started" : "2024-07-19T12:03:30+02:00",
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-anforderung"
  }],
  "endpoint" : [{
    "reference" : "Endpoint/mii-exa-test-data-bildgebung-endpoint-1"
  }],
  "numberOfSeries" : 11,
  "numberOfInstances" : 294,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-test-data-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-bildgebung-diagnose-1"
  }],
  "description" : "Mamma",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "magneticFieldStrength",
        "valueQuantity" : {
          "value" : 3,
          "unit" : "tesla"
        }
      },
      {
        "url" : "scanningSequence",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence",
            "code" : "SE"
          }]
        }
      },
      {
        "url" : "scanningSequenceVariant",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant",
            "code" : "SP"
          },
          {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant",
            "code" : "SK"
          }]
        }
      },
      {
        "url" : "echoTime",
        "valueQuantity" : {
          "value" : 388,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "repetitionTime",
        "valueQuantity" : {
          "value" : 5000,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "inversionTime",
        "valueQuantity" : {
          "value" : 900,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "flipAngle",
        "valueQuantity" : {
          "value" : 130,
          "unit" : "plane angle degree"
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
    },
    {
      "extension" : [{
        "url" : "contrastBolus",
        "valueBoolean" : true
      },
      {
        "url" : "contrastBolusDetails",
        "valueReference" : {
          "reference" : "MedicationAdministration/mii-exa-test-data-kontrastmittelgabe"
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
    }],
    "uid" : "1.2.34.5.6789.1.2.34.5678912.34567891234567891234",
    "number" : 9,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "MR",
      "display" : "Magnetic Resonance"
    },
    "description" : "T2 STIR_tra DRB",
    "numberOfInstances" : 28,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "419161000",
      "display" : "Unilateral left"
    },
    "started" : "2024-07-19T12:03:30+02:00",
    "performer" : [{
      "actor" : {
        "reference" : "Device/mii-exa-test-data-geraet"
      }
    }],
    "instance" : [{
      "extension" : [{
        "extension" : [{
          "url" : "pixelSpacingX",
          "valueQuantity" : {
            "value" : 0.260417,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "pixelSpacingY",
          "valueQuantity" : {
            "value" : 0.260417,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "sliceThickness",
          "valueQuantity" : {
            "value" : 3,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "imageType",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "ORIGINAL"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "SECONDARY"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "OTHER"
            }]
          }
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
      }],
      "uid" : "1.2.34.5.6789.1.2.3.45678.9123456789123456789123456789",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.4"
      },
      "number" : 28
    }]
  }]
}

```
