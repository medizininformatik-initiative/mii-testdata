# mii-exa-test-data-mtb-labobs-vorbefund-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mtb-labobs-vorbefund-1**

## Example Observation: mii-exa-test-data-mtb-labobs-vorbefund-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Circulating cell-free genomic DNA [Mass/volume] in Plasma

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**value**: 15.2 ng/mL (Details: UCUM codeng/mL = 'ng/mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mtb-labobs-vorbefund-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "55233-8",
      "display" : "Circulating cell-free genomic DNA [Mass/volume] in Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "valueQuantity" : {
    "value" : 15.2,
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/mL"
  }
}

```
