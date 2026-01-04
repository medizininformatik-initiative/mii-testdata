// ============================================================================
// MII Onkologie Test Data - Prostata (Prostate Cancer) Organ-Specific Profiles
// ============================================================================

// PSA bei Diagnose
Instance: mii-exa-test-data-onko-prostata-psa-1
InstanceOf: MII_PR_Onko_Prostata_PSA
Usage: #example
Description: "Onkologie Test Prostata PSA bei Diagnose"
* insert TestDataLabel
* status = #final
* code = $LNC#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-01"
* valueQuantity.value = 12.5
// unit/system/code are fixed by profile (ng/ml, UCUM, ng/mL)

// Anzahl Stanzen
Instance: mii-exa-test-data-onko-prostata-anzahl-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Stanzen
Usage: #example
Description: "Onkologie Test Prostata Anzahl Stanzen"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#44652-6 "Total number of cores in Tissue core"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* valueInteger = 12

// Anzahl positiver Stanzen
Instance: mii-exa-test-data-onko-prostata-positive-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen
Usage: #example
Description: "Onkologie Test Prostata Anzahl Positiver Stanzen"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* valueInteger = 4

// Anteil Ca-Befall stärkstbefallene Stanze
Instance: mii-exa-test-data-onko-prostata-ca-befall-1
InstanceOf: MII_PR_Onko_Prostata_CA_Befall_Stanze
Usage: #example
Description: "Onkologie Test Prostata Ca-Befall stärkstbefallene Stanze"
* insert TestDataLabel
* status = #final
* code.coding = $LNC#44654-2 "Tissue involved by tumor in Prostate tumor"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* valueQuantity.value = 65
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%

// Gleason Primary Pattern
Instance: mii-exa-test-data-onko-prostata-gleason-primary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
Description: "Onkologie Test Prostata Gleason Primary Pattern (3)"
* insert TestDataLabel
* status = #final
* code = $SCT#384994009 "Primary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* valueCodeableConcept = $SCT#369772003 "Gleason Pattern 3"

// Gleason Secondary Pattern
Instance: mii-exa-test-data-onko-prostata-gleason-secondary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
Description: "Onkologie Test Prostata Gleason Secondary Pattern (4)"
* insert TestDataLabel
* status = #final
* code = $SCT#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* valueCodeableConcept = $SCT#369773008 "Gleason Pattern 4"

// Gleason Grade Group
Instance: mii-exa-test-data-onko-prostata-gleason-grade-group-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Grade_Group
Usage: #example
Description: "Onkologie Test Prostata Gleason Grade Group 2 (3+4=7)"
* insert TestDataLabel
* status = #final
* code = $SCT#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus = Reference(mii-exa-test-data-onko-diagnose-1)
* effectiveDateTime = "2021-06-10"
* derivedFrom[+] = Reference(mii-exa-test-data-onko-prostata-gleason-primary-1)
* derivedFrom[+] = Reference(mii-exa-test-data-onko-prostata-gleason-secondary-1)
* valueCodeableConcept = $SCT#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"

// Prostata OP (using correct profile name: MII_PR_Onko_Prostata_Operation)
Instance: mii-exa-test-data-onko-prostata-surgery-1
InstanceOf: MII_PR_Onko_Prostata_Operation
Usage: #example
Description: "Onkologie Test Prostata OP - Radikale Prostatektomie"
* insert TestDataLabel
* status = #completed
// category is inherited from parent profile MII_PR_Onko_Operation
* code.coding[ops] = $OPS#5-604.00 "Radikale Prostatovesikulektomie: Retropubisch: Mit Lymphadenektomie"
* code.coding[ops].version = "2021"
* code.coding[sct] = $SCT#176258007 "Open prostatectomy (procedure)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* performedDateTime = "2021-07-15"
* reasonReference = Reference(mii-exa-test-data-onko-diagnose-1)
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"

// Prostata OP Komplikation - Clavien-Dindo (replaces separate Inkontinenz/ED profiles)
Instance: mii-exa-test-data-onko-prostata-komplikation-1
InstanceOf: MII_PR_Onko_Prostata_Clavien_Dindo
Usage: #example
Description: "Onkologie Test Prostata OP Komplikation - Clavien-Dindo IIIa"
* insert TestDataLabel
* status = #final
* code.coding = $SCT#789279006 "Clavien-Dindo classification grade (observable entity)"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* focus[Diagnose] = Reference(mii-exa-test-data-onko-diagnose-1)
* focus[Operation] = Reference(mii-exa-test-data-onko-prostata-surgery-1)
* effectiveDateTime = "2021-10-15"
* valueCodeableConcept.coding[ClavienDindo] = $SCT#1367522003 "Clavien-Dindo classification grade IIIa (finding)"
* valueCodeableConcept.coding[OBDSPostOPKompl] = $mii-cs-onko-prostata-postsurgical-complications#J "Ja"

