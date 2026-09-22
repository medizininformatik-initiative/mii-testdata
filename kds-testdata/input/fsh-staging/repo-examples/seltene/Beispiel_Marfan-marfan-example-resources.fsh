Instance: mii-exa-seltene-patient-marfan-001
InstanceOf: Patient
Usage: #example
Title: "Marfan Patient - 19-jähriger Mann"
Description: "19-jähriger männlicher Patient mit bestätigtem Marfan-Syndrom"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/sid/patient-id"
* identifier.value = "MRF-2024-001"
* gender = #male
* birthDate = "2005-01-01"  // Approximated - 19 years old in 2024

// Marfan Syndrome Diagnosis - Suspected

Instance: mii-exa-seltene-condition-marfan-suspected
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Verdacht"
Description: "Verdacht auf Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = http://snomed.info/sct#19346006 "Marfan syndrome"
* code.text = "Verdacht auf Marfan-Syndrom"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-12-10"
* recordedDate = "2024-12-10"
* note.text = "Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation"

// Marfan Syndrome Diagnosis - Clinical

Instance: mii-exa-seltene-condition-marfan-clinical
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Klinische Diagnose"
Description: "Klinisch bestätigtes Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = http://snomed.info/sct#19346006 "Marfan syndrome"
* code.coding[+] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-12-15"
* recordedDate = "2024-12-15"
* encounter = Reference(mii-exa-seltene-encounter-cardiology)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0002616 "Aortic root aneurysm"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-symptom-aortic-root)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001659 "Aortic regurgitation"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-symptom-aortic-regurg)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0001653 "Mitral regurgitation"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-symptom-mitral-regurg)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0000098 "Tall stature"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-observation-height-001)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0100559 "Lower limb asymmetry"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-observation-leg-asymmetry)
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0100749 "Chest pain"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-symptom-chest-pain)
* note.text = "Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation"

// Marfan Syndrome Diagnosis - Genetic

Instance: mii-exa-seltene-condition-marfan-genetic
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Marfan-Syndrom - Genetische Diagnose"
Description: "Genetisch bestätigtes Marfan-Syndrom mit FBN1-Mutation"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#Q87.4 "Marfan-Syndrom"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[sct] = http://snomed.info/sct#19346006 "Marfan syndrome"
* code.coding[+] = http://omim.org#154700 "Marfan syndrome"
* code.text = "Marfan-Syndrom - genetisch bestätigt"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-12-20"
* recordedDate = "2024-12-20"
* evidence[+].code = http://snomed.info/sct#106221001 "Genetic finding"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-variant-fbn1-001)
* note.text = "FBN1-Mutation c.3217G>A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."

// FBN1 Gene Mutation

Instance: mii-exa-seltene-variant-fbn1-001
InstanceOf: Observation
Usage: #example
Title: "FBN1 Gen - Pathogene Mutation"
Description: "Pathogene FBN1-Mutation bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#55233-1 "Genetic analysis master panel"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-20"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#HGNC:3603 "FBN1"
* component[+].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.3217G>A"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Gly1073Arg"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* note.text = "Pathogene FBN1-Mutation, krankheitsursächlich für Marfan-Syndrom"

// Cataract Diagnosis

Instance: mii-exa-seltene-condition-cataract
InstanceOf: MII_PR_Seltene_ClinicalDiagnosis
Usage: #example
Title: "Katarakt bilateral"
Description: "Beidseitige Katarakt bei Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#H26.9 "Katarakt, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* code.coding[sct] = http://snomed.info/sct#193570009 "Cataract"
* code.coding[hpo] = http://human-phenotype-ontology.org#HP:0000518 "Cataract"
* code.text = "Katarakt bilateral"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* extension[+].url = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
* extension[=].valueDateTime = "2024-10-15"
* recordedDate = "2024-10-15"
* encounter = Reference(mii-exa-seltene-encounter-ophthalmology)
* abatementDateTime = "2024-11-12"  // Resolved after surgery
* evidence[+].code.coding = http://human-phenotype-ontology.org#HP:0000518 "Cataract"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-symptom-cataract)
* note.text = "Katarakt bilateral, operativ versorgt"

// Phenotypic Observations - Height

