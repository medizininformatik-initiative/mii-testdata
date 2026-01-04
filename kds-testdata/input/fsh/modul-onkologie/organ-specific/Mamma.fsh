// ============================================================================
// MII Onkologie Test Data - Mamma (Breast Cancer) Organ-Specific Profiles
// ============================================================================

// Menopause Status
Instance: mii-exa-test-data-onko-mamma-menopause-status-1
InstanceOf: MII_PR_Onko_Mamma_Menopausenstatus
Usage: #example
Description: "Onkologie Test Mamma Menopausenstatus - Prämenopausal"
* insert TestDataLabel
* status = #final
* code = $SCT#161712005 "Menopause, function (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept = $SCT#22636003 "Premenopausal state (finding)"

// Estrogen Receptor Status
Instance: mii-exa-test-data-onko-mamma-rezeptorstatus-estrogen-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen
Usage: #example
Description: "Onkologie Test Mamma Östrogenrezeptorstatus - Positiv"
* insert TestDataLabel
* status = #final
* code = $LNC#40556-3 "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 85
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = $UCUM
* component[Faerbeintensitaet].valueCodeableConcept = $LNC#LA13035-3 "Strong"

// Progesteron Receptor Status
Instance: mii-exa-test-data-onko-mamma-rezeptorstatus-progesteron-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
Usage: #example
Description: "Onkologie Test Mamma Progesteronrezeptorstatus - Positiv"
* insert TestDataLabel
* status = #final
* code = $LNC#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept.coding[DefinitionOBDS] = $LNC#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 70
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = $UCUM
* component[Faerbeintensitaet].valueCodeableConcept = $LNC#LA13035-3 "Strong"

// Her2neu Status
Instance: mii-exa-test-data-onko-mamma-her2neu-status-1
InstanceOf: MII_PR_Onko_Mamma_Her2neu_Status
Usage: #example
Description: "Onkologie Test Mamma Her2neu Status - Negativ"
* insert TestDataLabel
* status = #final
* code = $LNC#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueCodeableConcept.coding[DefinitionOBDS] = $mii-cs-onko-mamma-her2neu-status-obds#N "negativ"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-her2neu-status-leitlinie#negativ "HER2-negativ"
* component[IHCScore].code = $LNC#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].valueCodeableConcept = $LNC#LA11840-8 "0"

// Her2neu Status - Positive variant
Instance: mii-exa-test-data-onko-mamma-her2neu-status-2
InstanceOf: MII_PR_Onko_Mamma_Her2neu_Status
Usage: #example
Description: "Onkologie Test Mamma Her2neu Status - Positiv (3+)"
* insert TestDataLabel
* status = #final
* code = $LNC#48676-1 "HER2 [Interpretation] in Tissue"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueCodeableConcept.coding[DefinitionOBDS] = $mii-cs-onko-mamma-her2neu-status-obds#P "positiv"
* valueCodeableConcept.coding[DefinitionLeitlinie] = $mii-cs-onko-mamma-her2neu-status-leitlinie#positiv "HER2-positiv"
* component[IHCScore].code = $LNC#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].valueCodeableConcept = $LNC#LA11843-2 "3+"

// Präoperative Markierung
Instance: mii-exa-test-data-onko-mamma-praeop-markierung-1
InstanceOf: MII_PR_Onko_Mamma_Praeoperative_Markierung
Usage: #example
Description: "Onkologie Test Mamma Präoperative Markierung - Drahtmarkierung"
* insert TestDataLabel
* status = #completed
* category = $SCT#103693007 "Diagnostic procedure (procedure)"
* code = $SCT#433222002 "Insertion of guide wire into breast using ultrasound guidance (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-09-28T08:00:00+02:00"

