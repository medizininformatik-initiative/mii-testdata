# mii-exa-test-data-mikrobio-spezifische-mikroskopie-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mikrobio-spezifische-mikroskopie-1**

## Example Observation: mii-exa-test-data-mikrobio-spezifische-mikroskopie-1

Information Source: [https://www.charite.de/fhir/mikrobiologie-lab-system](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/mikrobiologie-lab-system)

Profile: [MII PR Mikrobio Spezifische Mikroskopie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Mikrobio Färbung**: Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)

> **R5: Triggering observation(s) (new)**
* observation: [Observation Microscopic observation [Identifier] in Specimen](Observation-mii-exa-test-data-mikrobio-mikroskopie-1.md)
* type: reflex

**identifier**: Observation Instance Identifier/spezifische-mikroskopie-1

**basedOn**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.md)

**status**: Final

**category**: Laboratory, Microbiology

**code**: Microscopic observation [Presence] in Specimen by Acid fast stain

**subject**: [Sigmund Sepsis Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)](Patient-mii-exa-test-data-mikrobio-patient-1.md)

**encounter**: [Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --> 2026-04-14](Encounter-mii-exa-test-data-mikrobio-encounter-1.md)

**effective**: 2026-04-02 10:00:00+0200

**issued**: 2026-04-02 11:30:00+0200

**value**: Detected (qualifier value)

**interpretation**: Abnormal

**note**: 

> 

Saeurefeste Staebchen 2+ — V.a. Mykobakterien, Kultur und PCR angefordert.


**method**: Light microscopy technique (qualifier value)

**specimen**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#SPUTUM-001; status = available; type = Sputum specimen (specimen); receivedTime = 2026-04-02 08:15:00+0200; note = Morgensputum, makroskopisch purulent; Transport gekuehlt.](Specimen-mii-exa-test-data-mikrobio-probe-1.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001](Device-mii-exa-test-data-mikrobio-device-mikroskop-1.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Semi-quantitative value (qualifier value) | Present two plus out of three plus (qualifier value) |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-mikrobio-spezifische-mikroskopie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "36878004",
        "display" : "Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "observation",
      "valueReference" : {
        "reference" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-1"
      }
    },
    {
      "url" : "type",
      "valueCode" : "reflex"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/test-lab-results",
    "value" : "spezifische-mikroskopie-1",
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
      "code" : "72357-7",
      "display" : "Microscopic observation [Presence] in Specimen by Acid fast stain"
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
  "effectiveDateTime" : "2026-04-02T10:00:00+02:00",
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
  "issued" : "2026-04-02T11:30:00+02:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
      "code" : "260373001",
      "display" : "Detected (qualifier value)"
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
    "text" : "Saeurefeste Staebchen 2+ — V.a. Mykobakterien, Kultur und PCR angefordert."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702661004",
      "display" : "Light microscopy technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-mikrobio-probe-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Probennummer",
      "value" : "SPUTUM-001"
    }
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/device-identifier",
      "value" : "MIKROSKOP-001"
    }
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "103392008",
        "display" : "Semi-quantitative value (qualifier value)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "441517005",
        "display" : "Present two plus out of three plus (qualifier value)"
      }]
    }
  }]
}

```
