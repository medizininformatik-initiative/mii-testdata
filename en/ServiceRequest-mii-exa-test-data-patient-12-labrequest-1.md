# mii-exa-test-data-patient-12-labrequest-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-labrequest-1**

## Example ServiceRequest: mii-exa-test-data-patient-12-labrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboranforderung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Placer Identifier/LA_000012

**status**: Completed

**intent**: Order

**category**: Laboratory

**priority**: STAT

**code**: Sepsis-Basislabor (Laktat, CRP, Procalcitonin, Leukozyten)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-1.md)

**authoredOn**: 2025-03-08 14:35:00+0100

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-12-labrequest-1",
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
    "value" : "LA_000012",
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
  "priority" : "stat",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2524-7",
      "display" : "Lactate [Moles/volume] in Serum or Plasma"
    }],
    "text" : "Sepsis-Basislabor (Laktat, CRP, Procalcitonin, Leukozyten)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-1"
  },
  "authoredOn" : "2025-03-08T14:35:00+01:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  }
}

```