Instance: mii-exa-seltene-observation-height-001
InstanceOf: Observation
Usage: #example
Title: "Körpergröße - Hochwuchs"
Description: "Pathologisch erhöhte Körpergröße bei Marfan-Syndrom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8302-2 "Body height"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 213 'cm' "cm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* bodySite = http://snomed.info/sct#38266002 "Entire body as a whole"
* component[+].code = http://human-phenotype-ontology.org#HP:0000098 "Tall stature"
* component[=].valueString = "Pathologischer Hochwuchs >99. Perzentile"

// Phenotypic Observations - Leg Length Discrepancy

Instance: mii-exa-seltene-observation-leg-asymmetry
InstanceOf: Observation
Usage: #example
Title: "Beinlängendifferenz"
Description: "Beinlängendifferenz mit rechts verkürztem Bein"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://snomed.info/sct#707738004 "Leg length discrepancy"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept = http://snomed.info/sct#7771000 "Left"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = http://snomed.info/sct#30021000 "Lower leg structure"
* component[+].code = http://human-phenotype-ontology.org#HP:0100559 "Lower limb asymmetry"
* component[=].valueString = "Rechtes Bein verkürzt"

// Symptom - Chest Pain

Instance: mii-exa-seltene-symptom-chest-pain
InstanceOf: Observation
Usage: #example
Title: "Thoraxschmerzen"
Description: "Akute Thoraxschmerzen als Präsentationssymptom"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0100749 "Chest pain"
* code.coding[+] = http://snomed.info/sct#29857009 "Chest pain"
* code.text = "Thoraxschmerzen"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept = http://snomed.info/sct#52101004 "Present"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Symptom - Cataract

Instance: mii-exa-seltene-symptom-cataract
InstanceOf: Observation
Usage: #example
Title: "Katarakt bilateral"
Description: "Beidseitige Katarakt als ophthalmologische Manifestation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code.coding[+] = http://human-phenotype-ontology.org#HP:0000518 "Cataract"
* code.coding[+] = http://snomed.info/sct#193570009 "Cataract"
* code.text = "Katarakt bilateral"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-10-15"
* valueCodeableConcept = http://snomed.info/sct#51440002 "Bilateral"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* bodySite = http://snomed.info/sct#81745001 "Eye structure"

// Cardiac Finding - Aortic Root Dilatation

Instance: mii-exa-seltene-symptom-aortic-root
InstanceOf: Observation
Usage: #example
Title: "Aortenwurzeldilatation"
Description: "Pathologisch erweiterte Aortenwurzel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://human-phenotype-ontology.org#HP:0002616 "Aortic root aneurysm"
* code.coding[+] = http://snomed.info/sct#251036003 "Aortic root dilatation"
* code.text = "Aortenwurzeldilatation"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 48 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* referenceRange.high.value = 40
* referenceRange.high.unit = "mm"
* referenceRange.text = "Normwert <40mm"

// Cardiac Finding - Aortic Regurgitation

Instance: mii-exa-seltene-symptom-aortic-regurg
InstanceOf: Observation
Usage: #example
Title: "Aortenklappeninsuffizienz"
Description: "Moderate Aortenklappeninsuffizienz Grad II"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001659 "Aortic regurgitation"
* code.coding[+] = http://snomed.info/sct#60234000 "Aortic valve regurgitation"
* code.text = "Aortenklappeninsuffizienz"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.coding = http://snomed.info/sct#838545002 "Moderate aortic valve regurgitation"
* valueCodeableConcept.text = "Aortenklappeninsuffizienz Grad II"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Cardiac Finding - Mitral Regurgitation

Instance: mii-exa-seltene-symptom-mitral-regurg
InstanceOf: Observation
Usage: #example
Title: "Mitralklappeninsuffizienz"
Description: "Milde Mitralklappeninsuffizienz Grad I"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code.coding[+] = http://human-phenotype-ontology.org#HP:0001653 "Mitral regurgitation"
* code.coding[+] = http://snomed.info/sct#48724000 "Mitral valve regurgitation"
* code.text = "Mitralklappeninsuffizienz"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.coding = http://snomed.info/sct#838451005 "Mild mitral valve regurgitation"
* valueCodeableConcept.text = "Mitralklappeninsuffizienz Grad I"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

