// ============================================================================
// ICU - Device + DeviceMetric
// ============================================================================

// Beatmungsgerät für die invasive Beatmung (Lungen-Ruhigstellung unter ECMO)
Instance: mii-exa-test-data-patient-1-icu-device-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: Beatmungsgeraet Draeger Evita V500"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* deviceName[+].name = "Draeger Evita V500"
* deviceName[=].type = #manufacturer-name
* type = $sct#706172005 "Ventilator (physical object)"
* patient = Reference(mii-exa-test-data-icu-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-VENT-001"
* status = #active
* version.value = "SW 2.64"
* property.type = $11073-10101#16929196 "MDC_VENT_VOL_TIDAL_SETTING"
* property.valueQuantity = 340 'mL' "mL"

// VV-ECMO-Konsole (extrakorporaler Gasaustausch bei COVID-ARDS)
Instance: mii-exa-test-data-patient-1-icu-device-ecmo-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: VV-ECMO-Konsole (Getinge Cardiohelp)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* deviceName[+].name = "Getinge Cardiohelp"
* deviceName[=].type = #manufacturer-name
* type.coding[+] = $sct#303607000 "Biomedical equipment (physical object)"
* type.text = "VV-ECMO-System (extrakorporale Membranoxygenierung)"
* patient = Reference(mii-exa-test-data-icu-patient-1)
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-ECMO-001"
* status = #active
* version.value = "SW 4.1"
* property.type = $sct#251288004 "Extracorporeal gas exchange flow rate (observable entity)"
* property.valueQuantity = 4.5 'L/min' "L/min"

Instance: mii-exa-test-data-patient-1-icu-ect-dm-param-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingest-gem-parameter-extrakorporale-verfahren
Usage: #example
Description: "ICU DeviceMetric: Eingestellte Gemessene Parameter Extrakorporale Verfahren"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = $sct#182744004 "Extracorporeal circulation procedure"
* source = Reference(mii-exa-test-data-patient-1-icu-device-ecmo-1)
* category = #measurement

Instance: mii-exa-test-data-patient-1-icu-vent-dm-param-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-dm-eingestellte-gemessene-parameter-beatmung
Usage: #example
Description: "ICU DeviceMetric: Eingestellte Gemessene Parameter Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = $sct#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(mii-exa-test-data-patient-1-icu-device-1)
* category = #measurement
// Patientenmonitor (Vitaldaten-Monitoring MUV)
Instance: mii-exa-test-data-patient-1-icu-device-monitor-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: Patientenmonitor (Multiparameter, Bett 3)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-MONITOR-001"
* status = #active
* deviceName[+].name = "Philips IntelliVue MX800"
* deviceName[=].type = #manufacturer-name
* type.coding[+] = $sct#303607000 "Biomedical equipment (physical object)"
* type.text = "Patientenmonitor (Multiparameter)"
* version.value = "SW M.04.00"
* property.type = $sct#364075005 "Heart rate (observable entity)"
* property.valueCode = $sct#255238004 "Continuous (qualifier value)"
* patient = Reference(mii-exa-test-data-icu-patient-1)

// PDMS - Patientendaten-Management-System (Bilanzierung)
Instance: mii-exa-test-data-patient-1-icu-device-pdms-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: Patientendaten-Management-System (Fluessigkeitsbilanzierung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-PDMS-001"
* status = #active
* deviceName[+].name = "ICU-PDMS Bilanzierungsmodul"
* deviceName[=].type = #user-friendly-name
* type.coding[+] = $sct#706687001 "Software"
* type.text = "Patientendaten-Management-System (Bilanzierung)"
* version.value = "R2024.1"
* property.type = $sct#364396009 "Fluid balance observable (observable entity)"
* property.valueCode = $sct#255238004 "Continuous (qualifier value)"
* patient = Reference(mii-exa-test-data-icu-patient-1)

// PDMS-Assessmentmodul: elektronische Erfassung der Scores und Koerpermasse
// (Observation.device der Score-/MUV-Profile)
Instance: mii-exa-test-data-patient-1-icu-device-assessment-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-device
Usage: #example
Description: "ICU Device: PDMS-Assessmentmodul (Score- und Messwertdokumentation)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/device-identifier"
* identifier.value = "ICU-ASSESS-001"
* status = #active
* deviceName[+].name = "ICU-PDMS Assessmentmodul"
* deviceName[=].type = #user-friendly-name
* type.coding[+] = $sct#706687001 "Software"
* type.text = "Patientendaten-Management-System (Score- und Assessmentdokumentation)"
* version.value = "R2024.1"
* property.type = $sct#273249006 "Assessment scales (assessment scale)"
* property.valueCode = $sct#7087005 "Intermittent (qualifier value)"
* patient = Reference(mii-exa-test-data-icu-patient-1)
