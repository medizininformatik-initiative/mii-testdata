# mii-exa-test-data-practitioner-role-physician-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-practitioner-role-physician-1**

## Example PractitionerRole: mii-exa-test-data-practitioner-role-physician-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Beteiligte Person](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**active**: true

**practitioner**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**organization**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**code**: Physician (occupation)

**telecom**: [studienteam@charite.de](mailto:studienteam@charite.de)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "mii-exa-test-data-practitioner-role-physician-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "organization" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309343006",
      "display" : "Physician (occupation)"
    }]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "studienteam@charite.de",
    "use" : "work"
  }]
}

```
