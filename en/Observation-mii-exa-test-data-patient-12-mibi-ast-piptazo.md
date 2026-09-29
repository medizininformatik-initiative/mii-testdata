# mii-exa-test-data-patient-12-mibi-ast-piptazo - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-mibi-ast-piptazo**

## Example Observation: mii-exa-test-data-patient-12-mibi-ast-piptazo

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Mikrobio Empfindlichkeit](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **R5: Triggering observation(s) (new)**
* observation: [Observation Microorganism identified in Specimen by Culture](Observation-mii-exa-test-data-patient-12-mibi-erreger-1.md)
* type: reflex

**identifier**: Observation Instance Identifier/pat12-ast-piptazo

**basedOn**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-patient-12-mibi-anforderung-1.md)

**status**: Final

**category**: Laboratory, Microbiology

**code**: Piperacillin+Tazobactam [Susceptibility]

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-11 09:00:00+0100

**issued**: 2025-03-11 09:30:00+0100

**value**: >64 mg/L (Details: UCUM codemg/L = 'mg/L')

**interpretation**: Resistant

**note**: 

> 

Die laufende empirische Therapie ist damit unwirksam.


**method**: Minimum inhibitory concentration susceptibility test technique (qualifier value)

**specimen**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#BK-012-001; status = available; type = Blood specimen (specimen); receivedTime = 2025-03-08 19:05:00+0100; note = Zwei Paerchen vor Beginn der empirischen Antibiose abgenommen.](Specimen-mii-exa-test-data-patient-12-mibi-specimen-bk.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#VITEK-001](Device-mii-exa-test-data-mikrobio-device-vitek-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-mibi-ast-piptazo",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "observation",
      "valueReference" : {
        "reference" : "Observation/mii-exa-test-data-patient-12-mibi-erreger-1"
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
    "value" : "pat12-ast-piptazo",
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
      "code" : "18970-4",
      "display" : "Piperacillin+Tazobactam [Susceptibility]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-11T09:00:00+01:00",
  "issued" : "2025-03-11T09:30:00+01:00",
  "valueQuantity" : {
    "value" : 64,
    "comparator" : ">",
    "unit" : "mg/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/L"
  },
  "interpretation" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
          "code" : "EUCAST",
          "display" : "EUCAST"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "R",
      "display" : "Resistant"
    }]
  }],
  "note" : [{
    "text" : "Die laufende empirische Therapie ist damit unwirksam."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "708073008",
      "display" : "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-12-mibi-specimen-bk"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mikrobio-device-vitek-1"
  }
}

```
