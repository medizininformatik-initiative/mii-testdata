Instance: mii-exa-seltene-example-marfan-excluded-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Klinisch ausgeschlossen"
Description: "Beispiel einer klinisch ausgeschlossenen Marfan-Diagnose"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis  
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[+] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom (ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* encounter = Reference(Encounter/mii-exa-seltene-encounter-cardiology-consultation)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-12-15"
* recordedDate = "2024-12-15"
* abatementDateTime = "2024-12-15"  // When it was ruled out
// Evidence showing why it was excluded
* evidence[+].code.text = "Normale Aortenwurzel"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-aortic-root-normal)
* evidence[+].code.text = "Keine Linsenluxation"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-lens-examination-normal)
* note.text = "Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich."

// Example 2: Ehlers-Danlos Syndrome - Clinically Excluded

Instance: mii-exa-seltene-example-eds-excluded-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Ehlers-Danlos-Syndrom - Ausgeschlossen"
Description: "Differentialdiagnose EDS ausgeschlossen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q79.6 "Ehlers-Danlos-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#98249 "Ehlers-Danlos syndrome"
* code.text = "Ehlers-Danlos-Syndrom (ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-11-20"
* recordedDate = "2024-11-20"
* abatementDateTime = "2024-11-20"
* evidence[+].code.text = "Beighton-Score niedrig"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-beighton-score-low)
* note.text = "EDS als Differentialdiagnose ausgeschlossen. Beighton-Score 2/9, keine Hauthyperextensibilität, keine atrophen Narben."

// ============================================
// GENETICALLY EXCLUDED DIAGNOSES
// ============================================

// Example 3: SMA - Genetically Excluded

Instance: mii-exa-seltene-example-sma-excluded-genetic
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "SMA - Genetisch ausgeschlossen"
Description: "Spinale Muskelatrophie genetisch ausgeschlossen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[orphanet] = http://www.orpha.net#83330 "Spinal muscular atrophy"
* code.coding[+] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* code.text = "Spinale Muskelatrophie (genetisch ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-07-26"
* recordedDate = "2024-07-26"
* abatementDateTime = "2024-07-26"
// Genetic evidence showing normal results
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-smn1-normal-copies)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-sma-negative)
* note.text = "SMN1-Gen: 2 Kopien nachgewiesen (Normalbefund). SMN2-Gen: 2 Kopien. SMA genetisch ausgeschlossen."

// Example 4: Duchenne MD - Genetically Excluded, Becker MD confirmed instead

Instance: mii-exa-seltene-example-dmd-excluded-bmd-confirmed
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Duchenne ausgeschlossen - Becker bestätigt"
Description: "Duchenne-Muskeldystrophie ausgeschlossen, stattdessen Becker-Muskeldystrophie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G71.0 "Muskeldystrophie"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#98896 "Duchenne muscular dystrophy"
* code.coding[+] = http://omim.org#310200 "Duchenne muscular dystrophy"
* code.text = "Duchenne-Muskeldystrophie (ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-09-15"
* recordedDate = "2024-09-15"
* abatementDateTime = "2024-09-15"
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47)
* evidence[+].code = http://snomed.info/sct#405824009 "Genetic test"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd)
* note.text = "In-frame Deletion Exon 45-47 im DMD-Gen nachgewiesen. Vereinbar mit Becker-Muskeldystrophie, NICHT Duchenne. Duchenne-Muskeldystrophie ausgeschlossen."

// Example 5: Cystic Fibrosis - Excluded after positive screening

Instance: mii-exa-seltene-example-cf-excluded-after-screening
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Mukoviszidose - Nach positivem Screening ausgeschlossen"
Description: "CF nach auffälligem Neugeborenenscreening genetisch ausgeschlossen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#E84.9 "Zystische Fibrose, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[+] = http://omim.org#219700 "Cystic fibrosis"
* code.text = "Mukoviszidose (ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-08-25"
* recordedDate = "2024-08-25"
* abatementDateTime = "2024-08-25"
// Note: This rules out the previous suspected diagnosis
* note[+].text = "Ausschluss der vorherigen Verdachtsdiagnose (cf-suspected-screening)"
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-cftr-heterozygous-carrier)
* note.text = "Heterozygoter Anlageträger für F508del. Zweite Mutation ausgeschlossen. IRT-Erhöhung im Screening war transient. Mukoviszidose ausgeschlossen."

