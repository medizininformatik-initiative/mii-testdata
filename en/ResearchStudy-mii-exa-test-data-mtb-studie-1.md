# MTB Studie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Studie**

## Example ResearchStudy: MTB Studie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX Studie Backport Label**
* value: Phase-III-Studie zu Osimertinib bei EGFR-mutiertem NSCLC
* type: Scientific title

> **MII EX Studie Backport AssociatedParty**
* role: sponsor
* party: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

> **MII EX Studie Ethikvotum**
* status: Zustimmende Bewertung
* kommission: Ethikkommission der Charité - Universitätsmedizin Berlin
* ethiknummer: EA1/456/24

**MII EX Studie Studienregister**: [ClinicalTrials.gov](Library-mii-exa-test-data-mtb-studien-register-1.md)

**MII EX Studie Eligibility**: [Group Erwachsene mit EGFR-mutiertem NSCLC im Stadium IV](Group-mii-exa-test-data-mtb-studie-group-1.md)

**MII EX Studie Akronym**: NSCLC-EGFR-III

> **MII EX Studie Rekrutierung**
* rekrutierungsstart: 2024-01-01
* rekrutierungsziel: 300
* rekrutierungsstand: 120
* rekrutierungsstand-datum: 2024-06-01

**MII EX Studie Finanzierung**: Industriefinanzierte Studie

**identifier**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-mtb-nct`/05252390

**title**: Phase III NSCLC EGFR Mutation Study

**partOf**: [ResearchStudy NSCLC Master Protocol](ResearchStudy-mii-exa-test-data-mtb-studie-2.md)

**status**: Active

**primaryPurposeType**: Treatment

**phase**: Phase 3

**category**: Interventionelle Arzneimittelstudie

**focus**: EGFR-mutiertes NSCLC

**keyword**: EGFR

### Arms

| | |
| :--- | :--- |
| - | **Name** |
| * | Arm A: Osimertinib |



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-test-data-mtb-studie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "value",
      "valueString" : "Phase-III-Studie zu Osimertinib bei EGFR-mutiertem NSCLC"
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
      "valueString" : "EA1/456/24"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-ethikvotum"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-studienregister",
    "valueReference" : {
      "reference" : "Library/mii-exa-test-data-mtb-studien-register-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-eligibility",
    "valueReference" : {
      "reference" : "Group/mii-exa-test-data-mtb-studie-group-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-akronym",
    "valueString" : "NSCLC-EGFR-III"
  },
  {
    "extension" : [{
      "url" : "rekrutierungsstart",
      "valueDate" : "2024-01-01"
    },
    {
      "url" : "rekrutierungsziel",
      "valueInteger" : 300
    },
    {
      "url" : "rekrutierungsstand",
      "valueInteger" : 120
    },
    {
      "url" : "rekrutierungsstand-datum",
      "valueDate" : "2024-06-01"
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-rekrutierung"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-ex-studie-finanzierung",
    "valueString" : "Industriefinanzierte Studie"
  }],
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-mtb-nct",
    "value" : "05252390"
  }],
  "title" : "Phase III NSCLC EGFR Mutation Study",
  "partOf" : [{
    "reference" : "ResearchStudy/mii-exa-test-data-mtb-studie-2"
  }],
  "status" : "active",
  "primaryPurposeType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type",
      "code" : "treatment",
      "display" : "Treatment"
    }]
  },
  "phase" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/research-study-phase",
      "code" : "phase-3",
      "display" : "Phase 3"
    }]
  },
  "category" : [{
    "text" : "Interventionelle Arzneimittelstudie"
  }],
  "focus" : [{
    "text" : "EGFR-mutiertes NSCLC"
  }],
  "keyword" : [{
    "text" : "EGFR"
  }],
  "arm" : [{
    "name" : "Arm A: Osimertinib"
  }]
}

```
