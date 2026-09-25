# mii-exa-test-data-patient-2-labrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-2-labrequest-1**

## Example ServiceRequest: mii-exa-test-data-patient-2-labrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboranforderung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Placer Identifier/LAB_000002

**status**: Completed

**intent**: Order

**category**: Laboratory

**code**: CBC panel - Blood by Automated count

**subject**: [Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)](Patient-mii-exa-test-data-patient-2.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --> 2024-03-13](Encounter-mii-exa-test-data-patient-2-encounter-1.md)

**authoredOn**: 2024-03-04 07:00:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Non-small cell lung cancer (disorder)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-2-labrequest-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab"],
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
        "code" : "PLAC"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/lab-requests",
    "value" : "LAB_000002",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "Charité"
      }
    }
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "58410-2",
      "display" : "CBC panel - Blood by Automated count"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
  },
  "authoredOn" : "2024-03-04T07:00:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254637007",
      "display" : "Non-small cell lung cancer (disorder)"
    }]
  }]
}

```
