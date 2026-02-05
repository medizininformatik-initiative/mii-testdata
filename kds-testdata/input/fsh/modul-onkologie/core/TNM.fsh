// ============================================================================
// MII Onkologie Test Data - TNM Classification Profiles (oBDS Chapter 8)
// ============================================================================

// TNM T-Kategorie
Instance: mii-exa-test-data-onko-tnm-t-kategorie-1
InstanceOf: MII_PR_Onko_TNM_T_Kategorie
Usage: #example
Description: "Onkologie Test TNM T-Kategorie - pT3c"
* insert TestDataLabel
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#384625004 "pT category"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#T3c
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM N-Kategorie
Instance: mii-exa-test-data-onko-tnm-n-kategorie-1
InstanceOf: MII_PR_Onko_TNM_N_Kategorie
Usage: #example
Description: "Onkologie Test TNM N-Kategorie - pN1"
* insert TestDataLabel
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#371494008 "pN category (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#N1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* hasMember[0] = Reference(mii-exa-test-data-onko-anzahl-befallene-lymphknoten-1)
* hasMember[1] = Reference(mii-exa-test-data-onko-anzahl-untersuchte-lymphknoten-1)

// TNM M-Kategorie
Instance: mii-exa-test-data-onko-tnm-m-kategorie-1
InstanceOf: MII_PR_Onko_TNM_M_Kategorie
Usage: #example
Description: "Onkologie Test TNM M-Kategorie - pM1b"
* insert TestDataLabel
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#371497001 "pM category"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#M1b
* valueCodeableConcept.extension[MII_EX_Onko_TNM_ITC_Suffix].valueCodeableConcept = $UICC#i+ "(i+)"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* partOf = Reference(mii-exa-test-data-onko-operation-1)
* hasMember = Reference(mii-exa-test-data-onko-fernmetastasen-1)

// TNM L-Kategorie
Instance: mii-exa-test-data-onko-tnm-l-kategorie-1
InstanceOf: MII_PR_Onko_TNM_L_Kategorie
Usage: #example
Description: "Onkologie Test TNM L-Kategorie - L1"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#395715009 "Status of lymphatic (small vessel) invasion by tumor"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#L1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM V-Kategorie
Instance: mii-exa-test-data-onko-tnm-v-kategorie-1
InstanceOf: MII_PR_Onko_TNM_V_Kategorie
Usage: #example
Description: "Onkologie Test TNM V-Kategorie - V0"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#371493002 "Status of venous (large vessel) invasion by tumor"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#V0
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM Pn-Kategorie
Instance: mii-exa-test-data-onko-tnm-pn-kategorie-1
InstanceOf: MII_PR_Onko_TNM_Pn_Kategorie
Usage: #example
Description: "Onkologie Test TNM Pn-Kategorie - Pn0"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#371513001 "Presence of direct invasion by primary malignant neoplasm to nerve"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#Pn0
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM S-Kategorie (Serum Tumor Markers - for testicular tumors, etc.)
Instance: mii-exa-test-data-onko-tnm-s-kategorie-1
InstanceOf: MII_PR_Onko_TNM_S_Kategorie
Usage: #example
Description: "Onkologie Test TNM S-Kategorie - S1"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#399424006 "Serum tumor marker category"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#S1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM y-Symbol (after neoadjuvant therapy)
Instance: mii-exa-test-data-onko-tnm-y-symbol-1
InstanceOf: MII_PR_Onko_TNM_y_Symbol
Usage: #example
Description: "Onkologie Test TNM y-Symbol - Zustand nach neoadjuvanter Therapie"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#101658-3 "Cancer staging after multimodality therapy"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $SCT#421755005 "y"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM r-Symbol (Recurrence)
Instance: mii-exa-test-data-onko-tnm-r-symbol-1
InstanceOf: MII_PR_Onko_TNM_r_Symbol
Usage: #example
Description: "Onkologie Test TNM r-Symbol - kein Rezidiv"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#101659-1 "Recurrence type first episode Cancer"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $SCT#421188008 "r"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM a-Symbol (Autopsy)
Instance: mii-exa-test-data-onko-tnm-a-symbol-1
InstanceOf: MII_PR_Onko_TNM_a_Symbol
Usage: #example
Description: "Onkologie Test TNM a-Symbol - keine Autopsie"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#101660-9 "Autopsy determination Cancer"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $SCT#421426001 "a"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM m-Symbol (Multiple primary tumors)
Instance: mii-exa-test-data-onko-tnm-m-symbol-1
InstanceOf: MII_PR_Onko_TNM_m_Symbol
Usage: #example
Description: "Onkologie Test TNM m-Symbol - multiple Primärtumoren"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#42030-7 "Multiple tumors reported as single primary Cancer"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#m "(m)"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// TNM Klassifikation (Grouper)
Instance: mii-exa-test-data-onko-tnm-klassifikation-1
InstanceOf: MII_PR_Onko_TNM_Klassifikation
Usage: #example
Description: "Onkologie Test TNM Klassifikation - ypT3c pN1 M1b, Stadium IVB"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#399588009 "Pathologic TNM stage grouping"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#IVB "Stadium IVB"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* specimen = Reference(mii-exa-test-data-onko-specimen-1)
* hasMember[0] = Reference(mii-exa-test-data-onko-tnm-t-kategorie-1)
* hasMember[1] = Reference(mii-exa-test-data-onko-tnm-n-kategorie-1)
* hasMember[2] = Reference(mii-exa-test-data-onko-tnm-m-kategorie-1)
* hasMember[3] = Reference(mii-exa-test-data-onko-tnm-l-kategorie-1)
* hasMember[4] = Reference(mii-exa-test-data-onko-tnm-v-kategorie-1)
* hasMember[5] = Reference(mii-exa-test-data-onko-tnm-pn-kategorie-1)
* hasMember[6] = Reference(mii-exa-test-data-onko-tnm-y-symbol-1)

// ============================================================================
// TNM N-Kategorie with ITC and SN suffix (for SearchParameter coverage)
// Covers: tnm-n-itc, tnm-n-sn-suffix
// Example: pN0(i-)(sn) - Sentinel node negative, no isolated tumor cells
// ============================================================================
Instance: mii-exa-test-data-onko-tnm-n-kategorie-sn-1
InstanceOf: MII_PR_Onko_TNM_N_Kategorie
Usage: #example
Description: "Onkologie Test TNM N-Kategorie - pN0(i-)(sn) Sentinel Node"
* insert TestDataLabel
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#371494008 "pN category (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $UICC#N0 "N0"
// ITC suffix (covers tnm-n-itc search parameter)
* valueCodeableConcept.extension[MII_EX_Onko_TNM_ITC_Suffix].valueCodeableConcept = $UICC#i- "(i-)"
// SN suffix (covers tnm-n-sn-suffix search parameter)
* valueCodeableConcept.extension[MII_EX_Onko_TNM_SN_Suffix].valueCodeableConcept = $UICC#sn "(sn)"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* hasMember[0] = Reference(mii-exa-test-data-onko-anzahl-befallene-sentinel-lymphknoten-1)
* hasMember[1] = Reference(mii-exa-test-data-onko-anzahl-untersuchte-sentinel-lymphknoten-1)
