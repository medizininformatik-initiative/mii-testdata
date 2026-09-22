Instance: mii-exa-seltene-patient-sma-001
InstanceOf: Patient
Usage: #example
Title: "SMA Patient - Neugeborenes Mädchen"
Description: "Neugeborenes Mädchen mit bestätigter SMA Typ 1"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/patient-id"
* identifier.value = "SMA-2024-001"
* gender = #female
* birthDate = "2024-07-01"  // Approximated - born in early July 2024

// SMA Diagnosis - Suspected (from Newborn Screening)

Instance: mii-exa-seltene-condition-sma-suspected
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "SMA Verdacht - Neugeborenenscreening"
Description: "Verdacht auf SMA beim Neugeborenenscreening"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.text = "Verdacht auf Spinale Muskelatrophie"
* code.coding[sct] = http://snomed.info/sct#64383006 "Werdnig-Hoffmann disease"
* code.coding[hpo] = http://human-phenotype-ontology.org#HP:0007373 "Motor neuron atrophy"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-07-18"
* recordedDate = "2024-07-18"
* encounter = Reference(mii-exa-seltene-encounter-screening-001)
* evidence[+].code.text = "Positives Neugeborenenscreening"
* evidence[=].detail = Reference(mii-exa-seltene-observation-sma-screening)
* note.text = "Verdacht beim Neugeborenenscreening gestellt - SMN1 Exon 7 nicht nachweisbar"

// SMA Diagnosis - Clinical (Confirmed after initial assessment)

Instance: mii-exa-seltene-condition-sma-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "SMA Klinische Diagnose"
Description: "Klinische Diagnose SMA Typ 1 bei Erstvorstellung"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G12.0 "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#83330 "Proximal spinal muscular atrophy type 1"
* code.coding[sct] = http://snomed.info/sct#64383006 "Werdnig-Hoffmann disease"
* code.coding[hpo] = http://human-phenotype-ontology.org#HP:0007373 "Motor neuron atrophy"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-07-22"
* recordedDate = "2024-07-22"
* encounter = Reference(mii-exa-seltene-encounter-ambulant-001)
* onsetDateTime = "2024-07-01"  // Birth/neonatal onset
* evidence[+].code.text = "Klinische Präsentation"
* evidence[=].detail = Reference(mii-exa-seltene-observation-troponin-001)
* note.text = "Klinische Diagnose basierend auf typischer Präsentation: Neonatale Hypotonie, fehlende Muskeleigenreflexe, erhöhtes Troponin"

// SMA Diagnosis - Genetic (Parallel diagnosis)

Instance: mii-exa-seltene-condition-sma-genetic
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "SMA Genetische Diagnose"
Description: "SMA Typ 1, molekulargenetisch bestätigt durch SMN1-Deletion"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G12.0 "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#83330 "Proximal spinal muscular atrophy type 1"
* code.coding[sct] = http://snomed.info/sct#64383006 "Werdnig-Hoffmann disease"
* code.coding[+] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-07-26"  // Date of molecular confirmation
* recordedDate = "2024-07-26"
* onsetDateTime = "2024-07-01"  // Birth/neonatal onset
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail[+] = Reference(Observation/mii-exa-seltene-variant-smn1-001)
* evidence[=].detail[+] = Reference(Observation/mii-exa-seltene-variant-smn2-001)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-diagnostic-implication-sma)
* note.text = "0 Kopien des SMN1-Gens, 2 Kopien des SMN2-Gens - krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."

// Family History - Great-grandmother with unknown muscle disease

Instance: mii-exa-seltene-family-history-001
InstanceOf: MII_PR_Seltene_Familienanamnese
Usage: #example
Title: "Familienanamnese - Urgroßmutter mit Muskelerkrankung"
Description: "Urgroßmutter mit unbekannter Muskelerkrankung"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese)
* status = #completed
* patient = Reference(mii-exa-seltene-patient-sma-001)
* date = "2024-07-22"
* relationship = http://snomed.info/sct#78652007 "Great grandmother"
* condition[+].code.coding[+] = http://snomed.info/sct#129565002 "Disorder of muscle"
* condition[=].code.text = "Unbekannte Muskelerkrankung"
* extension[vonSEBetroffen].valueCodeableConcept.coding = http://snomed.info/sct#261665006 "Unknown"

// SMA Newborn Screening Result

Instance: mii-exa-seltene-observation-sma-screening
InstanceOf: Observation
Usage: #example
Title: "SMA Neugeborenenscreening Ergebnis"
Description: "Positives SMA-Screening beim Neugeborenenscreening"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#92005-8 "Spinal muscular atrophy newborn screening panel"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-18"
* valueCodeableConcept = http://snomed.info/sct#260373001 "Detected"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* component[+].code = http://loinc.org#92004-1 "Spinal muscular atrophy newborn screen interpretation"
* component[=].valueCodeableConcept.text = "Hinweis auf SMA - SMN1 Exon 7 Deletion nachgewiesen"
* component[+].code = http://loinc.org#92002-5 "SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = "Ct"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #1
* component[=].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* note.text = "Positives SMA-Screening. Konfirmatorische Diagnostik empfohlen."

