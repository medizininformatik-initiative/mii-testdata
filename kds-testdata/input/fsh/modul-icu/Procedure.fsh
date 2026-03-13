// ============================================================================
// ICU - Procedures
// ============================================================================

Instance: mii-exa-test-data-patient-1-icu-ect-extrakorp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-extrakorporales-verfahren
Usage: #example
Description: "ICU Procedure: MII PR ICU Extrakorporales Verfahren"
* insert TestDataLabel
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* performedPeriod.start = "2024-02-12T08:00:00+01:00"
* performedPeriod.end = "2024-02-18T16:00:00+01:00"
* category = $sct#182744004 "Renal dialysis (procedure)"
* code = $sct#233573008 "Extracorporeal membrane oxygenation (procedure)"

Instance: mii-exa-test-data-patient-1-icu-vent-beatmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmung
Usage: #example
Description: "ICU Procedure: MII PR ICU Beatmung"
* insert TestDataLabel
* status = #completed
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* performedPeriod.start = "2024-02-12T08:00:00+01:00"
* performedPeriod.end = "2024-02-18T16:00:00+01:00"
* category = $sct#40617009 "Artificial respiration (procedure)"
* code = $sct#243147009 "Controlled ventilation (procedure)"

