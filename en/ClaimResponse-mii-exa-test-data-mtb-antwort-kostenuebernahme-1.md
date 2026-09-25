# MTB Antwort Kostenuebernahme - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Antwort Kostenuebernahme**

## Example ClaimResponse: MTB Antwort Kostenuebernahme

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Anwort Kostenuebernahme](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX MTB Antwort Kostenuebernahme Entscheidung**: Angenommen

**status**: Active

**type**: Institutional

**use**: Claim

**patient**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**created**: 2024-04-20

**insurer**: [Organization Charité – Universitätsmedizin Berlin](Organization-mii-exa-test-data-organization-charite.md)

**request**: [Claim: status = active; type = Institutional; use = claim; created = 2024-04-01; priority = Normal](Claim-mii-exa-test-data-mtb-antrag-kostenuebernahme-1.md)

**outcome**: Processing Complete



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "mii-exa-test-data-mtb-antwort-kostenuebernahme-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
        "code" : "accepted"
      }]
    }
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "institutional",
      "display" : "Institutional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "created" : "2024-04-20",
  "insurer" : {
    "reference" : "Organization/mii-exa-test-data-organization-charite"
  },
  "request" : {
    "reference" : "Claim/mii-exa-test-data-mtb-antrag-kostenuebernahme-1"
  },
  "outcome" : "complete"
}

```
