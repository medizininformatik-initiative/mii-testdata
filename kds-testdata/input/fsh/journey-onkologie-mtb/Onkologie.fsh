// ============================================================================
// JOURNEY Patient-14 — Modul Onkologie
// Sigmakarzinom pT3 pN2 M1(HEP), G2, R0; Erstdiagnose 2024-03.
// ============================================================================

// ----------------------------------------------------------------------------
// Primärtumor-Diagnose
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-diagnose-1
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Description: "Onko Diagnose: Adenokarzinom des Colon sigmoideum, Erstdiagnose 2024-03 (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/onko-diagnose"
* identifier.value = "ONKO-DIAG-2024-014"
* extension[Feststellungsdatum].valueDateTime = "2024-03-06"
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung] = $mii-cs-onko-primaertumor-diagnosesicherung#7 "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM|2024#C18.7 "Bösartige Neubildung: Colon sigmoideum"
* code.coding[icd10-gm].version = "2024"
* code.coding[icd10-gm].extension[Diagnosesicherheit].valueCoding = $diagnosesicherheit#G "gesicherte Diagnose"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* recordedDate = "2024-03-06"
* bodySite.coding[icd-o-3] = $ICDO3#C18.7 "Colon sigmoideum"
* bodySite.coding[snomed-ct] = $SCT#60184004 "Sigmoid colon structure (body structure)"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#8140/3 "Adenokarzinom o.n.A."
* extension[morphology-behavior-icdo3].valueCodeableConcept.text = "Mäßig differenziertes Adenokarzinom"

// ----------------------------------------------------------------------------
// Histologie und Pathologiebefund
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-specimen-1
InstanceOf: MII_PR_Onko_Specimen
Usage: #example
Description: "Onko Specimen: Sigmaresektat (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.value = "ONKO-SPEC-014-1"
* accessionIdentifier.system = "https://www.charite.de/fhir/sid/accession"
* accessionIdentifier.value = "PATH-2024-08417"
* status = #available
* type = $SCT#122651006 "Specimen from colon obtained by sigmoidectomy"
* subject = Reference(mii-exa-test-data-patient-14)
* collection.collectedDateTime = "2024-03-12"

Instance: mii-exa-test-data-patient-14-onko-befund-1
InstanceOf: MII_PR_Onko_Befund
Usage: #example
Description: "Onko Befund: Pathologiebericht Sigmaresektat (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding[pathology-report] = $LNC#22034-3 "Pathology report Cancer Narrative"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* conclusion = "Maessig differenziertes Adenokarzinom des Colon sigmoideum (ICD-O-3 8140/3), G2, pT3 pN2 (7/21) M1 (HEP), L1 V0 Pn0, R0. Immunhistochemisch MLH1/PMS2-Verlust — Hinweis auf Mismatch-Repair-Defizienz, molekulare Abklaerung empfohlen."

Instance: mii-exa-test-data-patient-14-onko-histologie-1
InstanceOf: MII_PR_Onko_Histologie_ICDO3
Usage: #example
Description: "Onko Histologie ICD-O-3: Adenokarzinom o.n.A. (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $LNC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* valueCodeableConcept.coding = $ICDO3#8140/3 "Adenokarzinom o.n.A."

Instance: mii-exa-test-data-patient-14-onko-grading-1
InstanceOf: MII_PR_Onko_Grading
Usage: #example
Description: "Onko Grading: G2 (mäßig differenziert, Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* valueCodeableConcept.coding = $mii-cs-onko-grading#2 "mäßig differenziert"

// ----------------------------------------------------------------------------
// TNM
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-tnm-t
InstanceOf: MII_PR_Onko_TNM_T_Kategorie
Usage: #example
Description: "Onko TNM: pT3 (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#384625004 "pT category"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#T3
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)

Instance: mii-exa-test-data-patient-14-onko-tnm-n
InstanceOf: MII_PR_Onko_TNM_N_Kategorie
Usage: #example
Description: "Onko TNM: pN2 (7 von 21 Lymphknoten befallen, Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#371494008 "pN category (observable entity)"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#N2
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* hasMember[0] = Reference(mii-exa-test-data-patient-14-onko-lk-befallen)
* hasMember[1] = Reference(mii-exa-test-data-patient-14-onko-lk-untersucht)

Instance: mii-exa-test-data-patient-14-onko-tnm-m
InstanceOf: MII_PR_Onko_TNM_M_Kategorie
Usage: #example
Description: "Onko TNM: pM1 (Lebermetastasen, Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.extension[cpPraefix].valueCodeableConcept = $UICC#p "p"
* code.coding = $SCT#371497001 "pM category"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#M1
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)

