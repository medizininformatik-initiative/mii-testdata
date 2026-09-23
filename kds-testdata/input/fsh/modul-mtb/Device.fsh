// ============================================================================
// MII MTB Module - Devices des NGS-Workflows
// Covers: genomic-study-device (Device), mii-pr-mtb-panel-devicedefinition
// ============================================================================

Alias: $mii-cs-mtb-devicefunction = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction

// ----------------------------------------------------------------------------
// Sequenzierer, mit dem die Genomic Study Analysis durchgefuehrt wurde
// (referenziert aus der genomic-study-analysis-device-Extension der Analysis)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mtb-device-sequencer-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-device
Usage: #example
Title: "MTB Genomic Study Device (Sequencer)"
Description: "Device: NGS-Sequenzierer (Illumina NovaSeq 6000) des MTB-NGS-Workflows"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* manufacturer = "Illumina"
* deviceName.name = "Illumina NovaSeq 6000"
* deviceName.type = #user-friendly-name
* type.text = "NGS-Sequenzierer"
* definition = Reference(mii-exa-test-data-mtb-panel-devicedef-1)

// ----------------------------------------------------------------------------
// Gen-Panel-Definition des verwendeten NGS-Panels
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mtb-panel-devicedef-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition
Usage: #example
Title: "MTB Panel DeviceDefinition (TSO 500)"
Description: "DeviceDefinition: NGS-Gen-Panel TruSight Oncology 500 des MTB-NGS-Workflows"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* manufacturerString = "Illumina"
* deviceName.name = "TruSight Oncology 500"
* deviceName.type = #user-friendly-name
* type = $mii-cs-mtb-devicefunction#gene-panel
* version = "2.0"
* extension[geneList].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp"
* extension[geneList].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* capability.type = $mii-cs-mtb-panel-capability#snv-detection
* note.text = "Panel deckt SNVs, CNVs, Fusionen und Signaturen ab."
* onlineInformation = "https://emea.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html"
