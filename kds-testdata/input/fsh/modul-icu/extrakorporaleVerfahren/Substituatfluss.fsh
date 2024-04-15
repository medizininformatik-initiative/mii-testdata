Instance: mii-exa-test-data-patient-1-ecmo-substituatfluss
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/substituatfluss
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/substituatfluss"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#708513005 "Substitution flow rate (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 300 'mL/h'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)