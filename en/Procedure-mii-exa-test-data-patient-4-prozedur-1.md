# mii-exa-test-data-patient-4-prozedur-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-prozedur-1**

## Example Procedure: mii-exa-test-data-patient-4-prozedur-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 261004008](http://snomed.info/id/261004008) (Diagnostic intent)

**status**: Completed

**category**: Diagnostic assessment

**code**: Biopsy of stomach

**subject**: [Anonymous Patient Male, DoB: 1962 ( pseudonymized)](Patient-mii-exa-test-data-patient-4.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Kardiologie; period = 2020-09-15 --> 2020-09-25](Encounter-mii-exa-test-data-patient-4-encounter-1.md)

**performed**: 2020-08-20 14:00:00+0200

**recorder**: [PractitionerRole Physician (occupation)](PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.md)

**bodySite**: Stomach structure

**note**: 

> 

Ösophagogastroduodenoskopie mit Biopsie-Entnahme




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-patient-4-prozedur-1",
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
      "code" : "261004008",
      "display" : "Diagnostic intent"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "165197003"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "79121003"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2020",
      "code" : "1-440.9"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-4"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-4-encounter-1"
  },
  "performedDateTime" : "2020-08-20T14:00:00+02:00",
  "recorder" : {
    "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "69695003"
    }]
  }],
  "note" : [{
    "text" : "Ösophagogastroduodenoskopie mit Biopsie-Entnahme"
  }]
}

```
