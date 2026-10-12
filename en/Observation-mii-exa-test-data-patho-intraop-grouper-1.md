# Intraoperative Befunde Grouper - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Intraoperative Befunde Grouper**

## Example Observation: Intraoperative Befunde Grouper

-------

**English**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Intraoperative Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/patho/befund`/E_24_001_INTRAOP

**basedOn**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report intraoperative observation in Specimen Document

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-15 11:00:00+0100

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**bodySite**: Prostate

**method**: Tissue frozen section technique

**specimen**: [Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.](Specimen-mii-exa-test-data-patho-specimen-01-part.md)

**hasMember**: [Observation Histologic type](Observation-mii-exa-test-data-patho-intraop-befund-1.md)

**derivedFrom**: 

* [Media: status = completed; type = Image; modality = Scanner; created[x] = 2024-01-17 10:30:00+0100](Media-mii-exa-test-data-patho-image-1.md)
* [ImagingStudy: status = available; modality = Slide Microscopy (DICOM#SM); started = 2024-01-17 10:30:00+0100; numberOfSeries = 1; description = Whole Slide Imaging HE-Schnitt Stanze 01](ImagingStudy-mii-exa-test-data-patho-imaging-study-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-intraop-grouper-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befund",
    "value" : "E_24_001_INTRAOP"
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
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "83321-0"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-15T11:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41216001",
      "display" : "Prostate"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "817011007",
      "display" : "Tissue frozen section technique"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patho-intraop-befund-1"
  }],
  "derivedFrom" : [{
    "reference" : "Media/mii-exa-test-data-patho-image-1"
  },
  {
    "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
  }]
}

```
