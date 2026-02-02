// ============================================================================
// MII Onkologie Test Data - Malignes Melanom Organ-Specific Profiles
// ============================================================================

// Breslow Tiefe
Instance: mii-exa-test-data-onko-melanom-breslow-tiefe-1
InstanceOf: MII_PR_Onko_Melanom_Breslow_Tiefe
Usage: #example
Description: "Onkologie Test Melanom Breslow Tiefe"
* insert TestDataLabel
* status = #final
* code = $SCT#106243009 "Breslow depth staging for melanoma of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueQuantity.value = 1.8
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm
* method = $SCT#117617002 "Immunohistochemistry procedure"

// Breslow Tiefe - dataAbsentReason variant
Instance: mii-exa-test-data-onko-melanom-breslow-tiefe-2
InstanceOf: MII_PR_Onko_Melanom_Breslow_Tiefe
Usage: #example
Description: "Onkologie Test Melanom Breslow Tiefe - Nicht bestimmbar"
* insert TestDataLabel
* status = #final
* code = $SCT#106243009 "Breslow depth staging for melanoma of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"

// Ulzeration
Instance: mii-exa-test-data-onko-melanom-ulzeration-1
InstanceOf: MII_PR_Onko_Melanom_Ulzeration
Usage: #example
Description: "Onkologie Test Melanom Ulzeration - Vorhanden"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueCodeableConcept = $mii-cs-onko-melanom-ulzeration#J "Ja, histologisch bestätigt"

// Ulzeration - keine
Instance: mii-exa-test-data-onko-melanom-ulzeration-2
InstanceOf: MII_PR_Onko_Melanom_Ulzeration
Usage: #example
Description: "Onkologie Test Melanom Ulzeration - Nicht vorhanden"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-22"
* valueCodeableConcept = $mii-cs-onko-melanom-ulzeration#N "Nein"

// Sicherheitsabstand
Instance: mii-exa-test-data-onko-melanom-sicherheitsabstand-1
InstanceOf: MII_PR_Onko_Melanom_Sicherheitsabstand
Usage: #example
Description: "Onkologie Test Melanom Sicherheitsabstand"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-07-10"
* valueQuantity.value = 10
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm

// Sicherheitsabstand - dataAbsentReason variant
Instance: mii-exa-test-data-onko-melanom-sicherheitsabstand-2
InstanceOf: MII_PR_Onko_Melanom_Sicherheitsabstand
Usage: #example
Description: "Onkologie Test Melanom Sicherheitsabstand - Nicht bestimmbar"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-07-10"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed "Not Performed"

// LDH - with Quantity value (profile expects Quantity, not CodeableConcept)
Instance: mii-exa-test-data-onko-melanom-ldh-1
InstanceOf: MII_PR_Onko_Melanom_LDH
Usage: #example
Description: "Onkologie Test Melanom LDH - Normal"
* insert TestDataLabel
* status = #final
* category.coding = $observation-category#laboratory "Laboratory"
* code = $LNC#14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-18"
* valueQuantity.value = 180
* valueQuantity.unit = "U/L"
* valueQuantity.system = $UCUM
* valueQuantity.code = #U/L

// LDH - erhöht
Instance: mii-exa-test-data-onko-melanom-ldh-2
InstanceOf: MII_PR_Onko_Melanom_LDH
Usage: #example
Description: "Onkologie Test Melanom LDH - Erhöht"
* insert TestDataLabel
* status = #final
* category.coding = $observation-category#laboratory "Laboratory"
* code = $LNC#14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2022-03-15"
* valueQuantity.value = 320
* valueQuantity.unit = "U/L"
* valueQuantity.system = $UCUM
* valueQuantity.code = #U/L
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* note.text = "LDH deutlich erhöht, Hinweis auf Tumorprogression"

// Exzision
Instance: mii-exa-test-data-onko-melanom-exzision-1
InstanceOf: MII_PR_Onko_Melanom_Exzision
Usage: #example
Description: "Onkologie Test Melanom Exzision - Oberarm"
* insert TestDataLabel
* status = #completed
// category is inherited from parent profile MII_PR_Onko_Operation
* code.coding[sct] = $SCT#177302005 "Wide excision of skin lesion (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedDateTime = "2021-07-05"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* bodySite = $SCT#368208006 "Skin of left upper arm (body structure)"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"

