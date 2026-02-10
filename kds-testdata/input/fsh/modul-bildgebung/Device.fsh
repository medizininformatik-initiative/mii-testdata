Instance: mii-exa-test-data-geraet
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet
Usage: #example
Description: "Device: MRT-Gerät"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet"
* manufacturer = "Siemens"
* deviceName.name = "Magnetom Vida"
* deviceName.type = $CSdeviceName#model-name "Model name"

// CT Thorax scenario
Instance: mii-exa-test-data-geraet-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet
Usage: #example
Description: "Device: CT-Geraet"
* insert TestDataLabel
* manufacturer = "Siemens Healthineers"
* deviceName[0].name = "SOMATOM Force"
* deviceName[=].type = $CSdeviceName#model-name "Model name"
* deviceName[+].name = "CT-01-Radiologie"
* deviceName[=].type = $CSdeviceName#user-friendly-name "User Friendly name"
* serialNumber = "73952"
* version.value = "VA40A"