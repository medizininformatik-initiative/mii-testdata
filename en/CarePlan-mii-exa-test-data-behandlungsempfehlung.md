# mii-exa-test-data-behandlungsempfehlung - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-behandlungsempfehlung**

## Example CarePlan: mii-exa-test-data-behandlungsempfehlung

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Behandlungsempfehlung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**intent**: Proposal

**description**: The patient must receive vacuum biopsy

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**supportingInfo**: [Diagnostic Report for 'Mammography report' for '->Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)'](DiagnosticReport-mii-exa-test-data-befundbericht.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-test-data-behandlungsempfehlung",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "intent" : "proposal",
  "description" : "The patient must receive vacuum biopsy",
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-test-data-befundbericht"
  }]
}

```
