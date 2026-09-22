// ============================================================================
// MII Biobank Test Data - Observations zu Bioproben
// Adaptiert aus den Beispielen des Pakets
// de.medizininformatikinitiative.kerndatensatz.biobank 2027.0.0-ballot
// (Observation-DNAConcentrationObs1, Observation-KaryotypOrganoidLunge,
//  Observation-MorphologieOrganoidLunge, Observation-ProliferationOrganoidLunge,
//  Observation-QualitaetspruefungBuffyCoat, Observation-WachstumstypOrganoidLunge)
// ============================================================================

// --- DNA-Konzentration der DNA-Probe (SpecimenCore-Instanz) ---
Instance: mii-exa-test-data-biobank-dna-konzentration-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration
Usage: #example
Description: "Observation: DNA-Konzentration der DNA-Probe von Biobank-Patient 1"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $loinc#72496-3 "DNA double strand [Mass/volume] in Specimen"
* focus = Reference(mii-exa-test-data-biobank-specimen-dna-1)
* effectiveDateTime = "2024-02-16T09:30:00+01:00"
* valueQuantity = 40 'ng/uL' "ng/µL"

// --- Karyotyp des Kolon-Organoids ---
Instance: mii-exa-test-data-biobank-karyotyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-karyotyp
Usage: #example
Description: "Observation: Karyotyp des Kolon-Organoids von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $sct#734840008 "Karyotype (cell structure)"
* focus = Reference(mii-exa-test-data-biobank-organoid-1)
* effectiveDateTime = "2022-04-12T10:00:00+02:00"
* valueCodeableConcept = $sct#734875008 "Karyotype 46, XX"

// --- Morphologie des Kolon-Organoids ---
Instance: mii-exa-test-data-biobank-morphologie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie
Usage: #example
Description: "Observation: Zellmorphologie des Kolon-Organoids von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $pato#PATO:0010006 "cell morphology"
* focus = Reference(mii-exa-test-data-biobank-organoid-1)
* effectiveDateTime = "2022-04-14T10:00:00+02:00"
* valueCodeableConcept = $sct#125393006 "Cell structure alteration (morphologic abnormality)"

// --- Proliferation des Kolon-Organoids ---
Instance: mii-exa-test-data-biobank-proliferation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-proliferation
Usage: #example
Description: "Observation: Proliferation des Kolon-Organoids von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $go-obo#GO:0008283 "cell population proliferation"
* focus = Reference(mii-exa-test-data-biobank-organoid-1)
* effectiveDateTime = "2022-04-13T10:00:00+02:00"
* valueCodeableConcept = $pato#PATO:0000719 "viable"

// --- Wachstumstyp des Kolon-Organoids ---
Instance: mii-exa-test-data-biobank-wachstumstyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp
Usage: #example
Description: "Observation: Wachstumstyp des Kolon-Organoids von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $clo#CLO:0000030 "cell culture growth mode"
* focus = Reference(mii-exa-test-data-biobank-organoid-1)
* effectiveDateTime = "2022-04-13T10:00:00+02:00"
* valueCodeableConcept = $clo#CLO:0000028 "adherent cell culture growth mode"

// --- Qualitaetspruefung der Serumprobe (Haemolyse-Screening) ---
Instance: mii-exa-test-data-biobank-qualitaetspruefung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung
Usage: #example
Description: "Observation: Qualitaetspruefung (Haemolyse-Screening) der Serumprobe von Biobank-Patient 3"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $sct#386404008 "Quality monitoring (procedure)"
* focus = Reference(mii-exa-test-data-patient-3-specimen-2)
* effectiveDateTime = "2022-04-05T09:00:00+02:00"
* component[type].code = $sct#246423001 "Test protocol used (attribute)"
* component[type].valueCodeableConcept = $sct#401297005 "Hemolysis screening test (procedure)"
* component[result].code = $sct#79409006 "Resulting in (attribute)"
* component[result].valueCodeableConcept = $loinc#LA10392-1 "Pass"
