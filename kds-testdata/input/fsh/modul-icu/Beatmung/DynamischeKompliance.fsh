// Instance: mii-exa-test-data-patient-1-vent-dynamische-kompliance
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/dynamische-kompliance
// Usage: #example
// //* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/dynamische-kompliance"
// * partOf = Reference(mii-exa-test-data-patient-1-vent-beatmung)
// * status = #final
// * category = $sct#40617009 "Artificial respiration (procedure)"
// * code.coding[0] = $loinc#60827-3 "Dynamic lung compliance"
// * code.coding[+] = $sct#250823005 "Total dynamic compliance (observable entity)"
// * code.coding[+] = urn:iso:std:iso:11073:10101#151692 "Thoracic compliance"
// * subject = Reference(mii-exa-test-data-patient-1)
// * effectivePeriod.start = "2024-02-20T10:00:00+01:00"
// * effectivePeriod.end = "2024-02-20T13:00:00+01:00"
// * valueQuantity = 200 'mL/cm[H2O]'
// * device = Reference(mii-exa-test-data-patient-1-vent-gemessene-parameter)