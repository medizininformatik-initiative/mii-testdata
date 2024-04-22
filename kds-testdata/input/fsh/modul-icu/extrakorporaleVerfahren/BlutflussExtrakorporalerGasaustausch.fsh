Instance: mii-exa-test-data-patient-1-ecmo-extrakorp-gas-eingestellt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-extrakorporaler-gasaustausch
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-extrakorporaler-gasaustausch"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#251288004 "Extracorporeal gas exchange flow rate (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 3 'L/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)

Instance: mii-exa-test-data-patient-1-ecmo-extrakorp-gas-gemessen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-extrakorporaler-gasaustausch
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-extrakorporaler-gasaustausch"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#251288004 "Extracorporeal gas exchange flow rate (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 3 'L/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)