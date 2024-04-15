Instance: mii-exa-test-data-patient-1-ecmo-haemodialyse-eingestellt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/haemodialyse-blutfluss
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/haemodialyse-blutfluss"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#401000124105 "Hemodialysis blood flow (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 200 'mL/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)

Instance: mii-exa-test-data-patient-1-ecmo-haemodialyse-gemessen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/haemodialyse-blutfluss
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/haemodialyse-blutfluss"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#401000124105 "Hemodialysis blood flow (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"
* valueQuantity = 200 'mL/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)