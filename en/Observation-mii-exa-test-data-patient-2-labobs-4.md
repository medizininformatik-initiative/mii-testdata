# mii-exa-test-data-patient-2-labobs-4 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-labobs-4**

## Example Observation: mii-exa-test-data-patient-2-labobs-4

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000010

**basedOn**: [ServiceRequest CBC panel - Blood by Automated count](ServiceRequest-mii-exa-test-data-patient-2-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Platelets [#/volume] in Blood

**subject**: [Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --> 2024-03-13](Encounter-mii-exa-test-data-patient-2-encounter-1.md)

**effective**: 2024-03-04 07:30:00+0100

**issued**: 2024-03-04 09:15:00+0100

**value**: 120 /nanoliter (Details: UCUM code/nL = '/nL')

**interpretation**: Low

**method**: Electrical impedance technique (qualifier value)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303](Device-mii-exa-test-data-device-roche-cobas-c303.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-2-labobs-4",
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
    "value" : "LO_000010",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
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
      "code" : "26515-7",
      "display" : "Platelets [#/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
  },
  "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
  "issued" : "2024-03-04T09:15:00+01:00",
  "valueQuantity" : {
    "value" : 120,
    "unit" : "/nanoliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "/nL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "703452004",
      "display" : "Electrical impedance technique (qualifier value)"
    }]
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
  }
}

```
