Instance: mii-exa-test-data-patient-1-vent-beatmung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Usage: #example
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung"
* status = #completed
* category = $sct#40617009 "Artificial respiration (procedure)"
* code = $sct#26763009 "Controlled ventilation procedure and therapy, initiation and management (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-2)
* performedPeriod.start = "2024-02-20T10:00:00+01:00"
* performedPeriod.end = "2024-02-20T13:00:00+01:00"