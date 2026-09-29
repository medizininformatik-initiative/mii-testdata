# mii-exa-test-data-patient-11-encounter-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-11-encounter-2**

## Example Encounter: mii-exa-test-data-patient-11-encounter-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Visit number/MII_0000013

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Einrichtungskontakt, Untersuchung und Behandlung

**serviceType**: Kardiologie

**subject**: [Ingrid Margarete Hallermann (official) Female, DoB: 1959-11-08 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-11.md)

**period**: 2025-02-10 09:00:00+0100 --> 2025-02-10 11:30:00+0100

**serviceProvider**: [Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-patient-11-encounter-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
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
        "code" : "VN"
      }]
    },
    "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
    "value" : "MII_0000013"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/Kontaktebene",
      "code" : "einrichtungskontakt"
    }]
  },
  {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/kontaktart-de",
      "code" : "ub"
    }]
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
      "code" : "0300"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-11"
  },
  "period" : {
    "start" : "2025-02-10T09:00:00+01:00",
    "end" : "2025-02-10T11:30:00+01:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite",
    "display" : "Charité - Universitätsmedizin Berlin"
  }
}

```