// ============================================
// DIFFERENTIAL DIAGNOSIS EXAMPLES
// ============================================

// Example 6: Multiple Excluded Differential Diagnoses

Instance: mii-exa-seltene-example-metabolic-myopathy-excluded
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Metabolische Myopathie - Ausgeschlossen"
Description: "Metabolische Myopathie als Differentialdiagnose ausgeschlossen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#G71.3 "Mitochondriale Myopathie, anderenorts nicht klassifiziert"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#206966 "Mitochondrial myopathy"
* code.text = "Metabolische Myopathie (ausgeschlossen)"
* subject = Reference(mii-exa-seltene-patient)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-10-01"
* recordedDate = "2024-10-01"
* abatementDateTime = "2024-10-01"
* evidence[+].code.text = "Laktat normal"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-lactate-normal)
* evidence[+].code.text = "Muskelbiopsie unauffällig"
* evidence[=].detail = Reference(DiagnosticReport/mii-exa-seltene-muscle-biopsy-normal)
* note.text = "Metabolische Myopathie ausgeschlossen. Laktat in Ruhe und unter Belastung normwertig. Muskelbiopsie ohne Hinweise auf mitochondriale Pathologie."

// ============================================
// SUPPORTING OBSERVATIONS FOR EXCLUDED DIAGNOSES
// ============================================

Instance: mii-exa-seltene-aortic-root-normal
InstanceOf: Observation
Usage: #example
Title: "Aortenwurzel - Normalbefund"
Description: "Normale Aortenwurzel, schließt Marfan aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://loinc.org#78176-5 "Aorta root Diameter by US 2D"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 32 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* referenceRange.low.value = 29
* referenceRange.high.value = 37
* referenceRange.low.unit = "mm"
* referenceRange.high.unit = "mm"

Instance: mii-exa-seltene-molgen-smn1-normal-copies
InstanceOf: Observation
Usage: #example
Title: "SMN1 - Normale Kopienanzahl"
Description: "2 Kopien SMN1 - schließt SMA aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = http://snomed.info/sct#280413001 "Normal result"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:11117 "SMN1"
* component[+].code.text = "Copy Number"
* component[=].valueInteger = 2
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* note.text = "Normale Kopienanzahl des SMN1-Gens. SMA ausgeschlossen."

Instance: mii-exa-seltene-molgen-sma-negative
InstanceOf: DiagnosticReport
Usage: #example
Title: "SMA Genetik - Negativbefund"
Description: "Genetischer Test schließt SMA aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-07-26"
* result[+] = Reference(mii-exa-seltene-molgen-smn1-normal-copies)
* conclusion = "SMN1-Gen: 2 Kopien (Normalbefund). SMN2-Gen: 2 Kopien. Spinale Muskelatrophie ausgeschlossen."
* conclusionCode = http://snomed.info/sct#280413001 "Normal result"

// --------------------------------------------
// Ergaenzt 2026-09-03: Die Ausschlussbeispiele oben zitierten fuenf Belege,
// die es nie gab — die evidence.detail-Referenzen liefen ins Leere. Gerade
// hier ist das misslich, weil die Seite den Ausschluss als dokumentations-
// pflichtig herausstellt und dann Beispiele zeigt, deren Beleg fehlt. Werte
// und Datumsangaben stammen aus den note.text-Feldern der jeweiligen Diagnose,
// damit Beleg und Begruendung zusammenpassen.
//
// Zwei der Belege nutzen bewusst das modul-eigene Muster fuer AUSGESCHLOSSENE
// Phaenotypen (MII_PR_Seltene_HPO_Assessment mit component[status] = Absent)
// statt eigener SNOMED-Codes: fuer "keine Linsenluxation" und "keine
// generalisierte Hypermobilitaet" fuehrt SNOMED keine brauchbaren Konzepte.
// Der erste Versuch stand hier mit 1263812009 (existiert nicht) und 420112009
// (ist Pediatric bone marrow transplantation) — also genau die Fehlerklasse,
// die das Modul im August durchgehend hatte. Alle Codes unten sind am
// 2026-09-03 gegen tx.fhir.org bzw. die HPO-API geprueft.
// --------------------------------------------

