# mii-exa-test-data-mikrobio-diagnostic-report-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-mikrobio-diagnostic-report-1**

## Example DiagnosticReport: mii-exa-test-data-mikrobio-diagnostic-report-1

Information Source: [https://www.charite.de/fhir/mikrobiologie-lab-system](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/mikrobiologie-lab-system)

Profile: [MII PR Mikrobio Diagnostic Report](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Microorganism identified in Blood by Aerobic culture (Microbiology studies (set), Laboratory, Microbiology) 

| | |
| :--- | :--- |
| Subject | Sigmund Sepsis Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001) |
| Relevant Time | 2026-04-02 08:30:00+0200 |
| Reported | 2026-04-05 15:00:00+0200 |
| Performer | [Organization Mikrobiologisches Labor Charité](Organization-mii-exa-test-data-mikrobio-organization-lab-1.md) |
| Identifier | Filler Identifier/MIKROBIO-DR-001 |

**Report Details**

* **Code**: [Microorganism identified in Specimen by Culture](Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.md)
  * **Value**: Positive (qualifier value)
  * **Reference Range**: 
  * **Flags**: Final,Positive
  * **Note**: > Wuchs nach 18h aerob; weitere Differenzierung folgt.
  * **Relevant Time**: 2026-04-02 10:00:00+0200
  * **Reported**: 2026-04-03 14:00:00+0200
* **Code**: [Staphylococcus aureus [Presence] in Specimen by Organism specific culture](Observation-mii-exa-test-data-mikrobio-spezifische-bestimmung-1.md)
  * **Value**: Staphylococcus aureus (organism)
  * **Reference Range**: 
  * **Flags**: Final
  * **Note**: > Identifikation via spezifische Kultur.
  * **Relevant Time**: 2026-04-03 15:00:00+0200
  * **Reported**: 2026-04-03 16:00:00+0200
* **Code**: [Microscopic observation [Identifier] in Specimen](Observation-mii-exa-test-data-mikrobio-mikroskopie-1.md)
  * **Value**: Gram-positive cocci in clusters (finding)
  * **Reference Range**: 
  * **Flags**: Final,Abnormal
  * **Note**: > Mikroskopisch typisches Bild fuer S. aureus.
  * **Relevant Time**: 2026-04-02 10:30:00+0200
  * **Reported**: 2026-04-02 11:00:00+0200
* **Code**: [Vancomycin [Susceptibility]](Observation-mii-exa-test-data-mikrobio-empfindlichkeit-1.md)
  * **Value**: <=1 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Reference Range**: 0 mg/L (Details: UCUM codemg/L = 'mg/L')- 2 mg/L (Details: UCUM codemg/L = 'mg/L')
  * **Flags**: Final,Susceptible
  * **Note**: > Vancomycin als empirische Therapie geeignet; gemaess EUCAST-Kriterien empfindlich.
  * **Relevant Time**: 2026-04-04 09:00:00+0200
  * **Reported**: 2026-04-04 10:00:00+0200
* **Code**: [Methicillin [Susceptibility] by Genotype method](Observation-mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1.md)
  * **Value**: Resistant
  * **Reference Range**: 
  * **Flags**: Final
  * **Note**: > Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis.
  * **Relevant Time**: 2026-04-04 07:00:00+0200
  * **Reported**: 2026-04-04 08:00:00+0200
* **Code**: [MRSA-Status](Observation-mii-exa-test-data-mikrobio-resistenzkategorie-status-1.md)
  * **Value**: Positive
  * **Reference Range**: 
  * **Flags**: Final,Positive
  * **Note**: > MRSA-Befund (Methicillin-resistenter Staphylococcus aureus nachgewiesen) — Isolation noetig.
  * **Relevant Time**: 2026-04-04 10:30:00+0200
  * **Reported**: 2026-04-04 11:00:00+0200
* **Code**: [Methicillin resistance mecA gene [Presence] by Molecular method](Observation-mii-exa-test-data-mikrobio-resistenzmechanismen-1.md)
  * **Value**: Detected (qualifier value)
  * **Reference Range**: 
  * **Flags**: Final,Positive
  * **Note**: > mecA-Gen via PCR nachgewiesen.
  * **Relevant Time**: 2026-04-04 07:00:00+0200
  * **Reported**: 2026-04-04 07:30:00+0200
* **Code**: [Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method](Observation-mii-exa-test-data-mikrobio-virulenzfaktor-1.md)
  * **Value**: Not detected (qualifier value)
  * **Reference Range**: 
  * **Flags**: Final,Negative
  * **Note**: > Panton-Valentine-Leukocidin (PVL) nicht nachgewiesen — kein Hinweis auf erhoehte Virulenz.
  * **Relevant Time**: 2026-04-04 08:00:00+0200
  * **Reported**: 2026-04-04 08:30:00+0200
* **Code**: [Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection](Observation-mii-exa-test-data-mikrobio-ct-wert-1.md)
  * **Value**: <21.3 Ct (Details: UCUM code1 = '1')
  * **Reference Range**: 0 Ct (Details: UCUM code1 = '1')- 35 Ct (Details: UCUM code1 = '1')
  * **Flags**: Final,High
  * **Note**: > Niedriger CT-Wert (21.3) spricht fuer hohe Erregerlast.
  * **Relevant Time**: 2026-04-03 17:00:00+0200
  * **Reported**: 2026-04-03 18:00:00+0200
* **Code**: [SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection](Observation-mii-exa-test-data-mikrobio-molekulare-pathogenlast-1.md)
  * **Value**: >=350000 Copies/mL (Details: UCUM code1/mL = '1/mL')
  * **Reference Range**: Nachweisgrenze des Assays
  * **Flags**: Final,High
  * **Note**: > Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen.
  * **Relevant Time**: 2026-04-03 18:00:00+0200
  * **Reported**: 2026-04-03 19:00:00+0200

Nachweis MRSA in Blutkultur. mecA-positiv, Vancomycin-empfindlich. Empfehlung: Linezolid oder Daptomycin als Reserve. Klinik konsultieren.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-mikrobio-diagnostic-report-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
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
    "value" : "MIKROBIO-DR-001",
    "assigner" : {
      "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1",
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-CHA"
      }
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/service-request",
      "value" : "MIKROBIO-SR-001"
    }
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
      "display" : "Microorganism identified in Blood by Aerobic culture"
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
  "effectiveDateTime" : "2026-04-02T08:30:00+02:00",
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
  "issued" : "2026-04-05T15:00:00+02:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1",
    "identifier" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
      "value" : "DIZ-CHA"
    }
  }],
  "resultsInterpreter" : [{
    "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
    "identifier" : {
      "system" : "https://www.charite.de/fhir/sid/Probennummer",
      "value" : "BLOOD-CULT-001"
    }
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-virulenzfaktor-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-ct-wert-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-1"
  }],
  "conclusion" : "Nachweis MRSA in Blutkultur. mecA-positiv, Vancomycin-empfindlich. Empfehlung: Linezolid oder Daptomycin als Reserve. Klinik konsultieren."
}

```
