Instance: mii-exa-test-data-patient-1-ecmo-arterieller-druck-gemessen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/arterieller-druck
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/arterieller-druck"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#386534000 "Arterial blood pressure (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 20 'mm[Hg]'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)