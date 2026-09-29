# PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz**

## Example ResearchStudy: PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX Studie Backport Label**
* value: PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz (MII-CARE-PRO-2025)
* type: Scientific title

> **MII EX Studie Backport AssociatedParty**
* role: sponsor
* party: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

> **MII EX Studie Ethikvotum**
* status: Zustimmende Bewertung
* kommission: Ethikkommission der Charité - Universitätsmedizin Berlin
* ethiknummer: EA2/084/24

**MII EX Studie Studienregister**: [DRKS - Deutsches Register Klinischer Studien](Library-mii-exa-test-data-studien-register-1.md)

**MII EX Studie Eligibility**: [Group Patient (person)](Group-mii-exa-test-data-patient-11-studien-group-1.md)

**MII EX Studie Akronym**: MII-CARE-PRO-2025

> **MII EX Studie Rekrutierung**
* rekrutierungsstart: 2025-01-02
* rekrutierungsziel: 450
* rekrutierungsstand: 38
* rekrutierungsstand-genauigkeit: exakt
* rekrutierungsstand-datum: 2025-02-28

**MII EX Studie Finanzierung**: Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)

**identifier**: `https://www.medizininformatik-initiative.de/fhir/sid/drks`/DRKS00041282

**title**: PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz

**status**: Active

**category**: N/A

**focus**: Chronische Herzinsuffizienz

**keyword**: Patient-Reported Outcome Measures

### Arms

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Description** |
| * | Beobachtungskohorte | Strukturierte PROM-Erhebung zu Baseline, Monat 3 und Monat 6 ohne Intervention |



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-test-data-patient-11-studie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueString" : "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz (MII-CARE-PRO-2025)"
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/title-type",
          "code" : "scientific"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.label"
  },
  {
    "extension" : [{
      "url" : "role",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/research-study-party-role",
          "code" : "sponsor"
        }]
      }
    },
    {
      "url" : "party",
      "valueReference" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.associatedParty"
  },
  {
    "extension" : [{
      "url" : "status",
      "valueString" : "Zustimmende Bewertung"
    },
    {
      "url" : "kommission",
      "valueString" : "Ethikkommission der Charité - Universitätsmedizin Berlin"
    },
    {
      "url" : "ethiknummer",
      "valueString" : "EA2/084/24"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister",
    "valueReference" : {
      "reference" : "Library/mii-exa-test-data-studien-register-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility",
    "valueReference" : {
      "reference" : "Group/mii-exa-test-data-patient-11-studien-group-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
    "valueString" : "MII-CARE-PRO-2025"
  },
  {
    "extension" : [{
      "url" : "rekrutierungsstart",
      "valueDate" : "2025-01-02"
    },
    {
      "url" : "rekrutierungsziel",
      "valueInteger" : 450
    },
    {
      "url" : "rekrutierungsstand",
      "valueInteger" : 38
    },
    {
      "url" : "rekrutierungsstand-genauigkeit",
      "valueString" : "exakt"
    },
    {
      "url" : "rekrutierungsstand-datum",
      "valueDate" : "2025-02-28"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
    "valueString" : "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
  }],
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
    "value" : "DRKS00041282"
  }],
  "title" : "PROM-gestützte Verlaufsbeobachtung bei chronischer Herzinsuffizienz",
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/research-study-phase",
      "code" : "n-a"
    }]
  }],
  "focus" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84114007",
      "display" : "Heart failure"
    }],
    "text" : "Chronische Herzinsuffizienz"
  }],
  "keyword" : [{
    "text" : "Patient-Reported Outcome Measures"
  }],
  "arm" : [{
    "name" : "Beobachtungskohorte",
    "description" : "Strukturierte PROM-Erhebung zu Baseline, Monat 3 und Monat 6 ohne Intervention"
  }]
}

```
