// ============================================================================
// MII Onkologie Test Data - Diagnosis Profiles (oBDS Chapter 5)
// ============================================================================

// Primary Tumor Diagnosis
Instance: mii-exa-test-data-onko-diagnose-1
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Description: "Onkologie Test Diagnose - Ovarialkarzinom"
* insert TestDataLabel
* extension[Feststellungsdatum].valueDateTime = "2021-06-10"
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung] = $mii-cs-onko-primaertumor-diagnosesicherung#7 "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM|2021#C56 "Bösartige Neubildung des Ovars"
* code.coding[icd10-gm].version = "2021"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* recordedDate = "2021-06-15"
* bodySite.coding[primaertumorSeitenlokalisation] = $mii-cs-onko-seitenlokalisation#L "Links"
* bodySite.coding[icd-o-3] = $ICDO3#C56.9 "Ovar"
* extension[occurredFollowing].valueReference = Reference(mii-exa-test-data-onko-fruehere-tumorerkrankung-1)

// Previous Tumor Disease
Instance: mii-exa-test-data-onko-fruehere-tumorerkrankung-1
InstanceOf: MII_PR_Onko_Fruehere_Tumorerkrankung
Usage: #example
Description: "Onkologie Test - Frühere Tumorerkrankung"
* insert TestDataLabel
* extension[assertedDate].valueDateTime = "2015-03-01"
* clinicalStatus = $condition-clinical#remission
* verificationStatus = $condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM|2015#C50.4 "Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].version = "2015"
* code.text = "Mammakarzinom 2015, in Remission"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* recordedDate = "2015-03-15"
* bodySite.coding[icd-o-3] = $ICDO3#C50.4 "Oberer äußerer Quadrant der Brustdrüse"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#8500/3 "Invasives Karzinom, NOS"
* note.text = "Zustand nach brusterhaltender OP und adjuvanter Therapie 2015"

// Evidence List for Initial Diagnosis
Instance: mii-exa-test-data-onko-liste-evidenz-1
InstanceOf: MII_PR_Onko_Liste_Evidenz_Erstdiagnose
Usage: #example
Description: "Onkologie Test - Liste Evidenz Erstdiagnose"
* insert TestDataLabel
* status = #current
* mode = #snapshot
* title = "Liste der Evidenz zum Erstdiagnosezeitpunkt"
* subject = Reference(mii-exa-test-data-onko-patient-1)
* encounter = Reference(mii-exa-test-data-onko-encounter-1)
* entry[0].flag = $SCT#168461002 "Imaging report"
* entry[0].item = Reference(mii-exa-test-data-onko-befund-1)
