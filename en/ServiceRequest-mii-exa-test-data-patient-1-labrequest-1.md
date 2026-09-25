# mii-exa-test-data-patient-1-labrequest-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-labrequest-1**

## Example ServiceRequest: mii-exa-test-data-patient-1-labrequest-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Labor Laboranforderung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Placer Identifier/LA_000001

**status**: Completed

**intent**: Order

**category**: Laboratory

**code**: kleines Blutbild

**subject**: [Christian Ludwig Markgraf von Brandenburg-Schwedt (official) Male, DoB: 1977-05-24 ( Medical record number)](Patient-mii-exa-test-data-patient-1.md)

**encounter**: [Encounter: extension = ; identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2024-02-14 --> 2024-02-22](Encounter-mii-exa-test-data-patient-1-encounter-1.md)

**authoredOn**: 2024-02-15 10:28:00+0100

**specimen**: [EDTA-Blut Patient 1](Bundle-mii-exa-test-data-bundle-biobank-1.md#https-//www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patient-1-specimen-1)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-1-labrequest-1",
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
    "value" : "LA_000001",
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
      "version" : "2.78",
      "code" : "55429-5",
      "display" : "Short blood count panel - Blood"
    }],
    "text" : "kleines Blutbild"
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
  "authoredOn" : "2024-02-15T10:28:00+01:00",
  "specimen" : [{
    "reference" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-patient-1-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Bioproben",
      "value" : "BP_000001"
    },
    "display" : "EDTA-Blut Patient 1"
  }]
}

```
