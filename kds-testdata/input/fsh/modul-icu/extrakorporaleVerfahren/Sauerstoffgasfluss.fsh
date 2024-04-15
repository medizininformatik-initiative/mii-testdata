Instance: mii-exa-test-data-patient-1-ecmo-sauerstoffgasfluss
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/sauerstoffgasfluss
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/sauerstoffgasfluss"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code.coding[sct] = $sct#79063001 "Gas flow rate (v) (observable entity)"
* code.coding[loinc] = $loinc#19941-4 "Oxygen gas flow Oxygen delivery system"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 2 'L/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)