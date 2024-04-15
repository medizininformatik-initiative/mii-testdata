// Instance: mii-exa-test-data-patient-1-vent-druckdifferenz-beatmung
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/druckdifferenz-beatmung
// Usage: #example
// //* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/druckdifferenz-beatmung"
// * partOf = Reference(mii-exa-test-data-patient-1-vent-beatmung)
// * status = #final
// * category = $sct#40617009 "Artificial respiration (procedure)"
// * code.coding[0] = $loinc#76154-4 "Airway pressure delta --on ventilator"
// * code.coding[+] = urn:iso:std:iso:11073:10101#152720 "Inspiratory airway pressure relative to PEEP or BAP"
// * subject = Reference(mii-exa-test-data-patient-1)
// * effectivePeriod.start = "2019-12-23T09:30:10+01:00"
// * effectivePeriod.end = "2019-12-23T10:30:10+01:00"
// * valueQuantity = 9 'cm[H2O]'
// * device = Reference(mii-exa-test-data-patient-1-vent-gemessene-parameter)

// error Cannot read properties of undefined (reading 'discriminator')