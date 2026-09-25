# mii-exa-test-data-mikrobio-allgemeine-bestimmung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mikrobio-allgemeine-bestimmung-1**

## Example Observation: mii-exa-test-data-mikrobio-allgemeine-bestimmung-1

Information Source: [https://www.charite.de/fhir/mikrobiologie-lab-system](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/mikrobiologie-lab-system)

Profile: [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/allg-bestimmung-1

**basedOn**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.md)

**status**: Final

**category**: Laboratory, Microbiology

**code**: Microorganism or agent identified in Specimen

**subject**: [Sigmund Sepsis Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)](Patient-mii-exa-test-data-mikrobio-patient-1.md)

**encounter**: [Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --> 2026-04-14](Encounter-mii-exa-test-data-mikrobio-encounter-1.md)

**effective**: 2026-04-03 15:30:00+0200

**issued**: 2026-04-03 16:30:00+0200

**value**: Staphylococcus aureus (organism)

**interpretation**: Abnormal

**note**: 

> 

Bakteriennachweis in Gram-Faerbung; weitere Typisierung folgt.


**method**: Microscopy technique (qualifier value)

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)](Specimen-mii-exa-test-data-mikrobio-specimen-1.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MALDI-TOF-001; type = Bacterial identification device (physical object)](Device-mii-exa-test-data-mikrobio-device-maldi-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mikrobio-allgemeine-bestimmung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"],
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
    "value" : "allg-bestimmung-1",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-CHA"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
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
      "version" : "2.80",
      "code" : "41852-5",
      "display" : "Microorganism or agent identified in Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
      "value" : "MIKROBIO-TEST-001"
    }
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
      "value" : "MIKROBIO-ENC-001"
    }
  },
  "effectiveDateTime" : "2026-04-03T15:30:00+02:00",
  "_effectiveDateTime" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399445004",
        "display" : "Specimen collection date (observable entity)"
      }
    }]
  },
  "issued" : "2026-04-03T16:30:00+02:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
      "code" : "3092008",
      "display" : "Staphylococcus aureus (organism)"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "note" : [{
    "text" : "Bakteriennachweis in Gram-Faerbung; weitere Typisierung folgt."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "278289002",
      "display" : "Microscopy technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Probennummer",
      "value" : "BLOOD-CULT-001"
    }
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mikrobio-device-maldi-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/device-identifier",
      "value" : "MALDI-TOF-001"
    }
  }
}

```
