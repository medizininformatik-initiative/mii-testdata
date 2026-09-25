# mii-exa-test-data-bildgebungsprozedur - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bildgebungsprozedur**

## Example Procedure: mii-exa-test-data-bildgebungsprozedur

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Bildgebungsprozedur](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2024-07-19 14:00:00+0200

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 261004008](http://snomed.info/id/261004008) (Diagnostic intent (qualifier value))

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-test-data-anforderung.md)

**status**: Completed

**category**: Imaging (procedure)

**code**: Mammographie nativ

**subject**: [Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001)](Patient-mii-exa-test-data-bildgebung-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-15](Encounter-mii-exa-test-data-bildgebung-encounter-1.md)

**performed**: 2024-07-19 12:03:30+0200

**bodySite**: Breast structure (body structure)

**note**: 

> 

Durchführung einer Mammographie




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-bildgebungsprozedur",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2024-07-19T14:00:00+02:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "261004008",
      "display" : "Diagnostic intent (qualifier value)"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-anforderung"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "B",
          "display" : "beiderseits"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "3-100",
      "display" : "Mammographie nativ"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "384151000119104",
      "display" : "Screening mammography of bilateral breasts (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-bildgebung-encounter-1"
  },
  "performedDateTime" : "2024-07-19T12:03:30+02:00",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20240201",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  }],
  "note" : [{
    "text" : "Durchführung einer Mammographie"
  }]
}

```
