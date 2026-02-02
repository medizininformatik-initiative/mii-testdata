// ============================================================================
// MII Onkologie Test Data - Outcome & Special Profiles (oBDS Chapters 15, 17, 20, 23, 24)
// ============================================================================

// Verlauf (Disease Progression - Chapter 17)
Instance: mii-exa-test-data-onko-verlauf-1
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Description: "Onkologie Test Verlauf - Vollremission nach Therapie"
* insert TestDataLabel
* status = #final
* identifier.value = "VERLAUF-001"
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2022-06-15"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#V "Vollremission (complete remission, CR)"
* hasMember = Reference(mii-exa-test-data-onko-fernmetastasen-1)
* component[Tumor_Verlauf].code.coding = $SCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// Second Verlauf - demonstrates progression
Instance: mii-exa-test-data-onko-verlauf-2
InstanceOf: MII_PR_Onko_Verlauf
Usage: #example
Description: "Onkologie Test Verlauf - Teilremission mit Lymphknotenprogress"
* insert TestDataLabel
* status = #final
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2023-01-20"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#T "Teilremission (partial remission, PR)"
* component[Tumor_Verlauf].code.coding = $SCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#P "bekannter Lymphknotenbefall Progress"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"

// Nebenwirkung - AdverseEvent (Chapter 15)
Instance: mii-exa-test-data-onko-nebenwirkung-1
InstanceOf: MII_PR_Onko_Nebenwirkung_Adverse_Event
Usage: #example
Description: "Onkologie Test Nebenwirkung - Fatigue nach Chemotherapie"
* insert TestDataLabel
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10016256
* event.coding[meddra].display = "Fatigue"
* event.coding[meddra].version = "Version 27.0"
* event.text = "Fatigue nach Chemotherapie"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* date = "2021-08-15"
* seriousness = $mii-cs-onko-nebenwirkung-ctcae-grad#2 "Mäßig; minimale, lokale oder nichtinvasive Intervention indiziert; altersgemäße instrumentelle Aktivitäten des täglichen Lebens (ADL) eingeschränkt"
* seriousness.text = "CTCAE Grad 2 - Mäßig"
* suspectEntity.instance = Reference(mii-exa-test-data-onko-systemische-therapie-1)

// Nebenwirkung - severe grade
Instance: mii-exa-test-data-onko-nebenwirkung-2
InstanceOf: MII_PR_Onko_Nebenwirkung_Adverse_Event
Usage: #example
Description: "Onkologie Test Nebenwirkung - Polyneuropathie nach Strahlentherapie"
* insert TestDataLabel
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10032759
* event.coding[meddra].display = "Polyneuropathy"
* event.coding[meddra].version = "Version 27.0"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* date = "2022-04-01"
* seriousness = $mii-cs-onko-nebenwirkung-ctcae-grad#3 "Schwer oder medizinisch bedeutsam, jedoch nicht unmittelbar lebensbedrohlich"
* suspectEntity.instance = Reference(mii-exa-test-data-onko-strahlentherapie-1)

// Tod (Death - Chapter 20) - Death due to tumor
Instance: mii-exa-test-data-onko-tod-1
InstanceOf: MII_PR_Onko_Tod
Usage: #example
Description: "Onkologie Test Tod - Verstorben an Tumorerkrankung"
* insert TestDataLabel
* status = #final
* code = $SCT#184305005 "Cause of death"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2024-05-15"
* interpretation = $mii-cs-onko-tod#J "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* valueCodeableConcept = $ICD10GM|2024#C56 "Bösartige Neubildung des Ovars"

// Alternative Tod - Unknown cause
Instance: mii-exa-test-data-onko-tod-2
InstanceOf: MII_PR_Onko_Tod
Usage: #example
Description: "Onkologie Test Tod - Todesursache unbekannt"
* insert TestDataLabel
* status = #final
* code = $SCT#184305005 "Cause of death"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectiveDateTime = "2024-06-01"
* interpretation = $mii-cs-onko-tod#U "unbekannt"

// Genetische Variante (Chapter 23)
Instance: mii-exa-test-data-onko-genetische-variante-1
InstanceOf: MII_PR_Onko_Genetische_Variante
Usage: #example
Description: "Onkologie Test Genetische Variante - BRCA1 Mutation"
* insert TestDataLabel
* status = #final
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* effectiveDateTime = "2021-06-15"
* valueCodeableConcept.coding = $LNC#LA9633-4 "Present"
* note.text = "BRCA1 pathogene Variante nachgewiesen"
* interpretation = $mii-cs-onko-genetische-variante-auspraegung#M "Mutation/Veränderung nachgewiesen"

// Genetische Variante - Wildtype
Instance: mii-exa-test-data-onko-genetische-variante-2
InstanceOf: MII_PR_Onko_Genetische_Variante
Usage: #example
Description: "Onkologie Test Genetische Variante - KRAS Wildtyp"
* insert TestDataLabel
* status = #final
* subject = Reference(mii-exa-test-data-onko-patient-1)
* effectiveDateTime = "2021-06-15"
* note.text = "KRAS Wildtyp (keine Mutation nachweisbar)"
* interpretation = $mii-cs-onko-genetische-variante-auspraegung#W "Wildtyp"

// Studienteilnahme (Chapter 24)
Instance: mii-exa-test-data-onko-studienteilnahme-1
InstanceOf: MII_PR_Onko_Studienteilnahme
Usage: #example
Description: "Onkologie Test Studienteilnahme - Patient nimmt an Studie teil"
* insert TestDataLabel
* status = #final
* code = $SCT#709491003 "Clinical trial participation (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus[primaertumor] = Reference(mii-exa-test-data-onko-diagnose-1)
* focus[studie].display = "OVAR-21 Studie"
* effectiveDateTime = "2021-07-01"
* valueCodeableConcept = $mii-cs-onko-studienteilnahme#J "Ja"

// Studienteilnahme - No participation
Instance: mii-exa-test-data-onko-studienteilnahme-2
InstanceOf: MII_PR_Onko_Studienteilnahme
Usage: #example
Description: "Onkologie Test Studienteilnahme - Keine Studienteilnahme"
* insert TestDataLabel
* status = #final
* code = $SCT#709491003 "Clinical trial participation (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-07-01"
* valueCodeableConcept = $mii-cs-onko-studienteilnahme#N "Nein"

