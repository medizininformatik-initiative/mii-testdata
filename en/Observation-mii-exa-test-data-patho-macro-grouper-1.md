# Makroskopische Befunde Grouper - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Makroskopische Befunde Grouper**

## Example Observation: Makroskopische Befunde Grouper

-------

**English**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Macroscopic Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/patho/befund`/E_24_001_MAKRO

**basedOn**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-15 14:00:00+0100

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**value**: Makroskopische Messungen beider Prostatastanzen

**bodySite**: Prostate

**method**: Gross examination and sampling of tissue specimen (procedure)

**specimen**: [Specimen: extension = ,Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Prostate tru-cut biopsy sample; receivedTime = 2024-01-15 16:00:00+0100; note = Stanze mit roter Tinte markiert, sofort in Formalin fixiert.](Specimen-mii-exa-test-data-patho-specimen-01-part.md)

**hasMember**: 

* [Observation Length of tissue core(s)](Observation-mii-exa-test-data-patho-macroscopic-length-01.md)
* [Observation Length of tissue core(s)](Observation-mii-exa-test-data-patho-macroscopic-length-03.md)
* [Observation Total number of cores in Tissue core](Observation-mii-exa-test-data-patho-macroscopic-cylinder-count-01.md)
* [Observation Total number of cores in Tissue core](Observation-mii-exa-test-data-patho-macroscopic-cylinder-count-03.md)
* [Observation Anatomic part Laterality](Observation-mii-exa-test-data-patho-macroscopic-laterality-01.md)
* [Observation Anatomic part Laterality](Observation-mii-exa-test-data-patho-macroscopic-laterality-03.md)

**derivedFrom**: 

* [Media: status = completed; type = Image; modality = Scanner; created[x] = 2024-01-17 10:30:00+0100](Media-mii-exa-test-data-patho-image-1.md)
* [ImagingStudy: status = available; modality = Slide Microscopy (DICOM#SM); started = 2024-01-17 10:30:00+0100; numberOfSeries = 1; description = Whole Slide Imaging HE-Schnitt Stanze 01](ImagingStudy-mii-exa-test-data-patho-imaging-study-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-macro-grouper-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befund",
    "value" : "E_24_001_MAKRO"
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
      "code" : "22634-0"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-15T14:00:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "valueString" : "Makroskopische Messungen beider Prostatastanzen",
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
      "code" : "787377000",
      "display" : "Gross examination and sampling of tissue specimen (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-length-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-length-03"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-cylinder-count-03"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-laterality-01"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macroscopic-laterality-03"
  }],
  "derivedFrom" : [{
    "reference" : "Media/mii-exa-test-data-patho-image-1"
  },
  {
    "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
  }]
}

```