// Echocardiography - Aortic Root Measurement

Instance: mii-exa-seltene-observation-echo-aortic
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Aortenwurzeldurchmesser"
Description: "Aortenwurzeldurchmesser in der Echokardiographie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://loinc.org#78176-5 "Aorta root Diameter by US 2D"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueQuantity = 48 'mm' "mm"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* method = http://snomed.info/sct#40701008 "Echocardiography"

// Echocardiography - Aortic Valve Assessment

Instance: mii-exa-seltene-observation-echo-av
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Aortenklappeninsuffizienz"
Description: "Beurteilung der Aortenklappeninsuffizienz"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://loinc.org#18112-3 "Aortic valve Regurgitation degree by US.doppler"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.text = "Grad II"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = http://snomed.info/sct#40701008 "Echocardiography"

// Echocardiography - Mitral Valve Assessment

Instance: mii-exa-seltene-observation-echo-mv
InstanceOf: Observation
Usage: #example
Title: "Echokardiographie - Mitralklappeninsuffizienz"
Description: "Beurteilung der Mitralklappeninsuffizienz"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://loinc.org#18113-1 "Mitral valve Regurgitation degree by US.doppler"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* valueCodeableConcept.text = "Grad I"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* method = http://snomed.info/sct#40701008 "Echocardiography"

// Cataract Surgery Procedure

Instance: mii-exa-seltene-procedure-cataract-surgery
InstanceOf: Procedure
Usage: #example
Title: "Katarakt-Operation"
Description: "Phakoemulsifikation mit Intraokularlinsenimplantation"
* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#5-144.5a "Extrakapsuläre Extraktion der Linse [ECCE]: Linsenkernverflüssigung [Phakoemulsifikation] über kornealen Zugang: Mit Einführung einer kapselfixierten Hinterkammerlinse, monofokale Intraokularlinse"
* code.coding[+] = http://snomed.info/sct#54885007 "Extraction of cataract"
* code.text = "Phakoemulsifikation mit IOL-Implantation"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* performedDateTime = "2024-11-12"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-cataract)
* outcome.text = "Erfolgreiche Linsenimplantation ohne Komplikationen"
* note.text = "Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen"

// Planned Aortic Root Replacement

Instance: mii-exa-seltene-procedure-aortic-planned
InstanceOf: Procedure
Usage: #example
Title: "Geplante Aortenwurzelersatz-Operation"
Description: "Geplante David-Operation (Valve-sparing root replacement)"
* status = #preparation
* category = http://snomed.info/sct#387713003 "Surgical procedure"
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#5-354.0a "Andere Operationen an Herzklappen: Aortenklappe: Rekonstruktion der Aortenwurzel mit Implantation einer Gefäßprothese nach David"
* code.coding[+] = http://snomed.info/sct#428179006 "Replacement of aortic root"
* code.text = "Aortenwurzelersatz (David-Operation)"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* performedPeriod.start = "2025-03-15"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* note.text = "Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation"

// Medication Statement - Losartan

Instance: mii-exa-seltene-medication-losartan
InstanceOf: MedicationStatement
Usage: #example
Title: "Losartan Therapie"
Description: "Losartan zur Progressionshemmung der Aortenwurzeldilatation"
* status = #active
* medicationCodeableConcept.coding[+] = http://fhir.de/CodeSystem/bfarm/atc#C09CA01 "Losartan"
* medicationCodeableConcept.coding[+] = http://snomed.info/sct#373567002 "Losartan"
* medicationCodeableConcept.text = "Losartan 50mg"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* effectiveDateTime = "2024-12-15"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* dosage.text = "50mg einmal täglich"
* dosage.route = http://snomed.info/sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity = 50 'mg' "mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* note.text = "Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom"

// Clinical Impression - Cardiology Referral from SE

