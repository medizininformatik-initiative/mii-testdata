# Biomarker-basierte Verlaufsprognose endokriner Erkrankungen - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biomarker-basierte Verlaufsprognose endokriner Erkrankungen**

## Example ResearchStudy: Biomarker-basierte Verlaufsprognose endokriner Erkrankungen

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Studie Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX Studie Backport Label**
* value: Biomarker-basierte Verlaufsprognose endokriner Erkrankungen (MII-BIOMARKER-2024)
* type: Scientific title

> **MII EX Studie Backport AssociatedParty**
* role: sponsor
* party: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

> **MII EX Studie Ethikvotum**
* status: Zustimmende Bewertung
* kommission: Ethikkommission der Charité - Universitätsmedizin Berlin
* ethiknummer: EA1/123/24

**MII EX Studie Studienregister**: [DRKS - Deutsches Register Klinischer Studien](Library-mii-exa-test-data-studien-register-1.md)

**MII EX Studie Eligibility**: [Group Patient (person)](Group-mii-exa-test-data-studien-group-1.md)

**MII EX Studie Akronym**: MII-BIOMARKER-2024

> **MII EX Studie Rekrutierung**
* rekrutierungsstart: 2024-01-15
* rekrutierungsziel: 200
* rekrutierungsstand: 87
* rekrutierungsstand-genauigkeit: exakt
* rekrutierungsstand-datum: 2024-07-01

**MII EX Studie Finanzierung**: Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)

**identifier**: `https://www.medizininformatik-initiative.de/fhir/sid/drks`/DRKS00034567

**title**: Biomarker-basierte Verlaufsprognose endokriner Erkrankungen

**partOf**: MII-ENDO-REGISTER Rahmenprogramm (Identifier: `https://www.medizininformatik-initiative.de/fhir/sid/drks`/DRKS00030001)

**status**: Active

**category**: Phase 2

**focus**: Endokrine Erkrankungen

**keyword**: Biomarker

> **arm****name**: Interventionsarm**description**: Biomarker-gesteuerte Therapieanpassung

> **arm****name**: Kontrollarm**description**: Standardtherapie



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-test-data-studien-studie-1",
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
      "valueString" : "Biomarker-basierte Verlaufsprognose endokriner Erkrankungen (MII-BIOMARKER-2024)"
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
      "valueString" : "EA1/123/24"
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
      "reference" : "Group/mii-exa-test-data-studien-group-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
    "valueString" : "MII-BIOMARKER-2024"
  },
  {
    "extension" : [{
      "url" : "rekrutierungsstart",
      "valueDate" : "2024-01-15"
    },
    {
      "url" : "rekrutierungsziel",
      "valueInteger" : 200
    },
    {
      "url" : "rekrutierungsstand",
      "valueInteger" : 87
    },
    {
      "url" : "rekrutierungsstand-genauigkeit",
      "valueString" : "exakt"
    },
    {
      "url" : "rekrutierungsstand-datum",
      "valueDate" : "2024-07-01"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
    "valueString" : "Öffentliche Förderinstitutionen, aus Steuermitteln getragene Institutionen (DFG, BMBF u. a.)"
  }],
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
    "value" : "DRKS00034567"
  }],
  "title" : "Biomarker-basierte Verlaufsprognose endokriner Erkrankungen",
  "partOf" : [{
    "identifier" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/sid/drks",
      "value" : "DRKS00030001"
    },
    "display" : "MII-ENDO-REGISTER Rahmenprogramm"
  }],
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/research-study-phase",
      "code" : "phase-2"
    }]
  }],
  "focus" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "362969004",
      "display" : "Disorder of endocrine system (disorder)"
    }],
    "text" : "Endokrine Erkrankungen"
  }],
  "keyword" : [{
    "text" : "Biomarker"
  }],
  "arm" : [{
    "name" : "Interventionsarm",
    "description" : "Biomarker-gesteuerte Therapieanpassung"
  },
  {
    "name" : "Kontrollarm",
    "description" : "Standardtherapie"
  }]
}

```