Instance: mii-exa-test-data-patient-14-onko-lk-untersucht
InstanceOf: MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
Usage: #example
Description: "Onko: 21 untersuchte Lymphknoten (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#21894-1 "Regional lymph nodes examined [#] Specimen"
* code.coding[snomed] = $SCT#444025001 "Number of lymph nodes examined"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* valueQuantity.value = 21
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)

Instance: mii-exa-test-data-patient-14-onko-lk-befallen
InstanceOf: MII_PR_Onko_Anzahl_Befallene_Lymphknoten
Usage: #example
Description: "Onko: 7 befallene Lymphknoten (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#21893-3 "Regional lymph nodes positive [#] Specimen"
* code.coding[snomed] = $SCT#443527007 "Number of lymph nodes containing metastatic neoplasm"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-20"
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* valueQuantity.value = 7
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)

// ----------------------------------------------------------------------------
// Fernmetastasen und Leistungszustand
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-fernmetastasen-1
InstanceOf: MII_PR_Onko_Fernmetastasen
Usage: #example
Description: "Onko Fernmetastasen: Lebermetastasen (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $SCT#385421009 "Site of distant metastasis"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* effectiveDateTime = "2024-03-08"
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* valueCodeableConcept.coding = $mii-cs-onko-fernmetastasen#HEP "Leber"
* bodySite = $SCT#10200004 "Liver structure (body structure)"

Instance: mii-exa-test-data-patient-14-onko-ecog-1
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG
Usage: #example
Description: "Onko ECOG: 1 (Patient 14, vor Therapiebeginn)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding[snomed] = $SCT#423740007 "ECOG performance status"
* code.coding[loinc] = $LNC#89262-0 "Physical performance [ECOG]"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* effectiveDateTime = "2024-04-25"
* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-ecog#1 "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
* valueCodeableConcept.coding[loinc] = $LNC#LA9623-5 "Restricted in physically strenuous activity"
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)

// ----------------------------------------------------------------------------
// Tumorkonferenz — hier verzweigt die Journey in das Molekulare Tumorboard
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-tumorkonferenz-1
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example
Description: "Onko Tumorkonferenz: prätherapeutisch, Beschluss Molekulardiagnostik (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.value = "TK-2024-014"
* status = #completed
* intent = #plan
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-1)
* category = $mii-cs-onko-therapieplanung-typ#praeth "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* created = "2024-03-26"
* addresses = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* supportingInfo = Reference(mii-exa-test-data-patient-14-onko-befund-1)
* activity[obds][+].detail.code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds][=].detail.status = #cancelled
* activity[obds][=].detail.statusReason = $mii-cs-onko-therapieabweichung#J "ja"
* activity[obds][=].detail.description = "Standard-Erstlinienchemotherapie zurueckgestellt; wegen MLH1/PMS2-Verlust zunaechst Molekulardiagnostik und Vorstellung im Molekularen Tumorboard."

// ----------------------------------------------------------------------------
// Systemische Therapie — die Umsetzung des MTB-Beschlusses
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-systemtherapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "Onko Systemische Therapie: Pembrolizumab-Immuntherapie (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #in-progress
* category = $SCT#18629005 "Administration of drug or medicament"
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#IM "Immun-/Antikörpertherapie"
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2024"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* performedPeriod.start = "2024-05-02"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#P "palliativ"
* extension[Intention].valueCodeableConcept.text = "palliativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "adjuvant"
* extension[StellungZurOp].valueCodeableConcept.text = "adjuvant"
* extension[Dokumentationsdatum].valueDateTime = "2024-05-02"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* reasonReference = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
// Die Therapie ist die Umsetzung des MTB-Beschlusses, nicht der
// prätherapeutischen Tumorkonferenz.
* basedOn = Reference(mii-exa-test-data-patient-14-mtb-therapieplan-1)
* bodySite.coding[snomed-ct] = $SCT#60184004 "Sigmoid colon structure (body structure)"

// ----------------------------------------------------------------------------
// Verlauf — das Ansprechen auf die molekular begründete Therapie
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-onko-verlauf-1
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Description: "Onko Verlauf: Teilremission nach drei Monaten Immuntherapie (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* identifier.value = "VERLAUF-014-1"
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* effectiveDateTime = "2024-08-14"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#T "Teilremission (partial remission, PR)"
* component[Tumor_Verlauf].code.coding = $SCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
// #R bedeutet "neu aufgetretene Fernmetastase(n)" — fuer eine Teilremission mit
// schrumpfenden Lebermetastasen ist #T "Fernmetastasen Residuen" korrekt.
* component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#T "Fernmetastasen Residuen"
* note.text = "Lebermetastasen im Re-Staging-CT um 48 Prozent regredient (RECIST 1.1: partielle Remission). Ansprechen unter Checkpoint-Inhibition bei MSI-high wie erwartet."
