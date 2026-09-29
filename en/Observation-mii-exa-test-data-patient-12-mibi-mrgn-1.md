# mii-exa-test-data-patient-12-mibi-mrgn-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-mibi-mrgn-1**

## Example Observation: mii-exa-test-data-patient-12-mibi-mrgn-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Mikrobio MRGN Klasse](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Observation Instance Identifier/pat12-mrgn-1

**basedOn**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-patient-12-mibi-anforderung-1.md)

**status**: Final

**category**: Laboratory, Microbiology

**code**: Multidrug resistant gram-negative organism classification [Type]

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Abteilungskontakt,Intensivstationär; serviceType = Intensivmedizin; period = 2025-03-08 18:00:00+0100 --> 2025-03-18 10:00:00+0100](Encounter-mii-exa-test-data-patient-12-encounter-2.md)

**effective**: 2025-03-11 09:15:00+0100

**issued**: 2025-03-11 09:30:00+0100

**value**: 3MRGN

**interpretation**: Resistant

**note**: 

> 

3MRGN nach KRINKO 2012: Resistenz gegen Acylureidopenicilline, Cephalosporine der 3./4. Generation und Fluorchinolone; Carbapeneme wirksam. Isolierungsmassnahmen eingeleitet.


**method**: Antimicrobial susceptibility test (procedure)

**specimen**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#BK-012-001; status = available; type = Blood specimen (specimen); receivedTime = 2025-03-08 19:05:00+0100; note = Zwei Paerchen vor Beginn der empirischen Antibiose abgenommen.](Specimen-mii-exa-test-data-patient-12-mibi-specimen-bk.md)

**device**: [Device: identifier = https://www.charite.de/fhir/sid/device-identifier#VITEK-001](Device-mii-exa-test-data-mikrobio-device-vitek-1.md)

**derivedFrom**: 

* [Observation Piperacillin+Tazobactam [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-piptazo.md)
* [Observation cefTAZidime [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-ceftazidim.md)
* [Observation Ciprofloxacin [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-cipro.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-12-mibi-mrgn-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"],
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
    "value" : "pat12-mrgn-1",
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
      "code" : "99780-9",
      "display" : "Multidrug resistant gram-negative organism classification [Type]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-11T09:15:00+01:00",
  "issued" : "2025-03-11T09:30:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA33215-7",
      "display" : "3MRGN"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "R",
      "display" : "Resistant"
    }]
  }],
  "note" : [{
    "text" : "3MRGN nach KRINKO 2012: Resistenz gegen Acylureidopenicilline, Cephalosporine der 3./4. Generation und Fluorchinolone; Carbapeneme wirksam. Isolierungsmassnahmen eingeleitet."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "14788002",
      "display" : "Antimicrobial susceptibility test (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patient-12-mibi-specimen-bk"
  },
  "device" : {
    "reference" : "Device/mii-exa-test-data-mikrobio-device-vitek-1"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-piptazo"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-ceftazidim"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-cipro"
  }]
}

```
