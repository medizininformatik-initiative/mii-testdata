// ============================================================================
// MII Onkologie Test Data - Staging & Status Profiles (oBDS Chapters 9-12)
// ============================================================================

// Weitere Klassifikationen (Chapter 9)
Instance: mii-exa-test-data-onko-figo-1
InstanceOf: MII_PR_Onko_Weitere_Klassifikationen
Usage: #example
Description: "Onkologie Test Weitere Klassifikationen - FIGO IVB"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#254386003 "Federation Internationale de gynecologie et d'obstetrique staging of ovarian malignancy"
* code.text = "FIGO Klassifikation für ovariale Tumore"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* method.coding = $SCT#254386003 "Federation Internationale de gynecologie et d'obstetrique staging of ovarian malignancy"
* valueCodeableConcept.text = "IVB"

// Residualstatus (Chapter 10)
Instance: mii-exa-test-data-onko-residualstatus-1
InstanceOf: MII_PR_Onko_Residualstatus
Usage: #example
Description: "Onkologie Test Residualstatus - R0"
* insert TestDataLabel
* status = #final
* code.coding[loinc] = $LNC#84892-9 "Residual tumor classification [Type] in Cancer specimen"
* code.coding[snomed] = $SCT#445200009 "Status of residual neoplasm"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* partOf = Reference(mii-exa-test-data-onko-operation-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* valueCodeableConcept.coding = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

// Fernmetastasen (Chapter 11)
Instance: mii-exa-test-data-onko-fernmetastasen-1
InstanceOf: MII_PR_Onko_Fernmetastasen
Usage: #example
Description: "Onkologie Test Fernmetastasen - Leber"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#385421009 "Site of distant metastasis"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-06-22"
* valueCodeableConcept.coding = $mii-cs-onko-fernmetastasen#HEP "Leber"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// Allgemeiner Leistungszustand ECOG (Chapter 12)
Instance: mii-exa-test-data-onko-ecog-1
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG
Usage: #example
Description: "Onkologie Test ECOG - 1"
* insert TestDataLabel
* status = #final
* code.coding[snomed] = $SCT#423740007 "ECOG performance status"
* code.coding[loinc] = $LNC#89262-0 "Physical performance [ECOG]"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-ecog#1 "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
* valueCodeableConcept.coding[loinc] = $LNC#LA9623-5 "Restricted in physically strenuous activity"

// Allgemeiner Leistungszustand Karnofsky (Chapter 12)
Instance: mii-exa-test-data-onko-karnofsky-1
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
Usage: #example
Description: "Onkologie Test Karnofsky - 80%"
* insert TestDataLabel
* status = #final
* code.coding[snomed] = $SCT#761869008 "KPS (Karnofsky Performance Status) score"
* code.coding[loinc] = $LNC#89243-0 "Karnofsky Performance Status score"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-karnofsky#80% "80%"
* valueCodeableConcept.coding[loinc] = $LNC#LA29177-5 "Normal activity with effort"

// ASA Klassifikation (Chapter 12)
Instance: mii-exa-test-data-onko-asa-1
InstanceOf: MII_PR_Onko_ASA_Klassifikation
Usage: #example
Description: "Onkologie Test ASA - II"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#97816-3 "American society of anesthesiologists morbidity state"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-09-29"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* valueCodeableConcept = $mii-cs-onko-asa#2 "ASA II"
