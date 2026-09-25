# mii-exa-test-data-kardiologie-deviceimplantation-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-deviceimplantation-1**

## Example Procedure: mii-exa-test-data-kardiologie-deviceimplantation-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Kardiale Deviceimplantation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-kardiale-deviceimplantation)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**ExtensionProzedurDokumentationsdatum**: 2025-03-12 16:30:00+0100

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic (qualifier value))

**status**: Completed

**category**: Surgical procedure (procedure)

**code**: Implantation of cardiac defibrillator (procedure)

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2025-03-10 --> 2025-03-18](Encounter-mii-exa-test-data-kardiologie-encounter-1.md)

**performed**: 2025-03-12

**bodySite**: Heart structure (body structure)

**note**: 

> 

Komplikationslose ICD-Implantation bei hochgradig reduzierter LVEF (Primaerpraevention).


### FocalDevices

| | | |
| :--- | :--- | :--- |
| - | **Action** | **Manipulated** |
| * | Implantation - action (qualifier value) | [Device: status = active; manufacturer = Medtronic; expirationDate = 2033-03-12; type = Implantable defibrillator, device (physical object)](Device-mii-exa-test-data-kardiologie-device-1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-test-data-kardiologie-deviceimplantation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-kardiale-deviceimplantation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2025-03-12T16:30:00+01:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic (qualifier value)"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "387713003",
      "display" : "Surgical procedure (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "395218007",
      "display" : "Implantation of cardiac defibrillator (procedure)"
    },
    {
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
          "code" : "L",
          "display" : "links"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2026",
      "code" : "5-377.5",
      "display" : "Implantation eines Herzschrittmachers, Defibrillators und Ereignis-Rekorders: Defibrillator mit Einkammer-Stimulation"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-kardiologie-encounter-1"
  },
  "performedDateTime" : "2025-03-12",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "80891009",
      "display" : "Heart structure (body structure)"
    }]
  }],
  "note" : [{
    "text" : "Komplikationslose ICD-Implantation bei hochgradig reduzierter LVEF (Primaerpraevention)."
  }],
  "focalDevice" : [{
    "action" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
        "code" : "129338005",
        "display" : "Implantation - action (qualifier value)"
      }]
    },
    "manipulated" : {
      "reference" : "Device/mii-exa-test-data-kardiologie-device-1"
    }
  }]
}

```
