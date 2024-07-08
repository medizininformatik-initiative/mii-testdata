Instance: mii-exa-test-data-patient-1-ecmo-dialysis-device
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device|1.0.0"
* identifier[0].system = "https://www.charite.de/fhir/sid/Devices"
* identifier[=].value = "D-FMC-6008-1"
* status = #active
* deviceName[0].name = "6008 CAREsystem"
* deviceName[=].type = #model-name
* type = $sct#36965003 "Hemodialysis machine, device (physical object)"
* version[0].value = "6008"
* property[0].type = $11073-10101#70934 "MDC_DEV_HDIALY_VMD"