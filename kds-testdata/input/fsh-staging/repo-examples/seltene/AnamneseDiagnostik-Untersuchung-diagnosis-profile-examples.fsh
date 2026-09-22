Instance: mii-exa-seltene-example-marfan-clinical-diagnosis
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Klinische Diagnose"
Description: "Beispiel einer klinischen Diagnose des Marfan-Syndroms basierend auf phänotypischen Merkmalen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
// Multiple coding systems including HPO
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = http://snomed.info/sct#19346006 "Marfan syndrome"
* code.coding[+] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom, klinisch diagnostiziert"
* subject = Reference(mii-exa-seltene-patient)
* encounter = Reference(Encounter/mii-exa-seltene-encounter-cardiology-consultation)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-12-15"
* recordedDate = "2024-12-15"
// Evidence linking to HPO-coded observations
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0002616 "Aortic root aneurysm"
* evidence[=].code.text = "Aortenwurzeldilatation"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-aortic-root-dilatation)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001083 "Ectopia lentis"
* evidence[=].code.text = "Linsenluxation"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-lens-dislocation)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0000098 "Tall stature"
* evidence[=].code.text = "Hochwuchs"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-tall-stature)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001166 "Arachnodactyly"
* evidence[=].code.text = "Arachnodaktylie"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-arachnodactyly)
// Extensions
// Extensions for age of onset and inheritance pattern would go here if defined in profile
* note.text = "Klinische Diagnose basierend auf Ghent-Kriterien. Patient erfüllt Major-Kriterien in kardiovaskulärem und ophthalmologischem System. Genetische Testung wird veranlasst."

// Example 2: Noonan Syndrome - Clinical Diagnosis

Instance: mii-exa-seltene-example-noonan-clinical-diagnosis
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Noonan-Syndrom - Klinische Diagnose"
Description: "Beispiel einer klinischen Diagnose des Noonan-Syndroms"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.1 "Angeborene Fehlbildungssyndrome, die vorwiegend mit Kleinwuchs einhergehen"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#648 "Noonan syndrome"
* code.coding[sct] = http://snomed.info/sct#205824006 "Noonan syndrome"
* code.text = "Noonan-Syndrom"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-10-20"
* recordedDate = "2024-10-20"
// Phenotypic evidence
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0000316 "Hypertelorism"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-hypertelorism)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0000463 "Anteverted nares"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-anteverted-nares)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001629 "Ventricular septal defect"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-vsd)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001004 "Lymphedema"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-lymphedema)
// Extensions for age of onset and inheritance pattern would go here if defined in profile

// ============================================
// GENETIC DIAGNOSIS EXAMPLES
// ============================================

// Example 3: SMA Type 1 - Genetic Diagnosis

Instance: mii-exa-seltene-example-sma-genetic-diagnosis
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "SMA Typ 1 - Genetisch bestätigte Diagnose"
Description: "Beispiel einer genetisch bestätigten Diagnose der spinalen Muskelatrophie Typ 1"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://snomed.info/sct#782964007 "Genetic disease"
// Multiple coding systems including OMIM
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G12.0 "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#83330 "Proximal spinal muscular atrophy type 1"
* code.coding[sct] = http://snomed.info/sct#64383006 "Werdnig-Hoffmann disease"
* code.coding[+] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* code.text = "Spinale Muskelatrophie Typ 1, genetisch bestätigt"
* subject = Reference(mii-exa-seltene-patient)
* encounter = Reference(Encounter/mii-exa-seltene-encounter-genetic-consultation)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-07-26"
* recordedDate = "2024-07-26"
* onsetDateTime = "2024-07-01"  // Neonatal onset
// Genetic evidence linking to MolGen resources
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-smn1-deletion) // MolGen Variante
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-diagnostic-implication-sma) // MolGen DiagnostischeImplikation
// Extensions for genetic information
// Genetic extensions would go here if defined in profile
* note.text = "Homozygote Deletion des SMN1-Gens nachgewiesen. 0 Kopien SMN1, 2 Kopien SMN2. Diagnose molekulargenetisch gesichert."

// Example 4: Duchenne Muscular Dystrophy - Genetic Diagnosis

