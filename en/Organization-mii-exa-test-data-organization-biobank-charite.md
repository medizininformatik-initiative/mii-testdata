# mii-exa-test-data-organization-biobank-charite - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-organization-biobank-charite**

## Example Organization: mii-exa-test-data-organization-biobank-charite

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Organization Sammlung Biobank](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Description extension**: Zentrale Biobank der Charité

**identifier**: `http://www.bbmri-eric.eu/`/de-12345

**name**: Zentrale Biobank der Charité

**alias**: ZeBanC

**partOf**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

### Contacts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Purpose** | **Name** | **Telecom** | **Address** |
| * |  | Research | Koch Robert | [robert.koch@charite.de](mailto:robert.koch@charite.de) | Südring 7 Berlin 13353 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "mii-exa-test-data-organization-biobank-charite",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension",
    "valueString" : "Zentrale Biobank der Charité"
  }],
  "identifier" : [{
    "system" : "http://www.bbmri-eric.eu/",
    "value" : "de-12345"
  }],
  "name" : "Zentrale Biobank der Charité",
  "alias" : ["ZeBanC"],
  "partOf" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "contact" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle",
      "valueString" : "Direktor"
    }],
    "purpose" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
        "code" : "RESEARCH"
      }]
    },
    "name" : {
      "family" : "Robert",
      "given" : ["Koch"],
      "prefix" : ["Prof."]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "robert.koch@charite.de"
    }],
    "address" : {
      "line" : ["Südring 7"],
      "city" : "Berlin",
      "postalCode" : "13353"
    }
  }]
}

```
