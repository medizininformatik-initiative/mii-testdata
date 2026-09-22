Instance: mii-exa-onko-tnm-clinical-cT3cN1cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-cT3)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-cN1)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIA "Stadium IIIA"

// T Category - cT3

Instance: mii-exa-onko-tnm-t-kategorie-cT3
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T3 "T3"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352966002 "Union for International Cancer Control cT3 (qualifier value)"

// N Category - cN1

Instance: mii-exa-onko-tnm-n-kategorie-cN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N1 "N1"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

// M Category - cM0 (Will be REUSED in later classifications!)

Instance: mii-exa-onko-tnm-m-kategorie-cM0
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#M0 "M0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352512001 "Union for International Cancer Control cM0 (qualifier value)"

// ============================================
// 2. CLINICAL RESTAGING AFTER BIOPSY - cT4cN1cM0
// ============================================
// Note (Therese Pross, Brustzentrum Berlin): After core needle biopsy, T stays CLINICAL
// because size determination is still done via imaging, not from the biopsy specimen alone.
// The biopsy may confirm invasion depth but doesn't enable pathological size assessment.

// Main TNM Classification - Clinical (T remains clinical after biopsy!)

Instance: mii-exa-onko-tnm-biopsy-cT4cN1cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-02-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-cT4)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-cN1)  // REUSE clinical N
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE clinical M
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIIB "Stadium IIIB"

// T Category - cT4 (CLINICAL - biopsy does not make this pathological!)

Instance: mii-exa-onko-tnm-t-kategorie-cT4
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-02-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T4 "T4"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352997003 "Union for International Cancer Control cT4 (qualifier value)"

// ============================================
// 3. CLINICAL STAGING AFTER NEOADJUVANT THERAPY - ycT2ycN0cM0
// ============================================

// Main TNM Classification - Clinical after chemotherapy

Instance: mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-ycT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-ycN0)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE original clinical M
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IIA "Stadium IIA"

// T Category - ycT2 (clinical after therapy)

