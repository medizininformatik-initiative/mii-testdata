// Instance: mii-exa-test-data-patient-1-vent-pos-endexp-druck-eingest
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/positiv-endexpiratorischer-druck
// Usage: #example
// //* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/positiv-endexpiratorischer-druck"
// * partOf = Reference(mii-exa-test-data-patient-1-vent-beatmung)
// * status = #final
// * category = $sct#40617009 "Artificial respiration (procedure)"
// * code.coding[0] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
// * code.coding[+] = $sct#250854009 "Positive end expiratory pressure (observable entity)"
// * code.coding[+] = urn:iso:std:iso:11073:10101#151976 "Applied PEEP"
// * subject = Reference(mii-exa-test-data-patient-1)
// * effectivePeriod.start = "2024-02-20T10:00:00+01:00"
// * effectivePeriod.end = "2024-02-20T13:00:00+01:00"
// * valueQuantity = 10 'cm[H2O]'
// * device = Reference(mii-exa-test-data-patient-1-vent-eingestellte-parameter)
// 
// Instance: mii-exa-test-data-patient-1-vent-pos-endexp-druck-gemess
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/positiv-endexpiratorischer-druck
// Usage: #example
// //* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/positiv-endexpiratorischer-druck"
// * partOf = Reference(mii-exa-test-data-patient-1-vent-beatmung)
// * status = #final
// * category = $sct#40617009 "Artificial respiration (procedure)"
// * code.coding[0] = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
// * code.coding[+] = $sct#250854009 "Positive end expiratory pressure (observable entity)"
// * code.coding[+] = urn:iso:std:iso:11073:10101#151976 "Applied PEEP"
// * subject = Reference(Patient/111)
// * effectivePeriod.start = "2024-02-20T10:00:00+01:00"
// * effectivePeriod.end = "2024-02-20T13:00:00+01:00"
// * valueQuantity = 10 'cm[H2O]'
// * device = Reference(mii-exa-test-data-patient-1-vent-gemessene-parameter)

// error Cannot read properties of undefined (reading 'discriminator')