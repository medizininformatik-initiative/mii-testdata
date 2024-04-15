Instance: mii-exa-test-data-patient-1-ecmo-blutfluss-eingestellt
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-cardiovasculaeres-geraet
Usage: #example
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-cardiovasculaeres-geraet|1.0.0"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#444479000 "Rate of blood flow through cardiovascular device (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 2 'L/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-eingestellte-parameter)

Instance: mii-exa-test-data-patient-1-ecmo-blutfluss-gemessen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-cardiovasculaeres-geraet
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/blutfluss-cardiovasculaeres-geraet|1.0.0"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $sct#444479000 "Rate of blood flow through cardiovascular device (observable entity)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 2 'L/min'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)
