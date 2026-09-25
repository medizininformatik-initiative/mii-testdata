# mii-exa-test-data-patient-5-labobs-3 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-labobs-3**

## Example Observation: mii-exa-test-data-patient-5-labobs-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000019

**basedOn**: [ServiceRequest CBC panel - Blood by Automated count](ServiceRequest-mii-exa-test-data-patient-5-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Fasting glucose [Mass/volume] in Serum or Plasma

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**effective**: 2023-07-12 06:45:00+0200

**issued**: 2023-07-12 08:30:00+0200

**value**: 92 milligram per deciliter (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: Normal

**method**: Photometry technique (qualifier value)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303](Device-mii-exa-test-data-device-roche-cobas-c303.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-5-labobs-3",
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
    "value" : "LO_000019",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-5-labrequest-1"
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
      "code" : "1558-6",
      "display" : "Fasting glucose [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-5"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-5-encounter-1"
  },
  "effectiveDateTime" : "2023-07-12T06:45:00+02:00",
  "issued" : "2023-07-12T08:30:00+02:00",
  "valueQuantity" : {
    "value" : 92,
    "unit" : "milligram per deciliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
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
