# mii-exa-test-data-patient-3-prozedur-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-prozedur-2**

## Example Procedure: mii-exa-test-data-patient-3-prozedur-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Surgical procedure

**code**: Abdominoperineal resection

**subject**: [Clara Josephine Schumann (official) Female, DoB: 1968-09-13 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-3.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-04-02 --> 2022-04-22](Encounter-mii-exa-test-data-patient-3-encounter-1.md)

**performed**: 2022-04-08 07:30:00+0200 --> 2022-04-08 13:45:00+0200

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Rectum structure

**note**: 

> 

Radikale Rektumresektion mit totaler mesorektaler Exzision




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-3-prozedur-2",
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
      "code" : "387713003"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "265414003"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2022",
      "code" : "5-485.02"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-3"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-3-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2022-04-08T07:30:00+02:00",
    "end" : "2022-04-08T13:45:00+02:00"
  },
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "34402009"
    }]
  }],
  "note" : [{
    "text" : "Radikale Rektumresektion mit totaler mesorektaler Exzision"
  }]
}

```
