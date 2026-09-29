# mii-exa-test-data-patient-12-mibi-mikroskopie-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-mibi-mikroskopie-1**

## Example Observation: mii-exa-test-data-patient-12-mibi-mikroskopie-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Mikrobio Allgemeine Mikroskopie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/pat12-mikroskopie-1

**basedOn**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-patient-12-mibi-anforderung-1.md)

**status**: Final

**category**: Laboratory, Microbiology

**code**: Microscopic observation [Identifier] in Specimen by Gram stain

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-10 08:15:00+0100

**issued**: 2025-03-10 08:40:00+0100

**value**: Gram-negative bacillus (organism)

**note**: 

> 

Befund sofort telefonisch an die Intensivstation uebermittelt.


**method**: Gram stain method (procedure)

**specimen**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#BK-012-001; status = available; type = Blood specimen (specimen); receivedTime = 2025-03-08 19:05:00+0100; note = Zwei Paerchen vor Beginn der empirischen Antibiose abgenommen.](Specimen-mii-exa-test-data-patient-12-mibi-specimen-bk.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001](Device-mii-exa-test-data-mikrobio-device-mikroskop-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-mibi-mikroskopie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"],
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
        "code" : "OBI"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/test-lab-results",
    "value" : "pat12-mikroskopie-1",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-CHA"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-12-mibi-anforderung-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB",
      "display" : "Microbiology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "664-3",
      "display" : "Microscopic observation [Identifier] in Specimen by Gram stain"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-10T08:15:00+01:00",
  "issued" : "2025-03-10T08:40:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87172008",
      "display" : "Gram-negative bacillus (organism)"
    }]
  },
  "note" : [{
    "text" : "Befund sofort telefonisch an die Intensivstation uebermittelt."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "62777006",
      "display" : "Gram stain method (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-12-mibi-specimen-bk"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1"
  }
}

```