// SMN1 Gene Deletion (Variant)

Instance: mii-exa-seltene-variant-smn1-001
InstanceOf: Observation
Usage: #example
Title: "SMN1 Gen - Homozygote Deletion"
Description: "0 Kopien des SMN1-Gens nachgewiesen"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#55233-1 "Genetic analysis master panel"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#HGNC:11117 "SMN1"
* component[+].code = http://loinc.org#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept.text = "GRCh38"
* component[+].code = http://loinc.org#53034-5
 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6705-3 "Homozygous"
* component[+].code.text = "Copy Number"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = "copies"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* note.text = "Homozygote Deletion des SMN1-Gens, krankheitsursächlich für SMA"

// SMN2 Gene Copy Number

Instance: mii-exa-seltene-variant-smn2-001
InstanceOf: Observation
Usage: #example
Title: "SMN2 Gen - Kopienanzahl"
Description: "2 Kopien des SMN2-Gens nachgewiesen"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#55233-1 "Genetic analysis master panel"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-26"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#HGNC:11118 "SMN2"
* component[+].code.text = "Copy Number"
* component[=].valueQuantity.value = 2
* component[=].valueQuantity.unit = "copies"
* note.text = "2 Kopien des SMN2-Gens, Modifikator des Phänotyps"

// Gene Therapy Procedure

Instance: mii-exa-seltene-procedure-gentherapy-001
InstanceOf: Procedure
Usage: #example
Title: "Gentherapie Verabreichung"
Description: "Verabreichung des Gentherapeutikums für SMA"
* status = #completed
* category = http://snomed.info/sct#277132007 "Therapeutic procedure"
* code.coding[+] = http://fdasis.nlm.nih.gov#MLU3LU3EVV "ONASEMNOGENE ABEPARVOVEC"
* code.coding[+] = http://snomed.info/sct#788110002  "Onasemnogene abeparvovec"
* code.text = "Gentherapie mit Onasemnogene abeparvovec (Zolgensma)"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* performedDateTime = "2024-07-29"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
* note.text = "Gentherapeutikum ohne Komplikationen verabreicht, vorherige Gabe von Prednisolon"

// Laboratory Observations - ALT

Instance: mii-exa-seltene-observation-alt-001
InstanceOf: Observation
Usage: #example
Title: "ALT Labor - Post-therapeutisch"
Description: "ALT Wert nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Laboratory Observations - AST

Instance: mii-exa-seltene-observation-ast-001
InstanceOf: Observation
Usage: #example
Title: "AST Labor - Post-therapeutisch"
Description: "AST Wert nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Laboratory Observations - Platelets

Instance: mii-exa-seltene-observation-plt-001
InstanceOf: Observation
Usage: #example
Title: "Thrombozytenzahl - Post-therapeutisch"
Description: "Thrombozytenzahl nach Gentherapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#777-3 "Platelets [#/volume] in Blood by Automated count"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-29"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normwertig post-therapeutisch"

// Troponin T hs Observations - Series

Instance: mii-exa-seltene-observation-troponin-001
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 22.07.2024"
Description: "Troponin T hochsensitiv Baseline"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-22"
* valueQuantity = 92 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: mii-exa-seltene-observation-troponin-002
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 28.07.2024"
Description: "Troponin T hochsensitiv vor Therapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-07-28"
* valueQuantity = 58 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: mii-exa-seltene-observation-troponin-003
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 01.08.2024"
Description: "Troponin T hochsensitiv nach Therapie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-08-01"
* valueQuantity = 57 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

Instance: mii-exa-seltene-observation-troponin-004
InstanceOf: Observation
Usage: #example
Title: "Troponin T hs - 12.08.2024"
Description: "Troponin T hochsensitiv bei Nachsorge"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#6598-7 "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* effectiveDateTime = "2024-08-12"
* valueQuantity = 106 'ng/L' "ng/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* note.text = "Troponin T weiter erhöht, bereits prä-therapeutisch erhöht"

// Clinical Impression - Erstvorstellung

Instance: mii-exa-seltene-clinical-impression-erstvorstellung
InstanceOf: MII_PR_Seltene_ClinicalImpression
Usage: #example
Title: "Klinische Beurteilung - Erstvorstellung"
Description: "Initiale klinische Beurteilung bei Erstvorstellung im SMA-Zentrum"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression)
* status = #completed
* subject = Reference(mii-exa-seltene-patient-sma-001)
* encounter = Reference(mii-exa-seltene-encounter-ambulant-001)
* effectiveDateTime = "2024-07-22"
* date = "2024-07-22"
// * assessor = Reference(Practitioner/example) // Optional field, not required in MII
* summary = "Neugeborenes mit V.a. SMA aus Neugeborenenscreening. Familienanamnese zeigt unklare Muskelerkrankung der Urgroßmutter. Troponin T bereits erhöht (92 ng/l)."
* problem[+] = Reference(mii-exa-seltene-condition-sma-suspected)  // Reason for assessment (suspected diagnosis)
* finding[+].itemReference = Reference(mii-exa-seltene-condition-sma-clinical)  // Clinical diagnosis as finding
* finding[+].itemReference = Reference(mii-exa-seltene-condition-sma-genetic)  // Genetic diagnosis as finding
* finding[+].itemCodeableConcept = http://snomed.info/sct#1363512008 "Troponin above reference range"
* finding[=].itemReference = Reference(mii-exa-seltene-observation-troponin-001)
* investigation[+].code.text = "Familienanamnese"
* investigation[=].item = Reference(mii-exa-seltene-family-history-001)
* investigation[+].code.text = "Labordiagnostik"
* investigation[=].item = Reference(mii-exa-seltene-observation-troponin-001)
* prognosisCodeableConcept[+] = http://snomed.info/sct#67334001 "Guarded prognosis"
* note[+].text = "Klinische Untersuchung gemäß SMA-Diagnoseprotokoll. Blutentnahme für Genetik veranlasst."
* note[+].text = "Klinisches Bild vereinbar mit SMA Typ 1. Molekulargenetische Bestätigung ausstehend. Eltern über Therapieoptionen informiert."

