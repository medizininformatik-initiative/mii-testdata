// ============================================================================
// MII Onkologie Test Data - Mamma (Breast Cancer) Organ-Specific Profiles
// ============================================================================

// Menopause Status
Instance: mii-exa-test-data-onko-mamma-menopause-status-1
InstanceOf: MII_PR_Onko_Mamma_Menopausenstatus
Usage: #example
Description: "Onkologie Test Mamma Menopausenstatus - Prämenopausal"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $SCT#161712005 "Menopause, function (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept = $SCT#22636003 "Premenopausal state (finding)"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Estrogen Receptor Status
Instance: mii-exa-test-data-onko-mamma-rezeptorstatus-estrogen-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen
Usage: #example
Description: "Onkologie Test Mamma Östrogenrezeptorstatus - Positiv"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $LNC#40556-3 "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept.coding[DefinitionOBDS] = $LNC#LA6576-8 "Positive"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-rezeptorstatus-leitlinie#positiv "positiv"
* component[AnteilPositiveZellen].valueQuantity.value = 85
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = $UCUM
* component[AnteilPositiveZellen].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* component[Faerbeintensitaet].valueCodeableConcept = $LNC#LA13035-3 "Impaired"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Progesteron Receptor Status
Instance: mii-exa-test-data-onko-mamma-rezeptorstatus-progesteron-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
Usage: #example
Description: "Onkologie Test Mamma Progesteronrezeptorstatus - Positiv"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept.coding[DefinitionOBDS] = $LNC#LA6576-8 "Positive"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-rezeptorstatus-leitlinie#positiv "positiv"
* component[AnteilPositiveZellen].valueQuantity.value = 70
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = $UCUM
* component[Faerbeintensitaet].valueCodeableConcept = $LNC#LA13035-3 "Impaired"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Her2neu Status
Instance: mii-exa-test-data-onko-mamma-her2neu-status-1
InstanceOf: MII_PR_Onko_Mamma_Her2neu_Status
Usage: #example
Description: "Onkologie Test Mamma Her2neu Status - Negativ"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $LNC#48676-1 "HER2 Ag [Interpretation] in Tissue"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept.coding[DefinitionOBDS] = $mii-cs-onko-mamma-her2neu-status-obds#N "negativ"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-her2neu-status-leitlinie#negativ "HER2-negativ"
* component[IHCScore].code = $LNC#85319-2 "HER2 Ag [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].valueCodeableConcept = $LNC#LA11840-8 "Mixed"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Her2neu Status - Positive variant
Instance: mii-exa-test-data-onko-mamma-her2neu-status-2
InstanceOf: MII_PR_Onko_Mamma_Her2neu_Status
Usage: #example
Description: "Onkologie Test Mamma Her2neu Status - Positiv (3+)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code = $LNC#48676-1 "HER2 Ag [Interpretation] in Tissue"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueCodeableConcept.coding[DefinitionOBDS] = $mii-cs-onko-mamma-her2neu-status-obds#P "positiv"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-her2neu-status-leitlinie#positiv "HER2-positiv"
* component[IHCScore].code = $LNC#85319-2 "HER2 Ag [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].valueCodeableConcept = $LNC#LA11843-2 "3+"
* component[ISHResult].code = $LNC#96893-3 "ERBB2 gene duplication in Tumor by FISH"
* component[ISHResult].valueCodeableConcept = $LNC#LA6576-8 "Positive"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Präoperative Markierung
Instance: mii-exa-test-data-onko-mamma-praeop-markierung-1
InstanceOf: MII_PR_Onko_Mamma_Praeoperative_Markierung
Usage: #example
Description: "Onkologie Test Mamma Präoperative Markierung - Drahtmarkierung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category = $SCT#103693007 "Diagnostic procedure (procedure)"
* code = $SCT#433222002 "Insertion of guide wire into breast using ultrasound guidance (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-09-28T08:00:00+02:00"
* partOf = Reference(mii-exa-test-data-onko-mamma-operation-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Mamma Operation
Instance: mii-exa-test-data-onko-mamma-operation-1
InstanceOf: MII_PR_Onko_Mamma_Operation
Usage: #example
Description: "Onkologie Test Mamma Operation - Brusterhaltende Therapie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code = $SCT#392021009 "Lumpectomy of breast (procedure)"
* code.coding[ops] = $OPS#5-870.0 "Partielle (brusterhaltende) Exzision der Mamma: Exzision"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-09-30"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* usedCode[IntraoperativesImaging] = $SCT#168750009 "Mammography abnormal"
* usedCode[PraeoperativeMarkierung] = $SCT#433222002 "Insertion of guide wire into breast using ultrasound guidance (procedure)"
* basedOn[tumorkonferenz] = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* bodySite.coding[snomed-ct] = $SCT#76752008 "Breast structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#L "links"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "nein"
* complication[compl_icd10].coding = $ICD10GM|2021#T81.0 "Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2021-10-01"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[Urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
* extension[Urgency].valueCodeableConcept.text = "Elektiveingriff"
* note.text = "Brusterhaltende Exzision mit Drahtmarkierung."
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* partOf = Reference(mii-exa-test-data-onko-systemische-therapie-1)

// Mamma Sozialdienst
Instance: mii-exa-test-data-onko-mamma-sozialdienst-1
InstanceOf: MII_PR_Onko_Mamma_Sozialdienst
Usage: #example
Description: "Onkologie Test Mamma Sozialdienst - Psychosoziale Beratung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-10-05"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* basedOn[tumorkonferenz] = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* bodySite.coding[snomed-ct] = $SCT#76752008 "Breast structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops] = $OPS#9-401.5 "(Neuro-)psychologische und psychosoziale Interventionen: Sozialrechtliche Beratung"
* code.coding[ops].version = "2021"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "nein"
* complication[compl_icd10].coding = $ICD10GM|2021#T81.0 "Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2021-10-06"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
* extension[Urgency].valueCodeableConcept.text = "Elektiveingriff"
* note.text = "Psychosoziale Beratung durch den Sozialdienst."
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* partOf = Reference(mii-exa-test-data-onko-mamma-operation-1)

