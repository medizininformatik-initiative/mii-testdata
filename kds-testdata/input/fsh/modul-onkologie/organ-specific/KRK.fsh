// ============================================================================
// MII Onkologie Test Data - KRK (Kolorektales Karzinom) Organ-Specific Profiles
// ============================================================================

// KRK Operation - defined first since other resources reference it
Instance: mii-exa-test-data-onko-krk-operation-1
InstanceOf: MII_PR_Onko_KRK_Operation
Usage: #example
Description: "Onkologie Test KRK Operation - Anteriore Resektion"
* insert TestDataLabel
* status = #completed
// category is inherited from parent profile MII_PR_Onko_Operation
* code.coding[ops] = $OPS#5-484.52 "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Offen chirurgisch (konventionell)"
* code.coding[ops].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedDateTime = "2021-09-30"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"

// Abstand Tumor Anokutanlinie
Instance: mii-exa-test-data-onko-krk-abstand-anokutan-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Anokutan
Usage: #example
Description: "Onkologie Test KRK Abstand Tumor zur Anokutanlinie"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#33748-5 "Distance from anal verge"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-15"
* valueQuantity.value = 10.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

// Abstand circumferentielle Resektionsebene (CRM)
Instance: mii-exa-test-data-onko-krk-abstand-crm-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene
Usage: #example
Description: "Onkologie Test KRK Abstand circumferentielle Resektionsebene (CRM)"
* insert TestDataLabel
* status = #final
* code = $LNC#44668-2 "Circumferential margin closest distance [Length]"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 3.2
// unit/system/code are fixed by profile

// Abstand Resektionsrand aboral
Instance: mii-exa-test-data-onko-krk-abstand-aboral-1
InstanceOf: MII_PR_Onko_KRK_Abstand_Aboral
Usage: #example
Description: "Onkologie Test KRK Abstand Resektionsrand aboral"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#81175-2 "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 45
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm

// Abstand zur mesorektalen Faszie (MRT/CT)
Instance: mii-exa-test-data-onko-krk-abstand-mesorektal-1
InstanceOf: MII_PR_Onko_KRK_MRT_Mesorektale_Faszie
Usage: #example
Description: "Onkologie Test KRK MRT Abstand zur mesorektalen Faszie"
* insert TestDataLabel
* status = #final
* code.coding = $RADLEX#RDE96 "Distance to MRF"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-20"
* valueQuantity.value = 8
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm

// Anastomoseninsuffizienz
Instance: mii-exa-test-data-onko-krk-anastomoseninsuffizienz-1
InstanceOf: MII_PR_Onko_KRK_Anastomoseninsuffizienz
Usage: #example
Description: "Onkologie Test KRK Anastomoseninsuffizienz - Keine"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#236091002 "Large intestine anastomotic leak (disorder)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-krk-operation-1)
* effectiveDateTime = "2021-10-15"
* valueCodeableConcept = $mii-cs-onko-krk-anastomoseninsuffizienz#N "Keine Anastomoseninsuffizienz"

// Stoma Markierung
Instance: mii-exa-test-data-onko-krk-stoma-markierung-1
InstanceOf: MII_PR_Onko_KRK_Stoma_Markierung
Usage: #example
Description: "Onkologie Test KRK Stoma Markierung"
* insert TestDataLabel
* status = #completed
* category.coding = $SCT#387713003 "Surgical procedure"
* code.coding = $SCT#225134005 "Marking position of planned stoma site (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* performedDateTime = "2021-09-25T10:00:00+02:00"

// KRK Specimen
Instance: mii-exa-test-data-onko-krk-specimen-1
InstanceOf: MII_PR_Onko_KRK_Specimen
Usage: #example
Description: "Onkologie Test KRK Specimen - Rektumresektat"
* insert TestDataLabel
* status = #available
* type = $SCT#119376003 "Tissue specimen from rectum"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* collection.collectedDateTime = "2021-09-30T11:00:00+02:00"
* collection.bodySite = $SCT#34402009 "Rectum structure"

