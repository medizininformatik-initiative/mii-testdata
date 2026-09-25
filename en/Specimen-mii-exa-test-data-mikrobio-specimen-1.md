# mii-exa-test-data-mikrobio-specimen-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mikrobio-specimen-1**

## Example Specimen: mii-exa-test-data-mikrobio-specimen-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/Probennummer`/BLOOD-CULT-001

**status**: Available

**type**: Blood specimen (specimen)

**subject**: [Sigmund Sepsis Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)](Patient-mii-exa-test-data-mikrobio-patient-1.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **BodySite** |
| * | 2026-04-02 08:30:00+0200 | Bilateral antecubital fossae (body structure) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-mikrobio-specimen-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Probennummer",
    "value" : "BLOOD-CULT-001"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119297000",
      "display" : "Blood specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
  },
  "collection" : {
    "collectedDateTime" : "2026-04-02T08:30:00+02:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "28273000",
        "display" : "Bilateral antecubital fossae (body structure)"
      }]
    }
  }
}

```
