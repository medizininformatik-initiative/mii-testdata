# Prostatabiopsie Anforderung (2 Stanzen) - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prostatabiopsie Anforderung (2 Stanzen)**

## Example ServiceRequest: Prostatabiopsie Anforderung (2 Stanzen)

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Service Request](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: Placer Identifier/PATH-RPT-2024-001, Filler Identifier/E_24_001

**requisition**: Placer Group Number/REQ-2024-001

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report

**code**: Prostate Pathology biopsy report

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-10 --> 2024-02-20](Encounter-mii-exa-test-data-patho-encounter-1.md)

**requester**: [Practitioner Ulrich Stanze ](Practitioner-mii-exa-test-data-patho-practitioner-2.md)

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**reasonCode**: Prostate specific antigen above reference range

**supportingInfo**: 

* [Observation Prostate specific Ag [Mass/volume] in Serum or Plasma](Observation-mii-exa-test-data-patho-psa-1.md)
* [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-test-data-patho-diagnose-verdacht-1.md)
* [List for 'History of Present illness' for '->Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)'](List-mii-exa-test-data-patient-1-patho-hopi-1.md)
* [List for 'Problem list - Reported' for '->Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)'](List-mii-exa-test-data-patient-1-patho-active-problems-1.md)

**specimen**: 

* [Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.](Specimen-mii-exa-test-data-patho-specimen-01-part.md)
* [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-test-data-patho-specimen-03-part.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patho-request-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request"],
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
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
    "value" : "PATH-RPT-2024-001"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001"
  }],
  "requisition" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PGN",
        "display" : "Placer Group Number"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag",
    "value" : "REQ-2024-001"
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "726007",
      "display" : "Pathology consultation, comprehensive, records and specimen with report"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "66117-3",
      "display" : "Prostate Pathology biopsy report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
  },
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-2"
  },
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396152005",
      "display" : "Prostate specific antigen above reference range"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "Observation/mii-exa-test-data-patho-psa-1"
  },
  {
    "reference" : "Condition/mii-exa-test-data-patho-diagnose-verdacht-1"
  },
  {
    "reference" : "List/mii-exa-test-data-patient-1-patho-hopi-1"
  },
  {
    "reference" : "List/mii-exa-test-data-patient-1-patho-active-problems-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
  }]
}

```
