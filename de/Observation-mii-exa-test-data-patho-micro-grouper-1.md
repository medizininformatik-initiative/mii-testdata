# Mikroskopische Befunde Grouper - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mikroskopische Befunde Grouper**

## Beispiel Observation: Mikroskopische Befunde Grouper

-------

**German**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Microscopic Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/patho/befund`/E_24_001_MIKRO

**basedOn**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report microscopic observation Narrative Other stain

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-17 10:00:00+0100

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**value**: Mikroskopische Befunde beider Prostatastanzen

**bodySite**: Prostate

**method**: Light microscopy (procedure)

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)](Specimen-mii-exa-test-data-patho-specimen-01-slide.md)

**hasMember**: 

* [Observation Histology and Behavior ICD-O-3 Cancer](Observation-mii-exa-test-data-patho-histo-typ-01.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-mii-exa-test-data-patho-morph-text-01.md)
* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-test-data-patho-primaer-gleason-01.md)
* [Observation Gleason pattern.secondary in Prostate tumor](Observation-mii-exa-test-data-patho-sekundaer-gleason-01.md)
* [Observation Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)](Observation-mii-exa-test-data-patho-gleason-grading-01.md)
* [Observation Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)](Observation-mii-exa-test-data-patho-tumoranteil-01.md)
* [Observation Histology and Behavior ICD-O-3 Cancer](Observation-mii-exa-test-data-patho-histo-typ-03.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-mii-exa-test-data-patho-morph-text-03.md)

**derivedFrom**: 

* [Media: status = completed; type = Image; modality = Scanner; created[x] = 2024-01-17 10:30:00+0100](Media-mii-exa-test-data-patho-image-1.md)
* [ImagingStudy: status = available; modality = Slide Microscopy (DICOM#SM); started = 2024-01-17 10:30:00+0100; numberOfSeries = 1; description = Whole Slide Imaging HE-Schnitt Stanze 01](ImagingStudy-mii-exa-test-data-patho-imaging-study-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-micro-grouper-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befund",
    "value" : "E_24_001_MIKRO"
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
      "code" : "22635-7"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-17T10:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "valueString" : "Mikroskopische Befunde beider Prostatastanzen",
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
      "code" : "104157003",
      "display" : "Light microscopy (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patho-histo-typ-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-morph-text-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-primaer-gleason-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-sekundaer-gleason-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-gleason-grading-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-tumoranteil-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-histo-typ-03"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-morph-text-03"
  }],
  "derivedFrom" : [{
    "reference" : "Media/mii-exa-test-data-patho-image-1"
  },
  {
    "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
  }]
}

```
