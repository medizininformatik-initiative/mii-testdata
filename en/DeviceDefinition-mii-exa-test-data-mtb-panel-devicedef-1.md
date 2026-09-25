# MTB Panel DeviceDefinition (TSO 500) - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Panel DeviceDefinition (TSO 500)**

## Example DeviceDefinition: MTB Panel DeviceDefinition (TSO 500)

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Panel DeviceDefinition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel CGP](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp)
* scope: SNV-Detektion

**manufacturer**: Illumina

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | TruSight Oncology 500 | User Friendly name |

**type**: Genpanel

**version**: 2.0

### Capabilities

| | |
| :--- | :--- |
| - | **Type** |
| * | SNV-Detektion |

**onlineInformation**: [https://emea.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://emea.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html)

**note**: 

> 

Panel deckt SNVs, CNVs, Fusionen und Signaturen ab.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-exa-test-data-mtb-panel-devicedef-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp"
    },
    {
      "url" : "scope",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
          "code" : "snv-detection"
        }]
      }
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list"
  }],
  "manufacturerString" : "Illumina",
  "deviceName" : [{
    "name" : "TruSight Oncology 500",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
      "code" : "gene-panel"
    }]
  },
  "version" : ["2.0"],
  "capability" : [{
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "snv-detection"
      }]
    }
  }],
  "onlineInformation" : "https://emea.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html",
  "note" : [{
    "text" : "Panel deckt SNVs, CNVs, Fusionen und Signaturen ab."
  }]
}

```
