Instance: mii-exa-kardio-ekg-geraet-mortara
InstanceOf: Device
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet"
* definition = Reference(mii-exa-kardio-ekg-geraetedefinition-mortara)
* deviceName.name = "ELI 380"
* deviceName.type = #model-name
* type.coding[0] = urn:iso:std:iso:11073:10101#69797 "MDC_DEV_ECG_MDS"
* type.coding[=].version = "2024-12-05"
* type.coding[+] = urn:iso:std:iso:11073:10101#69798 "MDC_DEV_ECG_VMD"
* type.coding[=].version = "2024-12-05"
* language = #de
* status = #active
* manufacturer = "Mortara Instrument, Inc."