# Gradinggruppe ISUP Stanze 01 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gradinggruppe ISUP Stanze 01**

## Example Observation: Gradinggruppe ISUP Stanze 01

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Finding](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**category**: Laboratory, Pathology report microscopic observation Narrative Other stain

**code**: Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-17 10:00:00+0100

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**value**: International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)

**bodySite**: Right basal peripheral zone of prostate

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)](Specimen-mii-exa-test-data-patho-specimen-01-slide.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-gleason-grading-01",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
      "code" : "22635-7"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1812491000004107",
      "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1279714001",
      "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
    }]
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "716902004",
      "display" : "Right basal peripheral zone of prostate"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
  }
}

```