Instance: mii-exa-seltene-clinical-impression-seltene-assessment
InstanceOf: MII_PR_Seltene_ClinicalImpression
Usage: #example
Title: "Konsultation ZSE bei V.a. Marfan-Syndrom"
Description: "Konsultation im Zentrum für Seltene Erkrankungen mit kardiologischer Mitbeurteilung bei V.a. Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression)
* status = #completed
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* encounter = Reference(mii-exa-seltene-encounter-cardiology)
* effectiveDateTime = "2024-12-15"
* date = "2024-12-15"
// * assessor = Reference(Practitioner/example) // Optional field, not required in MII
* summary = "19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert."
* problem[+] = Reference(mii-exa-seltene-condition-marfan-suspected)  // Reason for assessment (suspected diagnosis)
* finding[+].itemReference = Reference(mii-exa-seltene-condition-marfan-clinical)  // Clinical diagnosis as finding
* finding[+].itemReference = Reference(mii-exa-seltene-condition-marfan-genetic)  // Genetic diagnosis as finding
* finding[+].itemCodeableConcept = http://snomed.info/sct#251036003 "Aortic root dilatation"
* finding[=].itemReference = Reference(mii-exa-seltene-symptom-aortic-root)
* finding[+].itemCodeableConcept = http://snomed.info/sct#60234000 "Aortic valve regurgitation"
* finding[=].itemReference = Reference(mii-exa-seltene-symptom-aortic-regurg)
* finding[+].itemCodeableConcept = http://snomed.info/sct#48724000 "Mitral valve regurgitation"
* finding[=].itemReference = Reference(mii-exa-seltene-symptom-mitral-regurg)
* finding[+].itemCodeableConcept = http://snomed.info/sct#248328003 "Tall stature"
* finding[=].itemReference = Reference(mii-exa-seltene-observation-height-001)
* finding[+].itemCodeableConcept = http://snomed.info/sct#707738004 "Leg length discrepancy"
* finding[=].itemReference = Reference(mii-exa-seltene-observation-leg-asymmetry)
* investigation[+].code.text = "Echokardiographie"
* investigation[=].item[+] = Reference(mii-exa-seltene-observation-echo-aortic)
* investigation[=].item[+] = Reference(mii-exa-seltene-observation-echo-av)
* investigation[=].item[+] = Reference(mii-exa-seltene-observation-echo-mv)
* problem[+] = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* problem[+] = Reference(Condition/mii-exa-seltene-condition-marfan-genetic)
* prognosisCodeableConcept[+] = http://snomed.info/sct#67334001 "Guarded prognosis"
* note[+].text = "Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet."
* note[+].text = "Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen."

// Encounters

Instance: mii-exa-seltene-encounter-ophthalmology
InstanceOf: Encounter
Usage: #example
Title: "Augenärztliche Konsultation"
Description: "Erstvorstellung beim Augenarzt wegen Katarakt"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#36228007 "Ophthalmic examination and evaluation"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* period.start = "2024-10-15"
* period.end = "2024-10-15"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-cataract)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

Instance: mii-exa-seltene-encounter-cataract-surgery
InstanceOf: Encounter
Usage: #example
Title: "Katarakt-Operation Aufenthalt"
Description: "Tagesklinischer Aufenthalt für Katarakt-Operation"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#SS "short stay"
* type = http://snomed.info/sct#305408004 "Admission to surgical department"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* period.start = "2024-11-12T07:00:00Z"
* period.end = "2024-11-12T15:00:00Z"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-cataract)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"

Instance: mii-exa-seltene-encounter-cardiology
InstanceOf: Encounter
Usage: #example
Title: "Kardiologische Erstvorstellung"
Description: "Ambulante kardiologische Erstvorstellung bei Thoraxschmerzen"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = http://snomed.info/sct#185228002 "Seen in cardiac clinic (finding)"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* period.start = "2024-12-15"
* period.end = "2024-12-15"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
* reasonCode.coding = http://snomed.info/sct#29857009 "Chest pain"
* reasonCode.text = "Thoraxschmerzen bei V.a. Marfan-Syndrom"

Instance: mii-exa-seltene-encounter-surgery-planned
InstanceOf: Encounter
Usage: #example
Title: "Geplante Herzchirurgie"
Description: "Geplanter stationärer Aufenthalt für Aortenwurzelersatz"
* status = #planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type = http://snomed.info/sct#305357000 "Admission to cardiology department"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* period.start = "2025-03-15"
* diagnosis.condition = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* reasonCode.text = "Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom"
