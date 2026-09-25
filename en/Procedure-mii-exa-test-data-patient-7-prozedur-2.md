# mii-exa-test-data-patient-7-prozedur-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-7-prozedur-2**

## Example Procedure: mii-exa-test-data-patient-7-prozedur-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Therapeutic procedure

**code**: Antibiotic therapy

**subject**: [Anna Hoffmann (official) Female, DoB: 1992-07-15 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-7.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Pädiatrie; period = 2024-01-08 --> 2024-01-15](Encounter-mii-exa-test-data-patient-7-encounter-1.md)

**performed**: 2024-01-10 16:00:00+0100 --> 2024-01-17 12:00:00+0100

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Respiratory tract structure

**note**: 

> 

Intravenöse Antibiotikatherapie mit Amoxicillin/Clavulansäure




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-7-prozedur-2",
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
      "code" : "281789004"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-987.13"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-7"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-7-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2024-01-10T16:00:00+01:00",
    "end" : "2024-01-17T12:00:00+01:00"
  },
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "321667001"
    }]
  }],
  "note" : [{
    "text" : "Intravenöse Antibiotikatherapie mit Amoxicillin/Clavulansäure"
  }]
}

```
