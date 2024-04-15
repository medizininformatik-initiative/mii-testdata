Instance: mii-exa-test-data-patient-1-ecmo-substituatvolumen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/substituatvolumen
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/substituatvolumen"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#708514004 "Substitution volume (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 5 'L'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)