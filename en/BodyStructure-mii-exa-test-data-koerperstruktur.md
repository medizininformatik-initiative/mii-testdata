# mii-exa-test-data-koerperstruktur - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-koerperstruktur**

## Example BodyStructure: mii-exa-test-data-koerperstruktur

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Körperstruktur](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**morphology**: Microcalcification, calcified structure (morphologic abnormality)

**location**: Breast structure (body structure)

**locationQualifier**: Left

**patient**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-test-data-koerperstruktur",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "morphology" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "12747003",
      "display" : "Microcalcification, calcified structure (morphologic abnormality)"
    }]
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left"
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  }
}

```
