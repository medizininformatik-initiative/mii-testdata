# mii-exa-test-data-befundbericht - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-befundbericht**

## Example DiagnosticReport: mii-exa-test-data-befundbericht

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Bildgebung Radiologischer Befund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

## Mammography report (Imaging report (record artifact)) 

| | |
| :--- | :--- |
| Subject | Andreas Mustermann Male, DoB: 1968-07-22 ( https://www.charite.de/fhir/sid/patientenidentifikation#BILD-TEST-001) |
| Relevant Time | 2024-07-19 12:03:30+0200 |
| Reported | 2024-07-19 12:03:30+0200 |
| Presented Form | application/pdf @[https://dms.charite.de/kds-testdata/bildgebung/patient-1/befundbericht-1.pdf ![](external.png)](https://dms.charite.de/kds-testdata/bildgebung/patient-1/befundbericht-1.pdf) |

**Report Details**

* **Code**: [Physical findings of Breast](Observation-mii-exa-test-data-radiologische-beobachtung.md)(Breast structure (body structure))
  * **Value**: microcalcifications in the upper outer quadrant in the left breast
  * **Flags**: Final
* **Code**: [Diameter of structure by imaging measurement (observable entity)](Observation-mii-exa-test-data-radiologische-messung-1.md)(Breast structure (body structure))
  * **Value**: 4.2 millimeter (Details: UCUM codemm = 'mm')
  * **Flags**: Final

There are suspicious microcalcifications in the upper outer quadrant in the left breast

**Coded Conclusions:**

* Mammographic calcification finding (finding)



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-test-data-befundbericht",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-test-data-befundungsprozedur"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-anforderung"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "4201000179104",
      "display" : "Imaging report (record artifact)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "4231000179109",
      "display" : "Mammography report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-bildgebung-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-bildgebung-encounter-1"
  },
  "effectiveDateTime" : "2024-07-19T12:03:30+02:00",
  "issued" : "2024-07-19T12:03:30+02:00",
  "result" : [{
    "reference" : "Observation/mii-exa-test-data-radiologische-beobachtung"
  },
  {
    "reference" : "Observation/mii-exa-test-data-radiologische-messung-1"
  }],
  "imagingStudy" : [{
    "reference" : "ImagingStudy/mii-exa-test-data-bildgebungsstudie"
  }],
  "conclusion" : "There are suspicious microcalcifications in the upper outer quadrant in the left breast",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "129770009",
      "display" : "Mammographic calcification finding (finding)"
    }]
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "language" : "de",
    "url" : "https://dms.charite.de/kds-testdata/bildgebung/patient-1/befundbericht-1.pdf",
    "title" : "Mammographie-Befundbericht (PDF)",
    "creation" : "2024-07-19T12:03:30+02:00"
  }]
}

```
