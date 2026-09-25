// CO2-Inkubator der Zellkulturbank. Dient als Specimen.extension:focus-Ziel
// fuer den Umgebungsabstrich aus dem Inkubator (Sterilitaetskontrolle).
Instance: mii-exa-test-data-biobank-device-inkubator-1
InstanceOf: Device
Usage: #example
Description: "Device: CO2-Inkubator der Zellkulturbank"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Geraete"
* identifier.value = "ZEBANC_INK_007"
* status = #active
* type = $sct#467301004 "Carbon dioxide laboratory incubator"
* deviceName.name = "CO2-Inkubator Zellkulturbank 7"
* deviceName.type = $CSdeviceName#user-friendly-name
* owner = Reference(mii-exa-test-data-organization-biobank-charite)
