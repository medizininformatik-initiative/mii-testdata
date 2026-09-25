# mii-exa-test-data-patient-1-labobs-6 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-labobs-6**

## Example Observation: mii-exa-test-data-patient-1-labobs-6

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/LO_000006

**basedOn**: [ServiceRequest Short blood count panel - Blood](ServiceRequest-mii-exa-test-data-patient-1-labrequest-1.md)

**status**: Final

**category**: Laboratory

**code**: Erythrocyte distribution width [Entitic volume] by Automated count

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**effective**: 2024-02-15 12:00:00+0100

**issued**: 2024-02-15 12:00:00+0100

**dataAbsentReason**: Not Performed



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-labobs-6",
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
    "value" : "LO_000006",
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
      "code" : "788-0",
      "display" : "Erythrocyte distribution width [Entitic volume] by Automated count"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-1-encounter-1"
  },
  "effectiveDateTime" : "2024-02-15T12:00:00+01:00",
  "issued" : "2024-02-15T12:00:00+01:00",
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "not-performed",
      "display" : "Not Performed"
    }]
  }
}

```
