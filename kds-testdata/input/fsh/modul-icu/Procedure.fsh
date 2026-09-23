// ============================================================================
// ICU - Procedures
// ============================================================================

Instance: mii-exa-test-data-patient-1-icu-ect-extrakorp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-extrakorporales-verfahren
Usage: #example
Description: "ICU Procedure: MII PR ICU Extrakorporales Verfahren"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
// VV-ECMO-Lauf bei schwerem COVID-ARDS
* performedPeriod.start = "2024-05-03T02:00:00+02:00"
* performedPeriod.end = "2024-05-11T14:00:00+02:00"
* category = $sct#182744004 "Extracorporeal circulation procedure"
* code = $sct#233573008 "Extracorporeal membrane oxygenation (procedure)"
* extension[Dokumentationsdatum].valueDateTime = "2024-05-11T15:00:00+02:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* recorder = Reference(mii-exa-test-data-icu-practitioner-1)
* bodySite.coding[snomed-ct] = $sct#83419000 "Femoral vein structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "VV-ECMO ueber femoro-jugulaere Kanuelierung bei schwerem COVID-ARDS, komplikationsloser Lauf ueber 8 Tage."

Instance: mii-exa-test-data-patient-1-icu-vent-beatmung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-beatmung
Usage: #example
Description: "ICU Procedure: MII PR ICU Beatmung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* subject = Reference(mii-exa-test-data-icu-patient-1)
* encounter = Reference(mii-exa-test-data-icu-encounter-1)
// Invasive Beatmung mit ultraprotektiver Lungen-Ruhigstellung unter ECMO
* performedPeriod.start = "2024-05-01T18:00:00+02:00"
* performedPeriod.end = "2024-05-13T09:00:00+02:00"
* category = $sct#40617009 "Artificial ventilation"
* code = $sct#243147009 "Controlled ventilation (procedure)"
* extension[Dokumentationsdatum].valueDateTime = "2024-05-13T10:00:00+02:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic"
* recorder = Reference(mii-exa-test-data-icu-practitioner-1)
* bodySite.coding[snomed-ct] = $sct#44567001 "Trachea structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Invasive Beatmung mit ultraprotektiver Lungen-Ruhigstellung unter VV-ECMO, Extubation am 13.05."
