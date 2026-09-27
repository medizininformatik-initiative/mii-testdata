// Verdachtsdiagnose Prostatakarzinom vor Biopsie
Instance: mii-exa-test-data-patho-diagnose-verdacht-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "Verdachtsdiagnose Prostatakarzinom vor Biopsie"
Description: "Verdacht auf Prostatakarzinom basierend auf erhöhtem PSA und auffälligem MRT-Befund"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[Feststellungsdatum].valueDateTime = "2024-01-10"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category[onkologie] = $sct#55342001 "Neoplastic disease"
* category[+] = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2025"
* code.coding[icd10-gm].code = #C61
* code.coding[icd10-gm].display = "Bösartige Neubildung der Prostata"
* code.coding[sct] = $sct#126906006 "Neoplasm of prostate (disorder)"
* code.coding[+] = http://id.who.int/icd/release/10#C61 "Malignant neoplasm of prostate"
* code.coding[+] = http://id.who.int/icd/release/11/mms#2C82 "Malignant neoplasms of prostate"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* encounter = Reference(mii-exa-test-data-patho-encounter-1)
* onsetDateTime = "2024-01-10"
* recordedDate = "2024-01-10"
* note.text = "V.a. Prostatakarzinom bei PSA 12,8 ng/ml und PI-RADS 4 Läsion im mpMRT. Biopsie zur Diagnosesicherung indiziert."

// Gesicherte Diagnose Prostatakarzinom nach Biopsie
Instance: mii-exa-test-data-patho-diagnose-gesichert-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "Gesicherte Prostatakarzinom-Diagnose nach Biopsie"
Description: "Gesicherte Diagnose eines Prostatakarzinoms nach 2-Stanzen-Biopsie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* extension[Feststellungsdatum].valueDateTime = "2024-01-17"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category[onkologie] = $sct#55342001 "Neoplastic disease"
* category[+] = $condition-category#encounter-diagnosis
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2026"
* code.coding[icd10-gm].code = #C61
* code.coding[icd10-gm].display = "Bösartige Neubildung der Prostata"
* code.coding[sct] = $sct#126906006 "Neoplasm of prostate (disorder)"
* code.coding[+] = http://id.who.int/icd/release/10#C61 "Malignant neoplasm of prostate"
* code.coding[+] = http://id.who.int/icd/release/11/mms#2C82 "Malignant neoplasms of prostate"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* encounter = Reference(mii-exa-test-data-patho-encounter-1)
* onsetDateTime = "2024-01-17"
* recordedDate = "2024-01-17"
* stage.summary = $sct#1222766008 "IIA (AJCC)"
* stage.type = $sct#260998006 "Clinical staging (qualifier value)"
* note.text = "Prostatakarzinom mit ISUP Grade Group 2 (Gleason 3+4=7), nachgewiesen in 1 von 2 Stanzen (rechts lateral basal). Klinisches Stadium cT2a cN0 cM0. Intermediäres Risiko nach D'Amico."
