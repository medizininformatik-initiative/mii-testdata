# mii-exa-test-data-patient-10-prozedur-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-10-prozedur-2**

## Example Procedure: mii-exa-test-data-patient-10-prozedur-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Therapeutic procedure

**code**: Migraine prophylaxis

**subject**: [Markus Wolf (official) Male, DoB: 1969-09-17 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-10.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Neurologie; period = 2019-05-14 --> 2019-05-22](Encounter-mii-exa-test-data-patient-10-encounter-1.md)

**performed**: 2019-05-16 12:00:00+0200 --> 2019-05-22 10:00:00+0200

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Structure of digestive system

**note**: 

> 

Einstellung auf Migräne-Prophylaxe mit Topiramat




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-10-prozedur-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
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
      "code" : "277132007"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408381007"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2019",
      "code" : "8-918.00"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-10"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-10-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2019-05-16T12:00:00+02:00",
    "end" : "2019-05-22T10:00:00+02:00"
  },
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "86762007"
    }]
  }],
  "note" : [{
    "text" : "Einstellung auf Migräne-Prophylaxe mit Topiramat"
  }]
}

```
