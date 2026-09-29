# mii-exa-test-data-patient-12-mibi-specimen-ts - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-12-mibi-specimen-ts**

## Example Specimen: mii-exa-test-data-patient-12-mibi-specimen-ts

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Mikrobio Probe](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: PRIMÄRPROBE](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE) (Primärprobe)

**MII EX Biobank Infektiositätsstatus**: Biosafety level 2 (qualifier value)

**identifier**: `https://www.charite.de/fhir/sid/Probennummer`/TS-012-001

**status**: Available

**type**: Tracheal secretion specimen (specimen)

**subject**: [Gerhard Woltmann (official) Male, DoB: 1953-04-22 ( Medical record number)](Patient-mii-exa-test-data-patient-12.md)

**receivedTime**: 2025-03-08 19:05:00+0100

**request**: [ServiceRequest Microbiology procedure (procedure)](ServiceRequest-mii-exa-test-data-patient-12-mibi-anforderung-1.md)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Collected[x]** | **Quantity** | **BodySite** |
| * | 2025-03-08 18:35:00+0100 | 3 mL (Details: UCUM codemL = 'mL') | Tracheal structure |

### Containers

| | |
| :--- | :--- |
| - | **Type** |
| * | Tube, device (physical object) |

**note**: 

> 

Direkt nach Intubation ueber den Tubus gewonnen.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patient-12-mibi-specimen-ts",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "PRIMÄRPROBE",
      "display" : "Primärprobe"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "409603009",
        "display" : "Biosafety level 2 (qualifier value)"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/Probennummer",
    "value" : "TS-012-001"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57741000052105",
      "display" : "Tracheal secretion specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-12"
  },
  "receivedTime" : "2025-03-08T19:05:00+01:00",
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-12-mibi-anforderung-1"
  }],
  "collection" : {
    "collectedDateTime" : "2025-03-08T18:35:00+01:00",
    "quantity" : {
      "value" : 3,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "44567001",
        "display" : "Tracheal structure"
      }]
    }
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "83059008",
        "display" : "Tube, device (physical object)"
      }]
    }
  }],
  "note" : [{
    "text" : "Direkt nach Intubation ueber den Tubus gewonnen."
  }]
}

```
