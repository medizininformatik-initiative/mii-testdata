# mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1**

## Example Observation: mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Blutflussindex Extrakorporaler Gasaustausch](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-blutflussindex-extrakorporaler-gasaustausch)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/icu-observation-id`/icu-ect-blutfl-idx-1

**partOf**: [Procedure Extracorporeal membrane oxygenation (procedure)](Procedure-mii-exa-test-data-patient-1-icu-ect-extrakorp-1.md)

**status**: Final

**category**: Extracorporeal circulation procedure

**code**: Extracorporeal gas exchange flow index

**subject**: [Kim Musterperson Female, DoB: 1956-03-14 ( https://www.medizininformatik-initiative.de/fhir/sid/standort-b#ICU-TEST-001)](Patient-mii-exa-test-data-icu-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-05-01 --> 2024-05-14](Encounter-mii-exa-test-data-icu-encounter-1.md)

**effective**: 2024-05-05 08:00:00+0200

**value**: 1.8 L/(min.m2) (Details: UCUM codeL/(min.m2) = 'L/(min.m2)')

**device**: [DeviceMetric: type = Extracorporeal circulation procedure; category = measurement](DeviceMetric-mii-exa-test-data-patient-1-icu-ect-dm-param-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-1-icu-ect-blutfl-idx-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-ect-blutflussindex-extrakorporaler-gasaustausch"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/icu-observation-id",
    "value" : "icu-ect-blutfl-idx-1"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-test-data-patient-1-icu-ect-extrakorp-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182744004",
      "display" : "Extracorporeal circulation procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "251289007",
      "display" : "Extracorporeal gas exchange flow index"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-icu-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-icu-encounter-1"
  },
  "effectiveDateTime" : "2024-05-05T08:00:00+02:00",
  "valueQuantity" : {
    "value" : 1.8,
    "unit" : "L/(min.m2)",
    "system" : "http://unitsofmeasure.org",
    "code" : "L/(min.m2)"
  },
  "device" : {
    "reference" : "DeviceMetric/mii-exa-test-data-patient-1-icu-ect-dm-param-1"
  }
}

```
