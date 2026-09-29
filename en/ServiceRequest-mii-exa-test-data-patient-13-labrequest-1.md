# mii-exa-test-data-patient-13-labrequest-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-labrequest-1**

## Example ServiceRequest: mii-exa-test-data-patient-13-labrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboranforderung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Placer Identifier/LA_000013

**status**: Completed

**intent**: Order

**category**: Laboratory

**code**: Protein-Kreatinin-Ratio und Serumkreatinin

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Nephrologie; period = 2023-11-14 10:00:00+0100 --> 2023-11-14 11:30:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-1.md)

**authoredOn**: 2023-11-14 10:20:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-13-labrequest-1",
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
    "system" : "https://www.charite.de/fhir/sid/Laboranforderungen",
    "value" : "LA_000013",
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
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2890-2",
      "display" : "Protein/Creatinine [Mass Ratio] in Urine"
    }],
    "text" : "Protein-Kreatinin-Ratio und Serumkreatinin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-1"
  },
  "authoredOn" : "2023-11-14T10:20:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }
}

```
