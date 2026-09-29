# Spender des Kontrollgewebes - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spender des Kontrollgewebes**

## Example RelatedPerson: Spender des Kontrollgewebes

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**active**: true

**patient**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**relationship**: Donor of control material



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "mii-exa-test-data-patho-relatedperson-kontrollspender-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "active" : true,
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "116153009",
      "display" : "Donor of control material"
    }]
  }]
}

```
