# MTB Genomic Study Device (Sequencer) - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Genomic Study Device (Sequencer)**

## Example Device: MTB Genomic Study Device (Sequencer)

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [Genomic Study Device](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-device)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**definition**: [DeviceDefinition: extension = ; manufacturer[x] = Illumina; type = Genpanel; version = 2.0; onlineInformation = https://emea.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html; note = Panel deckt SNVs, CNVs, Fusionen und Signaturen ab.](DeviceDefinition-mii-exa-test-data-mtb-panel-devicedef-1.md)

**manufacturer**: Illumina

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Illumina NovaSeq 6000 | User Friendly name |

**type**: NGS-Sequenzierer



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-test-data-mtb-device-sequencer-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-device"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "definition" : {
    "reference" : "DeviceDefinition/mii-exa-test-data-mtb-panel-devicedef-1"
  },
  "manufacturer" : "Illumina",
  "deviceName" : [{
    "name" : "Illumina NovaSeq 6000",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "303607000",
      "display" : "Biomedical equipment"
    }],
    "text" : "NGS-Sequenzierer"
  }
}

```
