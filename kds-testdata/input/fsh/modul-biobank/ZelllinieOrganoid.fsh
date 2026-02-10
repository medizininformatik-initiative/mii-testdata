// ============================================================================
// ZelllinieOrganoid - Cell line / organoid specimen instances
// ============================================================================

// Patient-3: Colon carcinoma cell line derived from tissue specimen
Instance: mii-exa-test-data-patient-3-biobank-zelllinie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid
Usage: #example
Description: "Zelllinie: Kolonkarzinom-Zelllinie aus Gewebeprobe (Patient 3)"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-3-diagnose-1)
* extension[anzahlPassagen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-passagen"
* extension[anzahlPassagen].valueInteger = 12
* extension[modifikationen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen"
* extension[modifikationen].extension[artDerModifikation].url = "artDerModifikation"
* extension[modifikationen].extension[artDerModifikation].valueCodeableConcept = $CLO#CLO:0037378 "derived from cell with transgenic modification"
* extension[modifikationen].extension[zielGen].url = "zielGen"
* extension[modifikationen].extension[zielGen].valueCoding.system = "http://www.genenames.org"
* extension[modifikationen].extension[zielGen].valueCoding.code = #HGNC:6407
* extension[modifikationen].extension[zielGen].valueCoding.display = "KRAS"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "ZL_000001"
* status = #available
* type.coding[sct] = $sct#258435002 "Tumor cells (specimen)"
* subject = Reference(mii-exa-test-data-patient-3)
* parent = Reference(mii-exa-test-data-patient-3-specimen-1)
* collection.collectedDateTime = "2022-04-15T10:00:00+02:00"
* collection.bodySite.coding[sct] = $sct#71854001 "Colon structure (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* container.capacity = 25 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 15 'ml'
* container.specimenQuantity.unit = "mL"
* note.text = "Kolonkarzinom-Zelllinie, Passage 12, stabil proliferierend"

// Patient-5: Breast cancer organoid derived from blood specimen
Instance: mii-exa-test-data-patient-5-biobank-zelllinie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid
Usage: #example
Description: "Zelllinie: Brustkrebsorganoid (Patient 5)"
* insert TestDataLabel
* extension[gehoertZu].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
* extension[gehoertZu].valueReference = Reference(mii-exa-test-data-organization-biobank-charite)
* extension[festgestellteDiagnose].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"
* extension[festgestellteDiagnose].valueReference = Reference(mii-exa-test-data-patient-5-diagnose-1)
* extension[anzahlPassagen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-passagen"
* extension[anzahlPassagen].valueInteger = 8
* extension[modifikationen].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen"
* extension[modifikationen].extension[artDerModifikation].url = "artDerModifikation"
* extension[modifikationen].extension[artDerModifikation].valueCodeableConcept = $CLO#CLO:0037375 "derived from cell with knockout gene"
* extension[modifikationen].extension[zielGen].url = "zielGen"
* extension[modifikationen].extension[zielGen].valueCoding.system = "http://www.genenames.org"
* extension[modifikationen].extension[zielGen].valueCoding.code = #HGNC:11998
* extension[modifikationen].extension[zielGen].valueCoding.display = "TP53"
* identifier.system = "https://www.charite.de/fhir/sid/Bioproben"
* identifier.value = "ZL_000002"
* status = #available
* type.coding[sct] = $sct#258435002 "Tumor cells (specimen)"
* subject = Reference(mii-exa-test-data-patient-5)
* parent = Reference(mii-exa-test-data-patient-5-specimen-1)
* collection.collectedDateTime = "2023-08-01T09:30:00+02:00"
* collection.bodySite.coding[sct] = $sct#368208006 "Left upper arm structure (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* container.capacity = 25 'ml'
* container.capacity.unit = "mL"
* container.specimenQuantity = 20 'ml'
* container.specimenQuantity.unit = "mL"
* note.text = "Brustkrebs-Organoid, Passage 8, TP53 Knockout"
