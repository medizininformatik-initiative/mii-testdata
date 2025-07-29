Instance: mii-exa-test-data-device-roche-cobas-c303
InstanceOf: Device
Usage: #example
Description: "Device: Roche cobas c 303"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/Laboratory-device-identifier"
* identifier[=].value = "RocheCobasC303"
* status = #active
* manufacturer = "Roche"
* deviceName[0].name = "cobas"
* deviceName[0].type = #manufacturer-name
* modelNumber = "c 303"
* parent = Reference(mii-exa-test-data-device-roche-cobas)
* property[+].type = $11073-10101#69684
* property[+].type = $11073-10101#69652
* property[+].type = $11073-10101#69844

Instance: mii-exa-test-data-device-roche-cobas-e402
InstanceOf: Device
Usage: #example
Description: "Device: Roche cobas e 402"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/Laboratory-device-identifier"
* identifier[=].value = "RocheCobasE402"
* status = #active
* manufacturer = "Roche"
* deviceName[0].name = "cobas"
* deviceName[0].type = #manufacturer-name
* modelNumber = "e 402"
* parent = Reference(mii-exa-test-data-device-roche-cobas)
* property[+].type = $11073-10101#160220

Instance: mii-exa-test-data-device-roche-cobas
InstanceOf: Device
Usage: #example
Description: "Device: Roche cobas"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/Laboratory-device-identifier"
* identifier[=].value = "RocheCobas"
* status = #active
* manufacturer = "Roche"
* deviceName[0].name = "cobas"
* deviceName[0].type = #manufacturer-name