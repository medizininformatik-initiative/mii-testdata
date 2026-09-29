# mii-exa-test-data-patient-12-icu-beatmung-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-icu-beatmung-1**

## Example Procedure: mii-exa-test-data-patient-12-icu-beatmung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR ICU Beatmung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2025-03-16 14:00:00+0100

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Artificial ventilation

**code**: Controlled ventilation (procedure)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**performed**: 2025-03-08 18:00:00+0100 --> 2025-03-16 13:00:00+0100

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Tracheal structure

**note**: 

> 

Lungenprotektive Beatmung (6 mL/kg ideales Koerpergewicht), taegliche Spontanatmungsversuche ab 13.03., Extubation am 16.03.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-12-icu-beatmung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmung"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2025-03-16T14:00:00+01:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "40617009",
      "display" : "Artificial ventilation"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "243147009",
      "display" : "Controlled ventilation (procedure)"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-718.72",
      "display" : "Mindestens 6 bis höchstens 10 Behandlungstage"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "performedPeriod" : {
    "start" : "2025-03-08T18:00:00+01:00",
    "end" : "2025-03-16T13:00:00+01:00"
  },
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44567001",
      "display" : "Tracheal structure"
    }]
  }],
  "note" : [{
    "text" : "Lungenprotektive Beatmung (6 mL/kg ideales Koerpergewicht), taegliche Spontanatmungsversuche ab 13.03., Extubation am 16.03."
  }]
}

```
