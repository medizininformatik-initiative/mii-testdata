// ICU Device
Instance: mii-exa-test-data-icu-device-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-icu-device
Usage: #example
Description: "Device: ICU Device"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/icu-device-identifier"
* identifier.value = "Device-12345"
* status = #active
* deviceName.name = "Device Model X"
* deviceName.type = #user-friendly-name
* type.coding = $sct#49062001 "Device (physical object)"
* version.value = "1.0.0"

// ECMO Device
Instance: mii-exa-test-data-icu-ecmo-device-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-icu-device
Usage: #example
Description: "Device: ICU ECMO Device"
* insert TestDataLabel
* identifier.system = "https://www.charite.de/fhir/sid/icu-device-identifier"
* identifier.value = "ICUDevice-12345"
* status = #active
* deviceName.name = "ICU Device Model X"
* deviceName.type = #user-friendly-name
* type.coding = $sct#49062001 "Device (physical object)"
* version.value = "1.0.0"
