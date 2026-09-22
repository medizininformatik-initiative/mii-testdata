// ============================================================================
// ICU - Restliche Beatmungsdruecke, generische Parameter-Elternprofile
// und Koerperlaenge (liegend)
// ============================================================================

// --- Maximaler inspiratorischer Beatmungsdruck ---

Instance: mii-exa-test-data-patient-1-icu-vent-pmax-insp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-maximaler-inspiratorischer-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Maximaler Inspiratorischer Beatmungsdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#27913002 "Maximum inspiratory pressure (observable entity)"
* code.coding[IEEE-11073] = $11073-10101#151973 "Maximum inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 28 'cm[H2O]' "cmH2O"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

// --- Mittlerer inspiratorischer Beatmungsdruck ---

Instance: mii-exa-test-data-patient-1-icu-vent-pmean-insp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-mittlerer-inspiratorischer-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Mittlerer Inspiratorischer Beatmungsdruck"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698821009 "Mean inspiratory airway pressure (observable entity)"
* code.coding[loinc] = $loinc#60952-9 "Mean airway pressure --during inspiration"
* code.coding[IEEE-11073] = $11073-10101#151975 "Mean inspiratory airway pressure."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 14 'cm[H2O]' "cmH2O"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

// --- Plateau-Beatmungsdruck ---

Instance: mii-exa-test-data-patient-1-icu-vent-pplat-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-vent-plateau-beatmungsdruck
Usage: #example
Description: "ICU Observation: MII PR ICU Plateau-Beatmungsdruck (lungenprotektiv unter ECMO)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category[kuenstlicheBeatmung] = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#698822002 "Airway plateau pressure (observable entity)"
* code.coding[loinc] = $loinc#76259-1 "Pressure.plateau Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $11073-10101#152424 "Pressure in airway in plateau phase during mechanical ventilation."
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 22 'cm[H2O]' "cmH2O"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

// --- Generisches Elternprofil: Parameter von Beatmung (abstract=false) ---

Instance: mii-exa-test-data-patient-1-icu-vent-param-generisch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-parameter-von-beatmung
Usage: #example
Description: "ICU Observation: MII PR ICU Parameter von Beatmung (generisch) - inspiratorisches Minutenvolumen"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-vent-beatmung-1)
* category = $sct#40617009 "Artificial ventilation (regime/therapy)"
* code.coding[sct] = $sct#426102006 "Inspiratory minute volume (observable entity)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T08:00:00+02:00"
* valueQuantity = 7.2 'L/min' "L/min"
* device = Reference(mii-exa-test-data-patient-1-icu-vent-dm-param-1)

// --- Generisches Elternprofil: Parameter von extrakorporalen Verfahren (abstract=false) ---

Instance: mii-exa-test-data-patient-1-icu-ect-param-generisch-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-parameter-von-extrakorporalen-verfahren
Usage: #example
Description: "ICU Observation: MII PR ICU Parameter von Extrakorporalen Verfahren (generisch) - Sweep-Gasfluss abends"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* partOf = Reference(mii-exa-test-data-patient-1-icu-ect-extrakorp-1)
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure"
* code.coding[sct] = $sct#79063001 "Gas flow rate (v)"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-05T20:00:00+02:00"
* valueQuantity = 6 'L/min' "L/min"
* device = Reference(mii-exa-test-data-patient-1-icu-ect-dm-param-1)

// --- Koerperlaenge (liegend gemessen) ---

Instance: mii-exa-test-data-patient-1-icu-muv-laenge-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-koerperlaenge
Usage: #example
Description: "ICU Observation: MII PR ICU Koerperlaenge (liegend, 168 cm bei Aufnahme)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#1149101003
* code.coding[loinc] = $loinc#8306-3 "Body height --lying"
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
* effectiveDateTime = "2024-05-01T12:00:00+02:00"
* valueQuantity = 168 'cm' "centimeter"
