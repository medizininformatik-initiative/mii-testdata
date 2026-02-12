// Procedure: Extrakorporales Verfahren Patient-1
Instance: mii-exa-test-data-patient-1-icu-ect-verfahren-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-extrakorporales-verfahren
Usage: #example
Description: "Procedure: Extrakorporales Verfahren (ECMO) für Patient-1"
* insert TestDataLabel
// Extension.Dokumentationsdatum
* extension[+].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[=].valueDateTime = "2023-09-23T10:30:00+02:00"
// Extension.durchfuehrungsabsicht
* extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[=].valueCoding = $sct#262202000 "Therapeutic"
* status = #completed
* category.coding[sct] = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code.coding[ops] = $ops#5-470
* code.coding[ops].version = "2023"
* code.coding[ops].extension[+].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[ops].extension[=].valueCoding = $seitenlokalisation#L "links"
* code.coding[sct] = $sct#786453001 "Venovenous extracorporeal membrane oxygenation (procedure)"
* code.coding[sct].version = "http://snomed.info/sct/900000000000207008/version/20230731"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* performedPeriod.start = "2023-08-23T10:30:10+01:00"
* performedPeriod.end = "2023-09-22T10:30:10+01:00"
* recorder = Reference(mii-exa-test-data-practitioner-physician-1)
* note.text = "Beispielhafte Notiz zum extrakorporalen Verfahren."
