# mii-exa-test-data-patient-6-labobs-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-6-labobs-3**

## Example Observation: mii-exa-test-data-patient-6-labobs-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000022

**basedOn**: [ServiceRequest Hemoglobin and Hematocrit panel - Blood](ServiceRequest-mii-exa-test-data-patient-6-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma

**subject**: [Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-6.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --> 2022-03-20](Encounter-mii-exa-test-data-patient-6-encounter-1.md)

**effective**: 2022-03-14 07:00:00+0100

**issued**: 2022-03-14 09:30:00+0100

**value**: 38 unit per liter (Details: UCUM codeU/L = 'U/L')

**interpretation**: High

**method**: Photometry technique (qualifier value)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303](Device-mii-exa-test-data-device-roche-cobas-c303.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-6-labobs-3",
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
    "value" : "LO_000022",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
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
      "code" : "1920-8",
      "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-6"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
  },
  "effectiveDateTime" : "2022-03-14T07:00:00+01:00",
  "issued" : "2022-03-14T09:30:00+01:00",
  "valueQuantity" : {
    "value" : 38,
    "unit" : "unit per liter",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "83561000052101",
      "display" : "Photometry technique (qualifier value)"
    }]
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
  }
}

```
