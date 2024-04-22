Instance: mii-exa-test-data-patient-1-ecmo-ion-kalzium-nierenersatz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/ionisiertes-kalzium-nierenersatzverfahren
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/ionisiertes-kalzium-nierenersatzverfahren|1.0.0"
* partOf = Reference(mii-exa-test-data-patient-1-extrakorporalen-verfahren-1)
* status = #final
* category = $sct#182744004 "Extracorporeal circulation procedure (procedure)"
* code = $loinc#83064-6 "Calcium.ionized [Moles/volume] in Blood drawn from CRRT circuit"
* subject = Reference(mii-exa-test-data-patient-1)
* effectivePeriod.start = "2024-02-20T10:00:00+01:00"
* effectivePeriod.end = "2024-02-20T13:00:00+01:00"
* valueQuantity = 0.2 'mmol/L'
* device = Reference(mii-exa-test-data-patient-1-ecmo-gemessene-parameter)

