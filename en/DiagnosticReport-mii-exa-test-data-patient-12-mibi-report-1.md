# mii-exa-test-data-patient-12-mibi-report-1 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-mibi-report-1**

## Example DiagnosticReport: mii-exa-test-data-patient-12-mibi-report-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Mikrobio Diagnostic Report](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Microorganism identified in Specimen by Culture (Microbiology studies (set), Laboratory, Microbiology) 

| | |
| :--- | :--- |
| Subject | Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number) |
| Relevant Time | 2025-03-08 18:30:00+0100 |
| Reported | 2025-03-11 09:45:00+0100 |
| Performer | [Organization Mikrobiologisches Labor Charité](Organization-mii-exa-test-data-mikrobio-organization-lab-1.md) |
| Identifier | Filler Identifier/MIKROBIO-DR-012 |

**Report Details**

* **Code**: [Microorganism identified in Specimen by Culture](Observation-mii-exa-test-data-patient-12-mibi-kultur-1.md)
  * **Value**: Positive (qualifier value)
  * **Reference Range**: 
  * **Flags**: Final,Positive
  * **Note**: > Wachstumssignal nach 14 h in beiden aeroben Flaschen.
  * **Relevant Time**: 
  * **Reported**: 2025-03-10 08:00:00+0100
* **Code**: [Microscopic observation [Identifier] in Specimen by Gram stain](Observation-mii-exa-test-data-patient-12-mibi-mikroskopie-1.md)
  * **Value**: Gram-negative bacillus (organism)
  * **Reference Range**: 
  * **Flags**: Final
  * **Note**: > Befund sofort telefonisch an die Intensivstation uebermittelt.
  * **Relevant Time**: 2025-03-10 08:15:00+0100
  * **Reported**: 2025-03-10 08:40:00+0100
* **Code**: [Microorganism identified in Specimen by Culture](Observation-mii-exa-test-data-patient-12-mibi-erreger-1.md)
  * **Value**: Klebsiella pneumoniae (organism)
  * **Reference Range**: 
  * **Flags**: Final
  * **Note**: > Identifikation per MALDI-TOF am Kulturisolat.
  * **Relevant Time**: 2025-03-10 16:00:00+0100
  * **Reported**: 2025-03-10 16:30:00+0100
* **Code**: [Piperacillin+Tazobactam [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-piptazo.md)
  * **Value**: >64 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: 
  * **Flags**: Final,Resistant
  * **Note**: > Die laufende empirische Therapie ist damit unwirksam.
  * **Relevant Time**: 2025-03-11 09:00:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100
* **Code**: [cefTAZidime [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-ceftazidim.md)
  * **Value**: 32 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: 
  * **Flags**: Final,Resistant
  * **Note**: 
  * **Relevant Time**: 2025-03-11 09:00:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100
* **Code**: [Ciprofloxacin [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-cipro.md)
  * **Value**: 4 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: 
  * **Flags**: Final,Resistant
  * **Note**: 
  * **Relevant Time**: 2025-03-11 09:00:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100
* **Code**: [Meropenem [Susceptibility]](Observation-mii-exa-test-data-patient-12-mibi-ast-meropenem.md)
  * **Value**: <=0.25 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: <2 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Flags**: Final,Susceptible
  * **Note**: > Carbapenem bleibt wirksam — Grundlage der Therapieumstellung am 11.03.
  * **Relevant Time**: 2025-03-11 09:00:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100
* **Code**: [Multidrug resistant gram-negative organism classification [Type]](Observation-mii-exa-test-data-patient-12-mibi-mrgn-1.md)
  * **Value**: 3MRGN
  * **Reference Range**: 
  * **Flags**: Final,Resistant
  * **Note**: > 3MRGN nach KRINKO 2012: Resistenz gegen Acylureidopenicilline, Cephalosporine der 3./4. Generation und Fluorchinolone; Carbapeneme wirksam. Isolierungsmassnahmen eingeleitet.
  * **Relevant Time**: 2025-03-11 09:15:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100
* **Code**: [Beta lactamase [Presence] in Isolate](Observation-mii-exa-test-data-patient-12-mibi-esbl-1.md)
  * **Value**: Detected (qualifier value)
  * **Reference Range**: 
  * **Flags**: Final,Positive
  * **Note**: > ESBL-Phaenotyp im EUCAST-Bestaetigungstest (Synergie mit Clavulansaeure). Fuer den ESBL-Phaenotyp existiert in LOINC 2.83 kein eigener Observable-Code, daher der generische Beta-Laktamase-Code.
  * **Relevant Time**: 2025-03-11 09:10:00+0100
  * **Reported**: 2025-03-11 09:30:00+0100

Klebsiella pneumoniae, 3MRGN, ESBL-Phaenotyp. Piperacillin/Tazobactam resistent — laufende empirische Therapie unwirksam. Meropenem empfindlich, Umstellung dringend empfohlen. Isolierung nach KRINKO.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patient-12-mibi-report-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"],
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
        "code" : "FILL"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/diagnostic-report",
    "value" : "MIKROBIO-DR-012",
    "assigner" : {
      "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1",
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
      "system" : "http://loinc.org",
      "code" : "18725-2",
      "display" : "Microbiology studies (set)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2"
    },
    {
      "system" : "http://loinc.org",
      "code" : "11475-1",
      "display" : "Microorganism identified in Specimen by Culture"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-12-encounter-2"
  },
  "effectiveDateTime" : "2025-03-08T18:30:00+01:00",
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
  "issued" : "2025-03-11T09:45:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1"
  }],
  "resultsInterpreter" : [{
    "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-patient-12-mibi-specimen-bk"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-kultur-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-mikroskopie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-erreger-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-piptazo"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-ceftazidim"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-cipro"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-ast-meropenem"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-mrgn-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patient-12-mibi-esbl-1"
  }],
  "conclusion" : "Klebsiella pneumoniae, 3MRGN, ESBL-Phaenotyp. Piperacillin/Tazobactam resistent — laufende empirische Therapie unwirksam. Meropenem empfindlich, Umstellung dringend empfohlen. Isolierung nach KRINKO."
}

```
