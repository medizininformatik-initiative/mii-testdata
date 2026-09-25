# ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases**

## Example ResearchStudy: ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://reconnet.ern-net.eu/fhir/sid/registry`/RECONNET-REG

**title**: ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases

**status**: Active

**description**: 

Register des Europaeischen Referenznetzwerks fuer seltene Bindegewebs- und Muskel-Skelett-Erkrankungen.



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-test-data-seltene-register-study-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://reconnet.ern-net.eu/fhir/sid/registry",
    "value" : "RECONNET-REG"
  }],
  "title" : "ERN ReCONNET Registry - Rare Connective Tissue and Musculoskeletal Diseases",
  "status" : "active",
  "description" : "Register des Europaeischen Referenznetzwerks fuer seltene Bindegewebs- und Muskel-Skelett-Erkrankungen."
}

```
