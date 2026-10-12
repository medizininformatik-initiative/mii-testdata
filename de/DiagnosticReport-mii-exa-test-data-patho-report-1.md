# Pathologiebericht Prostatastanzen - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Pathologiebericht Prostatastanzen**

## Beispiel DiagnosticReport: Pathologiebericht Prostatastanzen

-------

**German**

-------

Last updated: 2024-01-20 16:00:00+0100; 

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Patho Report](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Pathology synoptic report (Surgical Pathology) 

| | |
| :--- | :--- |
| Subject | Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001) |
| Relevant Time | 2024-01-20 15:00:00+0100 |
| Reported | 2024-01-20 15:30:00+0100 |
| Performer | [Practitioner Paula Schnittbild ](Practitioner-mii-exa-test-data-patho-practitioner-1.md) |
| Identifier | Accession ID/E_24_001 |
| Presented Form | application/pdf @[https://www.charite.de/fhir/sid/patho/report/E_24_001.pdf ![](external.png)](https://www.charite.de/fhir/sid/patho/report/E_24_001.pdf) |

**Report Details**

* **Code**: [Pathology report intraoperative observation in Specimen Document](Observation-mii-exa-test-data-patho-intraop-grouper-1.md)(Prostate)
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
  * **Relevant Time**: 2024-01-15 11:00:00+0100
* **Code**: [Pathology report gross observation Narrative](Observation-mii-exa-test-data-patho-macro-grouper-1.md)(Prostate)
  * **Value**: Makroskopische Messungen beider Prostatastanzen
  * **Flags**: Final
  * **Note**: 
  * **Relevant Time**: 2024-01-15 14:00:00+0100
* **Code**: [Pathology report microscopic observation Narrative Other stain](Observation-mii-exa-test-data-patho-micro-grouper-1.md)(Prostate)
  * **Value**: Mikroskopische Befunde beider Prostatastanzen
  * **Flags**: Final
  * **Note**: 
  * **Relevant Time**: 2024-01-17 10:00:00+0100
* **Code**: [Pathology report additional specified observation in Specimen Narrative](Observation-mii-exa-test-data-patho-zusatz-grouper-1.md)(Prostate)
  * **Value**: 
  * **Flags**: Final
  * **Note**: 
  * **Relevant Time**: 2024-01-18 09:00:00+0100
* **Code**: [Pathology report final diagnosis Narrative](Observation-mii-exa-test-data-patho-conclusion-grouper-1.md)(Prostate)
  * **Value**: 
  * **Flags**: Final
  * **Note**: > Diagnose auf Basis von Mikroskopie und Immunhistochemie beider Stanzen.
  * **Relevant Time**: 2024-01-20

Azinäres Adenokarzinom der Prostata, Gleason-Score 7a (3+4), ISUP-Gradgruppe 2, Nachweis in 1 von 2 Stanzen (Stanze 01, rechts lateral basal), perineurale Infiltration. Stanze 03 tumorfrei.

**Coded Conclusions:**

* Malignant neoplasm of prostate



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-patho-report-1",
  "meta" : {
    "lastUpdated" : "2024-01-20T16:00:00+01:00",
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition",
    "valueReference" : {
      "reference" : "Composition/mii-exa-test-data-patho-composition-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact",
    "valueRelatedArtifact" : {
      "type" : "predecessor",
      "label" : "E_22_318",
      "display" : "Vorbefund: Prostatastanzbiopsie vom 2022-11-08, kein Karzinomnachweis",
      "url" : "https://www.charite.de/fhir/sid/patho/report/E_22_318.pdf"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patho-request-1"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "SP",
      "display" : "Surgical Pathology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60568-3",
      "display" : "Pathology synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patho-encounter-1"
  },
  "effectiveDateTime" : "2024-01-20T15:00:00+01:00",
  "issued" : "2024-01-20T15:30:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-test-data-patho-practitioner-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-part"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-block"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-01-slide"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-part"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-block"
  },
  {
    "reference" : "Specimen/mii-exa-test-data-patho-specimen-03-slide"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-patho-intraop-grouper-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-macro-grouper-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-micro-grouper-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-zusatz-grouper-1"
  },
  {
    "reference" : "Observation/mii-exa-test-data-patho-conclusion-grouper-1"
  }],
  "imagingStudy" : [{
    "reference" : "ImagingStudy/mii-exa-test-data-patho-imaging-study-1"
  }],
  "media" : [{
    "comment" : "HE-Schnitt der Stanze 01, infiltriert durch Karzinomverbände, fotodokumentiert",
    "link" : {
      "reference" : "Media/mii-exa-test-data-patho-image-1"
    }
  }],
  "conclusion" : "Azinäres Adenokarzinom der Prostata, Gleason-Score 7a (3+4), ISUP-Gradgruppe 2, Nachweis in 1 von 2 Stanzen (Stanze 01, rechts lateral basal), perineurale Infiltration. Stanze 03 tumorfrei.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399068003",
      "display" : "Malignant neoplasm of prostate"
    }]
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "language" : "de",
    "url" : "https://www.charite.de/fhir/sid/patho/report/E_24_001.pdf",
    "title" : "Histopathologischer Befundbericht E_24_001 (PDF)"
  }]
}

```
