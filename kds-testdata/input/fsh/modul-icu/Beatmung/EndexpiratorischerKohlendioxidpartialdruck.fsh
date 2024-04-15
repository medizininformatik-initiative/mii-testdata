// Instance: mii-exa-test-data-patient-1-vent-endexp-kohlendioxidpartialdruck
// InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/endexpiratorischer-kohlendioxidpartialdruck
// Usage: #example
// //* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/endexpiratorischer-kohlendioxidpartialdruck"
// * partOf = Reference(mii-exa-test-data-patient-1-vent-beatmung)
// * status = #final
// * category[Beatmung] = $sct#40617009 "Artificial respiration (procedure)"
// * code.coding[0] = $loinc#19891-1 "Carbon dioxide [Partial pressure] in Exhaled gas --at end expiration"
// * code.coding[+] = $sct#250790007 "End tidal carbon dioxide tension (observable entity)"
// * code.coding[+] = urn:iso:std:iso:11073:10101#151708 "End tidal carbon dioxide concentration (or partial pressure) in airway gas"
// * subject = Reference(mii-exa-test-data-patient-1)
// * effectivePeriod.start = "2024-02-20T10:00:00+01:00"
// * effectivePeriod.end = "2024-02-20T13:00:00+01:00"
// * valueQuantity = 40 'mm[Hg]'
// * device = Reference(mii-exa-test-data-patient-1-vent-gemessene-parameter)

// error Cannot read properties of undefined (reading 'slicing')