// ============================================================================
// MII Onkologie Test Data - KRK (Kolorektales Karzinom) Organ-Specific Profiles
// ============================================================================

// KRK Operation - defined first since other resources reference it
Instance: mii-exa-test-data-onko-krk-operation-1
InstanceOf: MII_PR_Onko_KRK_Operation
Usage: #example
Description: "Onkologie Test KRK Operation - Anteriore Resektion"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-484.52 "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Offen chirurgisch mit Enterostoma und Blindverschluss"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedDateTime = "2021-09-30"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
// TODO: SNOMED 76164006 display per validator is "Biopsy of colon", not "Stapling device (physical object)".
// The code 76164006 may be incorrect if the intent is to reference a surgical stapling device. Review and replace with correct SNOMED code.
* usedCode.coding = $SCT#76164006 "Biopsy of colon"
* basedOn[tumorkonferenz] = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* bodySite.coding[snomed-ct] = $SCT#34402009 "Rectum structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "Nein"
* complication[compl_icd10].coding = $ICD10GM|2021#T81.0 "Blutung und Hämatom als Komplikation eines Eingriffes, anderenorts nicht klassifiziert"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2021-10-01"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* extension[Intention].valueCodeableConcept.text = "kurativ"
* extension[Urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
* extension[Urgency].valueCodeableConcept.text = "Elektiveingriff"
* note.text = "Tiefe anteriore Rektumresektion mit protektivem Enterostoma."
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* partOf = Reference(mii-exa-test-data-onko-systemische-therapie-1)

// Abstand Tumor Anokutanlinie
Instance: mii-exa-test-data-onko-krk-abstand-anokutan-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Anokutan
Usage: #example
Description: "Onkologie Test KRK Abstand Tumor zur Anokutanlinie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $LNC#33748-5 "Distance from anal verge"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-15"
* valueQuantity.value = 10.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Abstand circumferentielle Resektionsebene (CRM)
Instance: mii-exa-test-data-onko-krk-abstand-crm-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene
Usage: #example
Description: "Onkologie Test KRK Abstand circumferentielle Resektionsebene (CRM)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
// TODO: LOINC 44668-2 display per validator is about M stage/CAP cancer protocols, not CRM distance.
// The code 44668-2 may be incorrect for circumferential resection margin closest distance. Review and replace with correct LOINC code.
* code = $LNC#44668-2 "Deprecated M stage of distant metastasis Qualitative by CAP cancer protocols"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 3.2
// unit/system/code are fixed by profile
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Abstand Resektionsrand aboral
Instance: mii-exa-test-data-onko-krk-abstand-aboral-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Aboral
Usage: #example
Description: "Onkologie Test KRK Abstand Resektionsrand aboral"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $LNC#81175-2 "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 45
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Abstand zur mesorektalen Faszie (MRT/CT)
Instance: mii-exa-test-data-onko-krk-abstand-mesorektal-1
InstanceOf: MII_PR_Onko_KRK_MRT_Mesorektale_Faszie
Usage: #example
Description: "Onkologie Test KRK MRT Abstand zur mesorektalen Faszie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $RADELEMENT#RDE96 "Distance to MRF"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueQuantity.value = 8
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Anastomoseninsuffizienz
Instance: mii-exa-test-data-onko-krk-anastomoseninsuffizienz-1
InstanceOf: MII_PR_Onko_KRK_Anastomoseninsuffizienz
Usage: #example
Description: "Onkologie Test KRK Anastomoseninsuffizienz - Keine"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* code.coding = $SCT#236091002 "Large intestine anastomotic leak (disorder)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-krk-operation-1)
* effectiveDateTime = "2021-10-15"
* valueCodeableConcept = $mii-cs-onko-krk-anastomoseninsuffizienz#K "Keine Insuffizienz oder höchstens Grad A"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)

// Stoma Markierung
Instance: mii-exa-test-data-onko-krk-stoma-markierung-1
InstanceOf: MII_PR_Onko_KRK_Stoma_Markierung
Usage: #example
Description: "Onkologie Test KRK Stoma Markierung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category.coding = $SCT#387713003 "Surgical procedure"
* code.coding = $SCT#225134005 "Marking position of planned stoma site (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-09-25T10:00:00+02:00"
* statusReason = $SCT#397943006 "Planned (qualifier value)"
* bodySite.coding[snomed-ct] = $SCT#699600004 "Structure of left lower quadrant of abdomen (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20240201"
* code.coding[ops] = $OPS#5-460 "Anlegen eines Enterostomas, doppelläufig, als selbständiger Eingriff"
* code.coding[ops].version = "2021"
* code.coding[ops].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#T "trifft nicht zu"
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* extension[Dokumentationsdatum].valueDateTime = "2021-09-25"
* extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000 "Therapeutic"
* note.text = "Stomaposition praeoperativ markiert."

// KRK Specimen
Instance: mii-exa-test-data-onko-krk-specimen-1
InstanceOf: MII_PR_Onko_KRK_Specimen
Usage: #example
Description: "Onkologie Test KRK Specimen - Rektumresektat"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #available
* type = $SCT#119376003 "Tissue specimen"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* collection.collectedDateTime = "2021-09-30T11:00:00+02:00"
* collection.bodySite = $SCT#34402009 "Rectum structure"
* condition = $SCT#17621005 "Normal (qualifier value)"
* accessionIdentifier.system = "https://www.charite.de/fhir/sid/patho/befundbericht"
* accessionIdentifier.value = "E_21_04711"

