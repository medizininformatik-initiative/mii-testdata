# mii-exa-test-data-patient-5-prozedur-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-5-prozedur-2**

## Example Procedure: mii-exa-test-data-patient-5-prozedur-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Surgical procedure

**code**: Laparoscopic excision of pelvic endometriosis

**subject**: [Sabine Maria Weber (official) Female, DoB: 1985-03-12 ( Medical record number (use: usual, ))](Patient-mii-exa-test-data-patient-5.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Frauenheilkunde und Geburtshilfe; period = 2023-07-10 --> 2023-07-18](Encounter-mii-exa-test-data-patient-5-encounter-1.md)

**performed**: 2023-07-13 09:30:00+0200 --> 2023-07-13 12:00:00+0200

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Abdomen

**note**: 

> 

Laparoskopische Sanierung der Endometriose-Herde




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-5-prozedur-2",
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
      "code" : "713174005"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2023",
      "code" : "5-681.32"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-5"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-5-encounter-1"
  },
  "performedPeriod" : {
    "start" : "2023-07-13T09:30:00+02:00",
    "end" : "2023-07-13T12:00:00+02:00"
  },
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "818983003"
    }]
  }],
  "note" : [{
    "text" : "Laparoskopische Sanierung der Endometriose-Herde"
  }]
}

```
