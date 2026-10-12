# Diagnostic Conclusion Grouper - Biopsy - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Diagnostic Conclusion Grouper - Biopsy**

## Beispiel Observation: Diagnostic Conclusion Grouper - Biopsy

-------

**German**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Diagnostic Conclusion Grouper](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/patho/befund`/E_24_001_CONCLUSION

**basedOn**: [ServiceRequest Prostate Pathology biopsy report](ServiceRequest-mii-exa-test-data-patho-request-1.md)

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**effective**: 2024-01-20

**performer**: [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md)

**note**: 

> 

Diagnose auf Basis von Mikroskopie und Immunhistochemie beider Stanzen.


**bodySite**: Prostate

**method**: Light microscopy (procedure)

**specimen**: [Specimen: identifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001_A_1_1HE; accessionIdentifier = https://www.charite.de/fhir/sid/patho/befundbericht#E_24_001; status = available; type = Tissue section (specimen)](Specimen-mii-exa-test-data-patho-specimen-01-slide.md)

**hasMember**: 

* [Observation Histology and Behavior ICD-O-3 Cancer](Observation-mii-exa-test-data-patho-histological-type-icdo-3.md)
* [Observation Histology type in Cancer specimen Narrative](Observation-mii-exa-test-data-patho-morphology-free-text.md)
* [Observation World Health Organization tumor classification (observable entity)](Observation-mii-exa-test-data-patho-icdo-version.md)
* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-test-data-patho-primary-gleason-pattern.md)
* [Observation Gleason pattern.secondary in Prostate tumor](Observation-mii-exa-test-data-patho-secondary-gleason-pattern.md)
* [Observation Gleason score in Specimen Qualitative](Observation-mii-exa-test-data-patho-gleason-score-total.md)
* [Observation Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy](Observation-mii-exa-test-data-patho-percentage-gleason-45.md)
* [Observation Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)](Observation-mii-exa-test-data-patho-grading-group-isup.md)
* [Observation Grade Cancer](Observation-mii-exa-test-data-patho-histological-grade-who.md)
* [Observation Tissue cores.positive.carcinoma in Tissue core](Observation-mii-exa-test-data-patho-positive-cores-right.md)
* [Observation Tissue cores.positive.carcinoma in Tissue core](Observation-mii-exa-test-data-patho-positive-cores-left.md)
* [Observation Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)](Observation-mii-exa-test-data-patho-ratio-positive-cores.md)
* [Observation Tissue cores.positive.carcinoma in Tissue core](Observation-mii-exa-test-data-patho-percentage-tumor-total.md)
* [Observation Total linear mm of carcinoma](Observation-mii-exa-test-data-patho-tumor-length-total.md)
* [Observation Perineural invasion [Presence] in Cancer specimen](Observation-mii-exa-test-data-patho-perineural-infiltration.md)
* [Observation Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols](Observation-mii-exa-test-data-patho-seminal-vesicle-invasion.md)
* [Observation Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols](Observation-mii-exa-test-data-patho-lymphovascular-invasion.md)
* [Observation Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols](Observation-mii-exa-test-data-patho-periprostatatic-fat-invasion.md)
* [Observation Non-infiltrating intraductal carcinoma (morphologic abnormality)](Observation-mii-exa-test-data-patho-intraductal-carcinoma.md)
* [Observation Atypical small acinar proliferation of prostate (disorder)](Observation-mii-exa-test-data-patho-asap.md)
* [Observation High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy](Observation-mii-exa-test-data-patho-high-grade-pin.md)
* [Observation Granulomatous prostatitis [Presence] in Specimen by Microscopy](Observation-mii-exa-test-data-patho-granulomatous-prostatitis.md)

**derivedFrom**: 

* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-test-data-patho-primaer-gleason-01.md)
* [Observation Gleason pattern.secondary in Prostate tumor](Observation-mii-exa-test-data-patho-sekundaer-gleason-01.md)
* [Observation Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)](Observation-mii-exa-test-data-patho-gleason-grading-01.md)
* [Observation Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)](Observation-mii-exa-test-data-patho-tumoranteil-01.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patho-conclusion-grouper-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befund",
    "value" : "E_24_001_CONCLUSION"
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
      "code" : "22637-3"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "effectiveDateTime" : "2024-01-20",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "note" : [{
    "text" : "Diagnose auf Basis von Mikroskopie und Immunhistochemie beider Stanzen."
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
      "code" : "104157003",
      "display" : "Light microscopy (procedure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-test-data-patho-histological-type-icdo-3"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-morphology-free-text"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-icdo-version"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-primary-gleason-pattern"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-secondary-gleason-pattern"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-gleason-score-total"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-percentage-gleason-45"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-grading-group-isup"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-histological-grade-who"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-positive-cores-right"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-positive-cores-left"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-ratio-positive-cores"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-percentage-tumor-total"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-tumor-length-total"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-perineural-infiltration"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-seminal-vesicle-invasion"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-lymphovascular-invasion"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-periprostatatic-fat-invasion"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-intraductal-carcinoma"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-asap"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-high-grade-pin"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-granulomatous-prostatitis"
  }],
  "derivedFrom" : [{
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
  }]
}

```