Instance: mii-exa-seltene-lens-examination-normal
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Linsenluxation - ausgeschlossen"
Description: "Ectopia lentis spaltlampenmikroskopisch ausgeschlossen; Ghent-Kriterium nicht erfuellt"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = http://human-phenotype-ontology.org#HP:0001083 "Ectopia lentis"
* subject = Reference(mii-exa-seltene-patient)
* encounter = Reference(mii-exa-seltene-encounter-cardiology-consultation)
* status = #final
* effectiveDateTime = "2024-12-15"
* component[status].code = http://snomed.info/sct#260411009 "Presence findings"
* component[status].valueCodeableConcept = http://loinc.org#LA9634-2 "Absent"
* note.text = "Spaltlampenuntersuchung ohne Hinweis auf Ectopia lentis. Ghent-Kriterium nicht erfuellt."

Instance: mii-exa-seltene-beighton-score-low
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "Generalisierte Hypermobilitaet - ausgeschlossen"
Description: "Beighton-Score 2/9; generalisierte Gelenkhypermobilitaet ausgeschlossen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = http://human-phenotype-ontology.org#HP:0001382 "Joint hypermobility"
* subject = Reference(mii-exa-seltene-patient)
* status = #final
* effectiveDateTime = "2024-11-20"
* component[status].code = http://snomed.info/sct#260411009 "Presence findings"
* component[status].valueCodeableConcept = http://loinc.org#LA9634-2 "Absent"
* note.text = "Beighton-Score 2/9 — unterhalb der Schwelle fuer eine generalisierte Hypermobilitaet. Keine Hauthyperextensibilitaet, keine atrophen Narben."

Instance: mii-exa-seltene-lactate-normal
InstanceOf: Observation
Usage: #example
Title: "Laktat - Normalbefund"
Description: "Laktat in Ruhe normwertig; spricht gegen metabolische Myopathie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#2524-7 "Lactate [Moles/volume] in Serum or Plasma"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-10-01"
* valueQuantity = 1.4 'mmol/L' "mmol/L"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* referenceRange.low.value = 0.5
* referenceRange.high.value = 2.2
* referenceRange.low.unit = "mmol/L"
* referenceRange.high.unit = "mmol/L"
* note.text = "Laktat in Ruhe und unter Belastung normwertig."

Instance: mii-exa-seltene-muscle-biopsy-normal
InstanceOf: DiagnosticReport
Usage: #example
Title: "Muskelbiopsie - Normalbefund"
Description: "Muskelbiopsie ohne Hinweis auf mitochondriale Pathologie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#60567-5 "Comprehensive pathology report panel"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-10-01"
* conclusion = "Regelrechte Faserstruktur, keine ragged-red fibers, Atmungskettenenzyme unauffaellig. Kein Hinweis auf mitochondriale Pathologie."
* conclusionCode = http://snomed.info/sct#17621005 "Normal"

Instance: mii-exa-seltene-molgen-cftr-heterozygous-carrier
InstanceOf: Observation
Usage: #example
Title: "CFTR F508del - heterozygoter Anlageträger"
Description: "Nur eine CFTR-Mutation nachweisbar; schliesst Mukoviszidose aus"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-08-25"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:1884 "CFTR"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.1521_1523del"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Phe508del"
* component[+].code = http://loinc.org#53034-5 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6706-1 "Heterozygous"
* note.text = "Heterozygoter Anlagetraeger fuer F508del. Eine zweite CFTR-Mutation wurde bei vollstaendiger Genanalyse nicht gefunden. Mukoviszidose damit ausgeschlossen; die IRT-Erhoehung im Screening war transient."
