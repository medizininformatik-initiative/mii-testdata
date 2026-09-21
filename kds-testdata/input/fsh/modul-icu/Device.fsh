// ============================================================================
// ICU - Device + DeviceMetric
// ============================================================================

// Beatmungsgerät für die invasive Beatmung (Lungen-Ruhigstellung unter ECMO)
Instance: mii-exa-test-data-patient-1-icu-device-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: Beatmungsgeraet Draeger Evita V500"
* insert TestDataLabel
* deviceName[+].name = "Draeger Evita V500"
* deviceName[=].type = #manufacturer-name
* type = $sct#706172005 "Ventilator (physical object)"
* patient = Reference(mii-exa-test-data-icu-patient-1)

// VV-ECMO-Konsole (extrakorporaler Gasaustausch bei COVID-ARDS)
Instance: mii-exa-test-data-patient-1-icu-device-ecmo-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: VV-ECMO-Konsole (Getinge Cardiohelp)"
* insert TestDataLabel
* deviceName[+].name = "Getinge Cardiohelp"
* deviceName[=].type = #manufacturer-name
* type.text = "VV-ECMO-System (extrakorporale Membranoxygenierung)"
* patient = Reference(mii-exa-test-data-icu-patient-1)

Instance: mii-exa-test-data-patient-1-icu-ect-dm-param-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingest-gem-parameter-extrakorporale-verfahren
Usage: #example
Description: "ICU DeviceMetric: Eingestellte Gemessene Parameter Extrakorporale Verfahren"
* insert TestDataLabel
* type = $sct#182744004 "Extracorporeal circulation procedure"
* source = Reference(mii-exa-test-data-patient-1-icu-device-ecmo-1)
* category = #measurement

Instance: mii-exa-test-data-patient-1-icu-vent-dm-param-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingestellte-gemessene-parameter-beatmung
Usage: #example
Description: "ICU DeviceMetric: Eingestellte Gemessene Parameter Beatmung"
* insert TestDataLabel
* type = $sct#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(mii-exa-test-data-patient-1-icu-device-1)
* category = #measurement
