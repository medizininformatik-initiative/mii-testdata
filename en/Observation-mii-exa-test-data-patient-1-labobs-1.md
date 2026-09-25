# mii-exa-test-data-patient-1-labobs-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-labobs-1**

## Example Observation: mii-exa-test-data-patient-1-labobs-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000001

**basedOn**: [ServiceRequest Short blood count panel - Blood](ServiceRequest-mii-exa-test-data-patient-1-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Leukocytes [#/volume] in Blood

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2024-02-15 12:00:00+0100

**issued**: 2024-02-15 12:00:00+0100

**value**: 17 /nanoliter (Details: UCUM code/nL = '/nL')

**interpretation**: High

**note**: 

> 

Leukozyten EDTA-Blut Impedanzmessung


**method**: Electrical impedance technique (qualifier value)

**specimen**: [EDTA-Blut Patient 1](Bundle-mii-exa-test-data-bundle-biobank-1.md#https-//www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patient-1-specimen-1)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303](Device-mii-exa-test-data-device-roche-cobas-c303.md)

### ReferenceRanges

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** | **AppliesTo** | **Age** |
| * | 3.9 /nanoliter (Details: UCUM code/nL = '/nL') | 10.5 /nanoliter (Details: UCUM code/nL = '/nL') | Normal Range | Male (finding) | 18-65 year |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-labobs-1",
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
    "value" : "LO_000001",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-1-labrequest-1"
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
      "code" : "26464-8",
      "display" : "Leukocytes [#/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
      "value" : "808439625"
    }
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
      "value" : "MII_0000001"
    }
  },
  "effectiveDateTime" : "2024-02-15T12:00:00+01:00",
  "_effectiveDateTime" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399445004",
        "display" : "Specimen collection date"
      }
    }]
  },
  "issued" : "2024-02-15T12:00:00+01:00",
  "valueQuantity" : {
    "value" : 17,
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
        "valueInteger" : 1
      }]
    },
    "unit" : "/nanoliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "/nL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "Leukozyten EDTA-Blut Impedanzmessung"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "703452004",
      "display" : "Electrical impedance technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patient-1-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Bioproben",
      "value" : "BP_000001"
    },
    "display" : "EDTA-Blut Patient 1"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
      "value" : "RocheCobasC303"
    }
  },
  "referenceRange" : [{
    "low" : {
      "value" : 3.9,
      "unit" : "/nanoliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "/nL"
    },
    "high" : {
      "value" : 10.5,
      "unit" : "/nanoliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "/nL"
    },
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
        "code" : "normal",
        "display" : "Normal Range"
      }]
    },
    "appliesTo" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "248153007",
        "display" : "Male (finding)"
      }]
    }],
    "age" : {
      "low" : {
        "value" : 18,
        "unit" : "year",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      },
      "high" : {
        "value" : 65,
        "unit" : "year",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    }
  }]
}

```