// Clinical Impression - Nachsorge

Instance: mii-exa-seltene-clinical-impression-nachsorge
InstanceOf: MII_PR_Seltene_ClinicalImpression
Usage: #example
Title: "Klinische Beurteilung - Nachsorge"
Description: "Nachsorgeuntersuchung nach Gentherapie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression)
* status = #completed
* subject = Reference(mii-exa-seltene-patient-sma-001)
* encounter = Reference(mii-exa-seltene-encounter-nachsorge-001)
* effectiveDateTime = "2024-08-12"
* date = "2024-08-12"
// * assessor = Reference(Practitioner/example) // Optional field, not required in MII
* previous = Reference(mii-exa-seltene-clinical-impression-erstvorstellung)
* summary = "Erste Nachsorge 14 Tage nach Gentherapie. Klinisch stabil. Troponin T weiter erhöht (106 ng/l), war jedoch bereits prätherapeutisch erhöht."
* finding[+].itemCodeableConcept = http://snomed.info/sct#1363512008 "Troponin above reference range"
* finding[=].itemReference = Reference(mii-exa-seltene-observation-troponin-004)
* finding[=].basis = "Troponin-Verlauf: 22.07: 92 ng/l, 28.07: 58 ng/l, 01.08: 57 ng/l, 12.08: 106 ng/l"
* finding[+].itemCodeableConcept = http://snomed.info/sct#166645004 "Alanine aminotransferase level within reference range"
* finding[=].basis = "ALT normwertig"
* finding[+].itemCodeableConcept = http://snomed.info/sct#166667003 "Aspartate aminotransferase/serum glutamic oxaloacetic transaminase level within reference range"
* finding[=].basis = "AST normwertig"
* finding[+].itemCodeableConcept = http://snomed.info/sct#165555003 "Platelet count normal"
* finding[=].basis = "Thrombozytenzahl normwertig"
* problem[+] = Reference(Condition/mii-exa-seltene-condition-sma-clinical)
* problem[+] = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
* prognosisCodeableConcept[+] = http://snomed.info/sct#67334001 "Guarded prognosis"
* note[+].text = "Standardisierte Nachsorgeuntersuchung nach Gentherapie gemäß Zentrumsprotokoll"
* note[+].text = "Troponin-Erhöhung präexistent, nicht therapieassoziiert. Gentherapie gut vertragen. Weiterführung der Prednisolon-Therapie. Nächste Kontrolle in 4 Wochen."

// Encounters

Instance: mii-exa-seltene-encounter-screening-001
InstanceOf: Encounter
Usage: #example
Title: "Neugeborenenscreening"
Description: "Neugeborenenscreening mit SMA-Verdacht"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#60151004 "Neonatal screening (procedure)"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* period.start = "2024-07-18"
* period.end = "2024-07-18"
* reasonCode.text = "Neugeborenenscreening"

Instance: mii-exa-seltene-encounter-ambulant-001
InstanceOf: Encounter
Usage: #example
Title: "Ambulante Erstvorstellung"
Description: "Erstvorstellung im SMA-Zentrum"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#390906007 "Follow-up encounter"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* period.start = "2024-07-22"
* period.end = "2024-07-22"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-sma-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

Instance: mii-exa-seltene-encounter-stationaer-001
InstanceOf: Encounter
Usage: #example
Title: "Stationärer Aufenthalt zur Gentherapie"
Description: "Stationäre Aufnahme für Gentherapie"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = http://snomed.info/sct#32485007 "Hospital admission"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* period.start = "2024-07-29"
* period.end = "2024-07-30"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"

Instance: mii-exa-seltene-encounter-nachsorge-001
InstanceOf: Encounter
Usage: #example
Title: "Ambulante Nachsorge"
Description: "Erster Nachsorgetermin nach Gentherapie"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#390906007 "Follow-up encounter"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* period.start = "2024-08-12"
* period.end = "2024-08-12"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
