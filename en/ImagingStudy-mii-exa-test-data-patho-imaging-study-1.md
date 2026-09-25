# Patho Whole-Slide-Imaging Studie - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patho Whole-Slide-Imaging Studie**

## Example ImagingStudy: Patho Whole-Slide-Imaging Studie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Available

**modality**: [DICOM: SM](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-SM) (Slide Microscopy)

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

**started**: 2024-01-17 10:30:00+0100

**numberOfSeries**: 1

**description**: Whole Slide Imaging HE-Schnitt Stanze 01



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-test-data-patho-imaging-study-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "SM",
    "display" : "Slide Microscopy"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "started" : "2024-01-17T10:30:00+01:00",
  "numberOfSeries" : 1,
  "description" : "Whole Slide Imaging HE-Schnitt Stanze 01"
}

```