Instance: mii-exa-onko-tnm-t-kategorie-ycT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* modifierExtension[yPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#y "y"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T2 "T2"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352993004 "Union for International Cancer Control cT2 (qualifier value)"

// N Category - ycN0 (clinical after therapy)

Instance: mii-exa-onko-tnm-n-kategorie-ycN0
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* modifierExtension[yPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#y "y"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N0 "N0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1353041009 "Union for International Cancer Control cN0 (qualifier value)"

// ============================================
// 4. PATHOLOGICAL STAGING AFTER SURGERY - ypT0ypN0cM0
// ============================================

// Main TNM Classification - Pathological after surgery (complete response)
// Note (Therese Pross): After surgery, additional categories are assessed: L, V, Pn, R

Instance: mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = http://snomed.info/sct#399588009 "Pathologic TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-ypT0)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-ypN0)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE original - M not reassessed!
* hasMember[3] = Reference(mii-exa-onko-tnm-journey-l-kategorie-L0)
* hasMember[4] = Reference(mii-exa-onko-tnm-journey-v-kategorie-V0)
* hasMember[5] = Reference(mii-exa-onko-tnm-journey-pn-kategorie-Pn0)
// Note: ypT0ypN0cM0 after neoadjuvant therapy = pathological complete response (pCR).
// pCR has no standard UICC stage assignment; the Verlauf observation carries the response assessment.
* valueCodeableConcept = https://www.uicc.org/resources/tnm#okk "Stadium X"

// T Category - ypT0 (no residual tumor after therapy)

Instance: mii-exa-onko-tnm-t-kategorie-ypT0
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#p "p"
* modifierExtension[yPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#y "y"
* code = http://snomed.info/sct#384625004 "pT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T0 "T0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352552004 "Union for International Cancer Control pT0 (qualifier value)"

// N Category - ypN0 (no lymph node metastases after therapy)

Instance: mii-exa-onko-tnm-n-kategorie-ypN0
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#p "p"
* modifierExtension[yPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#y "y"
* code = http://snomed.info/sct#371494008 "pN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N0 "N0"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352621009 "Union for International Cancer Control pN0 (qualifier value)"

// ============================================
// 4b. POST-SURGERY ADDITIONAL CATEGORIES - L0, V0, Pn0, R0
// ============================================
// Note (Therese Pross): After surgical resection, these additional categories are routinely assessed

// L Category - L0 (no lymphatic vessel invasion)

Instance: mii-exa-onko-tnm-journey-l-kategorie-L0
InstanceOf: mii-pr-onko-tnm-l-kategorie
Usage: #example
* status = #final
* code = http://snomed.info/sct#395715009 "Status of lymphatic (small vessel) invasion by tumor (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = https://www.uicc.org/resources/tnm#L0 "L0"

// V Category - V0 (no venous invasion)

Instance: mii-exa-onko-tnm-journey-v-kategorie-V0
InstanceOf: mii-pr-onko-tnm-v-kategorie
Usage: #example
* status = #final
* code = http://snomed.info/sct#371493002 "Status of venous (large vessel) invasion by tumor (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = https://www.uicc.org/resources/tnm#V0 "V0"

// Pn Category - Pn0 (no perineural invasion)

Instance: mii-exa-onko-tnm-journey-pn-kategorie-Pn0
InstanceOf: mii-pr-onko-tnm-pn-kategorie
Usage: #example
* status = #final
* code = http://snomed.info/sct#371513001 "Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = https://www.uicc.org/resources/tnm#Pn0 "Pn0"

// R Classification - R0 (complete resection, no residual tumor)

Instance: mii-exa-onko-tnm-journey-residualstatus-R0
InstanceOf: mii-pr-onko-residualstatus
Usage: #example
* status = #final
* code = http://loinc.org#84892-9
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* valueCodeableConcept.coding.code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

// ============================================
// 5. RECURRENCE STAGING AFTER 3 YEARS - rcT2cN1cM1
// ============================================
// Note (Therese Pross): N and M need explicit c-prefix at recurrence

// Main TNM Classification - Recurrence (new baseline after disease-free interval)

Instance: mii-exa-onko-tnm-recurrence-rcT2cN1cM1
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = http://snomed.info/sct#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-rcT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-rcN1)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-rcM1)
* valueCodeableConcept = https://www.uicc.org/resources/tnm#IV "Stadium IV"

// T Category - rcT2 (recurrence - clinical assessment)

Instance: mii-exa-onko-tnm-t-kategorie-rcT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* modifierExtension[rPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#r "r"
* code = http://snomed.info/sct#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#T2 "T2"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352993004 "Union for International Cancer Control cT2 (qualifier value)"

// N Category - rcN1 (recurrence - clinical assessment)

Instance: mii-exa-onko-tnm-n-kategorie-rcN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* modifierExtension[rPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#r "r"
* code = http://snomed.info/sct#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#N1 "N1"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

// M Category - rcM1 (recurrence - NEW distant metastases detected!)

Instance: mii-exa-onko-tnm-m-kategorie-rcM1
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = https://www.uicc.org/resources/tnm#c "c"
* modifierExtension[rPraefix].valueCodeableConcept = https://www.uicc.org/resources/tnm#r "r"
* code = http://snomed.info/sct#399387003 "cM category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = https://www.uicc.org/resources/tnm#M1 "M1"
* valueCodeableConcept.coding[snomed-ct] = http://snomed.info/sct#1352513006 "Union for International Cancer Control cM1 (qualifier value)"

// ============================================
// 6. VERLAUFSBEURTEILUNGEN (oBDS 17 - Treatment Response)
// ============================================
// Three response assessments parallel to TNM time points

// 6a. Verlauf nach Chemotherapie - Teilremission (PR)
// Tumor shrunk from cT3 to ycT2 = partial response

Instance: mii-exa-onko-verlauf-journey-post-chemo
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* status = #final
* code = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)
* effectiveDateTime = "2024-05-20"
* valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung#T "Teilremission (partial remission, PR)"
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// 6b. Verlauf nach Operation - Vollremission (CR)
// ypT0ypN0 = pathological complete response, R0 resection

Instance: mii-exa-onko-verlauf-journey-post-surgery
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* status = #final
* code = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)
* effectiveDateTime = "2024-06-15"
* valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung#V "Vollremission (complete remission, CR)"
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// 6c. Verlauf bei Rezidiv - Progression (PD)
// rcT2cN1cM1 = local recurrence + new distant metastases

Instance: mii-exa-onko-verlauf-journey-recurrence
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* status = #final
* code = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)
* effectiveDateTime = "2027-06-20"
* valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung#P "Progression"
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor#R "Lokalrezidiv"
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten#R "neu aufgetretenes Lymphknotenrezidiv"
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen#R "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv"

// ============================================
// KEY INSIGHTS DEMONSTRATED:
// ============================================
// 1. Component reuse: The original cM0 from January 2024 is referenced in multiple later classifications
// 2. Biopsy does NOT make T pathological: Core needle biopsy in breast cancer doesn't enable pT sizing (Pross)
// 3. Post-therapy prefix: "y" is used for assessments during/after neoadjuvant therapy
// 4. Recurrence prefix: "r" is used for new baseline staging after disease-free interval
// 5. Post-surgical categories: L, V, Pn, R are assessed after surgical resection
// 6. Explicit c-prefix: All clinical categories should show c-prefix explicitly (cT, cN, cM)
// 7. Temporal coherence: Each category observation has its own assessment date
// 8. Flexibility: The architecture supports any combination of assessment types
// 9. Verlauf parallel to TNM: Response assessment (oBDS 17) runs parallel to TNM staging (oBDS 8)
// 10. pCR in Verlauf: "Complete pathological response" is captured as Verlauf V (CR), not as UICC stage
