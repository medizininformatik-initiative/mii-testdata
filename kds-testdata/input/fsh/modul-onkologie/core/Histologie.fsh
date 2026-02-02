// ============================================================================
// MII Onkologie Test Data - Histology Profiles (oBDS Chapter 6)
// ============================================================================

// Specimen
Instance: mii-exa-test-data-onko-specimen-1
InstanceOf: MII_PR_Onko_Specimen
Usage: #example
Description: "Onkologie Test Specimen - Tumorresektat"
* insert TestDataLabel
* identifier.value = "ONKO-SPECIMEN-001"
* accessionIdentifier.system = "https://www.charite.de/fhir/sid/accession"
* accessionIdentifier.value = "PATH-2021-12345"
* status = #available
* type = $SCT#119376003 "Tissue specimen"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* collection.collectedDateTime = "2021-09-30"

// Pathology Report (Befund)
Instance: mii-exa-test-data-onko-befund-1
InstanceOf: MII_PR_Onko_Befund
Usage: #example
Description: "Onkologie Test Befund - Pathologiebericht"
* insert TestDataLabel
* status = #final
* code.coding[pathology-report] = $LNC#22034-3 "Pathology report Cancer Narrative"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* specimen = Reference(mii-exa-test-data-onko-specimen-1)
* basedOn = Reference(mii-exa-test-data-onko-tumorkonferenz-1)
* conclusion = "High-grade seröses Adenokarzinom des Ovars, pT3c pN1 M1b (HEP), L1 V0 Pn0, R0"

// Grading
Instance: mii-exa-test-data-onko-grading-1
InstanceOf: MII_PR_Onko_Grading
Usage: #example
Description: "Onkologie Test Grading - G3"
* insert TestDataLabel
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#33732-9 "Histology grade [Identifier] in Cancer specimen"
* code.coding[snomed] = $SCT#371469007 "Histologic grade of neoplasm"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueCodeableConcept = $mii-cs-onko-grading#3 "G3 - schlecht differenziert"
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// Tumor Size
Instance: mii-exa-test-data-onko-tumorgroesse-1
InstanceOf: MII_PR_Onko_Tumorgroesse
Usage: #example
Description: "Onkologie Test Tumorgröße - 22mm"
* insert TestDataLabel
* status = #final
* code.coding[loinc] = $LNC#21889-1 "Size Tumor"
* code.coding[snomed] = $SCT#371479009 "Tumor size, largest dimension (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 22
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* bodySite.coding = $ICDO3#C56.9 "Ovar"
* method = $SCT#787377000 "Gross examination and target (qualifier value)"

// Histology ICD-O-3
Instance: mii-exa-test-data-onko-histologie-icdo3-1
InstanceOf: MII_PR_Onko_Histologie_ICDO3
Usage: #example
Description: "Onkologie Test Histologie ICD-O-3 - Seröses Adenokarzinom"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueCodeableConcept.coding = $ICDO3#8441/3 "Seröses Adenokarzinom"
* valueCodeableConcept.text = "Seröses Adenokarzinom"
* bodySite.coding[Seitenlokalisation] = $mii-cs-onko-seitenlokalisation#L "Links"
* bodySite.coding[icd-o-3] = $ICDO3#C56.9 "Ovar"
* specimen = Reference(mii-exa-test-data-onko-specimen-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

// Lymph Node Counts
Instance: mii-exa-test-data-onko-anzahl-untersuchte-lymphknoten-1
InstanceOf: MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
Usage: #example
Description: "Onkologie Test - Anzahl untersuchte Lymphknoten"
* insert TestDataLabel
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#21894-1 "Regional lymph nodes examined [#] Specimen"
* code.coding[snomed] = $SCT#444025001 "Number of lymph nodes examined"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 23
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

Instance: mii-exa-test-data-onko-anzahl-befallene-lymphknoten-1
InstanceOf: MII_PR_Onko_Anzahl_Befallene_Lymphknoten
Usage: #example
Description: "Onkologie Test - Anzahl befallene Lymphknoten"
* insert TestDataLabel
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#21893-3 "Regional lymph nodes positive [#] Specimen"
* code.coding[snomed] = $SCT#443527007 "Number of lymph nodes containing metastatic neoplasm"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 2
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

Instance: mii-exa-test-data-onko-anzahl-untersuchte-sentinel-lymphknoten-1
InstanceOf: MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten
Usage: #example
Description: "Onkologie Test - Anzahl untersuchte Sentinel-Lymphknoten"
* insert TestDataLabel
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* code.coding[snomed] = $SCT#444411008 "Number of sentinel lymph nodes examined"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 2
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)

Instance: mii-exa-test-data-onko-anzahl-befallene-sentinel-lymphknoten-1
InstanceOf: MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten
Usage: #example
Description: "Onkologie Test - Anzahl befallene Sentinel-Lymphknoten"
* insert TestDataLabel
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
// code.coding[snomed] is fixed by profile to $SCT#1264491009
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-10-05"
* valueQuantity.value = 1
* valueQuantity.unit = "1"
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
