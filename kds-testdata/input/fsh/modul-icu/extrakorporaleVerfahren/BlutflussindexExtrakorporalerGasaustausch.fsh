Instance: mii-exa-test-data-patient-1-ecmo-blutflussindex-eingestellt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutflussindex-extrakorporaler-gasaustausch
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutflussindex-extrakorporaler-gasaustausch"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#251289007 "Extracorporeal gas exchange flow index (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"
* valueQuantity = 2 'L/(min.m2)'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)

Instance: mii-exa-test-data-patient-1-ecmo-blutflussindex-gemessen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutflussindex-extrakorporaler-gasaustausch
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutflussindex-extrakorporaler-gasaustausch"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#251289007 "Extracorporeal gas exchange flow index (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"
* valueQuantity = 2 'L/(min.m2)'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)