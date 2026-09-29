# mii-exa-test-data-patient-12-encounter-2 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-encounter-2**

## Example Encounter: mii-exa-test-data-patient-12-encounter-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Visit number/MII_0000017

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Abteilungskontakt, Intensivstationär

**serviceType**: Intensivmedizin

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**period**: 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100

**serviceProvider**: [Charité - Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**partOf**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2025-03-08 14:20:00+0100 --> 2025-03-25 11:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-1.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-test-data-patient-12-encounter-2",
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
    "value" : "MII_0000017"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/Kontaktebene",
      "code" : "abteilungskontakt"
    }]
  },
  {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/kontaktart-de",
      "code" : "intensivstationaer"
    }]
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
      "code" : "3600"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "period" : {
    "start" : "2025-03-08T18:00:00+01:00",
    "end" : "2025-03-18T10:00:00+01:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite",
    "display" : "Charité - Universitätsmedizin Berlin"
  },
  "partOf" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-1"
  }
}

```
