Instance: mii-exa-test-data-patient-1-ecmo-dauer-extrakorp-gas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/dauer-extrakorporaler-gasaustausch
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/dauer-extrakorporaler-gasaustausch"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#251286000 "Extracorporeal gas exchange duration (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 72 'h'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)