Instance: mii-exa-seltene-example-dmd-genetic-diagnosis
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Duchenne-Muskeldystrophie - Genetisch bestätigt"
Description: "Beispiel einer genetisch bestätigten Duchenne-Muskeldystrophie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G71.0 "Muskeldystrophie"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#98896 "Duchenne muscular dystrophy"
* code.coding[sct] = http://snomed.info/sct#76670001 "Duchenne muscular dystrophy"
* code.coding[+] = http://omim.org#310200 "Duchenne muscular dystrophy"
* code.text = "Duchenne-Muskeldystrophie"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-09-15"
* recordedDate = "2024-09-15"
// Link to MolGen resources
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd-duchenne)
// Genetic characteristics
// Genetic extensions would go here if defined in profile
* note.text = "Deletion des Exons 45 im DMD-Gen nachgewiesen. Out-of-frame Deletion mit Leserasterverschiebung, kein funktionsfaehiges Dystrophin. (Bis 2026-09-03 stand hier die Deletion der Exons 45-47 — die ist in-frame und fuehrt zu Becker, nicht zu Duchenne.)"

// Example 5: BRCA1-associated Breast Cancer - Genetic Diagnosis

Instance: mii-exa-seltene-example-brca1-genetic-diagnosis
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Hereditäres Mamma- und Ovarialkarzinom-Syndrom"
Description: "Genetisch bestätigtes BRCA1-assoziiertes Karzinom-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Z80.3 "Bösartige Neubildung der Brustdrüse [Mamma] in der Familienanamnese"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#145 "Hereditary breast and/or ovarian cancer syndrome"
* code.coding[sct] = http://snomed.info/sct#718220008 "Hereditary breast and ovarian cancer syndrome"
* code.coding[+] = http://omim.org#604370 "Breast-ovarian cancer, familial, 1"
* code.text = "Hereditäres Mamma- und Ovarialkarzinom-Syndrom (BRCA1)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-11-01"
* recordedDate = "2024-11-01"
// Genetic evidence
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-brca-panel)
// Genetic details
// Genetic extensions would go here if defined in profile
* note.text = "Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Penetranz für Mammakarzinom bis 80 Jahre: 72%."

// ============================================
// DIAGNOSIS PROGRESSION EXAMPLE
// ============================================

// Example 6: CF - Clinical to Genetic Diagnosis Progression

Instance: mii-exa-seltene-example-cf-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Mukoviszidose - Klinischer Verdacht"
Description: "Initiale klinische Verdachtsdiagnose Mukoviszidose"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#E84.9 "Zystische Fibrose, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[+] = http://omim.org#219700 "Cystic fibrosis"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-08-10"
* recordedDate = "2024-08-10"
// Clinical evidence
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0002099 "Asthma"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-recurrent-respiratory-infections)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0002028 "Chronic diarrhea"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-chronic-diarrhea)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001508 "Failure to thrive"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-failure-to-thrive)
// Age of onset extension would go here if defined in profile
* note.text = "Schweißtest positiv (Chlorid 85 mmol/l). Klinisches Bild vereinbar mit CF. Genetische Testung veranlasst."

Instance: mii-exa-seltene-example-cf-genetic
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Mukoviszidose - Genetisch bestätigt"
Description: "Genetisch bestätigte Mukoviszidose"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#E84.0 "Zystische Fibrose mit Lungenmanifestationen"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[sct] = http://snomed.info/sct#190905008 "Cystic fibrosis"
* code.coding[+] = http://omim.org#219700 "Cystic fibrosis"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-08-25"
* recordedDate = "2024-08-25"
// Note: Genetic diagnosis confirms the previous clinical diagnosis
* note[+].text = "Genetische Bestätigung der vorherigen klinischen Diagnose (mii-exa-seltene-example-cf-clinical)"
// Genetic evidence
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-cftr-f508del-homozygous)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-cf-diagnostic)
// Genetic characteristics
// Genetic extensions would go here if defined in profile
* note.text = "Homozygot für F508del (c.1521_1523delCTT) im CFTR-Gen. Schwerer Phänotyp zu erwarten."
