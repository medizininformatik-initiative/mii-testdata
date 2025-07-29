Instance: mii-exa-test-data-devicemetric-roche-cobas-c303-1
InstanceOf: DeviceMetric
Usage: #example
Description: "DeviceMetric: Roche cobas c 303"
* insert TestDataLabel
* identifier[+].system = "https://www.charite.de/fhir/sid/Laboratory-device-identifier"
* identifier[=].value = "RocheCobasC303-160192"
* type = $11073-10101#160192
* source = Reference(mii-exa-test-data-device-roche-cobas-c303)
* category = #measurement