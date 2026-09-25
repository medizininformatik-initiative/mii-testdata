# Total Gleason Score - Biopsy - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Total Gleason Score - Biopsy**

## Example Observation: Total Gleason Score - Biopsy

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/patho/befund`/E_24_001_GLEASON

**basedOn**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Gleason score in Specimen Qualitative

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-20

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**value**: Gleason grade score 7

**method**: Light microscopy (procedure)

**hasMember**: 

* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-test-data-patho-primary-gleason-pattern.md)
* [Observation Gleason pattern.secondary in Prostate tumor](Observation-mii-exa-test-data-patho-secondary-gleason-pattern.md)

**derivedFrom**: 

* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-test-data-patho-primary-gleason-pattern.md)
* [Observation Gleason pattern.secondary in Prostate tumor](Observation-mii-exa-test-data-patho-secondary-gleason-pattern.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **DataAbsentReason** |
| * | Percent of Gleason pattern 4 and 5 in Prostate tumor | Unknown |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-gleason-score-total",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befund",
    "value" : "E_24_001_GLEASON"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
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
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "35266-6",
      "display" : "Gleason score in Specimen Qualitative"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "385377005",
      "display" : "Gleason grade finding for prostatic cancer"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-20",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57403001",
      "display" : "Gleason grade score 7"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "104157003",
      "display" : "Light microscopy (procedure)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "44641-9",
        "display" : "Percent of Gleason pattern 4 and 5 in Prostate tumor"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }
  }]
}

```
