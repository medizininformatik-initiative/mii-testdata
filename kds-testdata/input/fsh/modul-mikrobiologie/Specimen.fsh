// Patient-1
Instance: mii-exa-test-data-patient-1-specimen-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore|1.0.8"
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "BP_000002"
* status = #available
* type.coding[sct] = $sct#258503004 "Skin swab (specimen)"
* subject = Reference(mii-exa-test-data-patient-1)
* collection.collectedDateTime = "2024-02-14T15:00:00+01:00"
* collection.bodySite.coding[sct] = $sct#45206002 "Nasal structure (body structure)"
* container.type = $sct#83059008 "Tube, device (physical object)"