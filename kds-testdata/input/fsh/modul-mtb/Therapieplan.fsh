// ============================================================================
// MII MTB Module - Beschluss/Therapieplan - 8 profiles
// ============================================================================

// =============================================================================
// 35. MII_PR_MTB_Therapieplan (CarePlan, extends Onko Tumorkonferenz)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapieplan-1
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Title: "MTB Therapieplan"
Description: "Test instance for MTB therapy plan with all activity slices"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"
* status = #active
* intent = #plan
* category = $mii-cs-onko-therapieplanung-typ#praeth
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* created = "2024-03-28"
* description = "MTB-Beschluss mit Therapieempfehlungen und Studieneinschluss"
* addresses = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* supportingInfo[Behandlungsepisode] = Reference(mii-exa-test-data-mtb-behandlungsepisode-1)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-test-data-mtb-therapieempfehlung-kombination-1)
* activity[extended][Studieneinschlussempfehlung][+].reference = Reference(mii-exa-test-data-mtb-studieneinschluss-anfrage-1)
* activity[extended][HumangenetischeBeratung][+].reference = Reference(mii-exa-test-data-mtb-humangenetische-beratung-1)
* activity[extended][HistologieEvaluation][+].reference = Reference(mii-exa-test-data-mtb-histologie-evaluation-1)
* activity[extended][Biopsie][+].reference = Reference(mii-exa-test-data-mtb-biopsie-auftrag-1)
* activity[extended][Therapieempfehlung][0].progress.text = "Therapieempfehlung in Umsetzung"
* activity[obds][+].detail.status = #completed
* activity[obds][=].detail.code.coding = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds][=].detail.statusReason.text = "regulär abgeschlossen"
* activity[obds][=].detail.statusReason.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung#N
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)

// =============================================================================
// 36. MII_PR_MTB_Therapieempfehlung (MedicationRequest, extends Onko Therapieempfehlung Medikation)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapieempfehlung-1
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Osimertinib"
Description: "Test instance for therapy recommendation with priority, evidence, and publication"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #proposal
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* basedOn = Reference(mii-exa-test-data-mtb-therapieplan-1)
* medicationCodeableConcept.coding[+] = $atc#L01EB04 "Osimertinib"
* medicationCodeableConcept.coding[=].version = "2024"
* medicationCodeableConcept.coding[+] = $unii#3C06JJ0Z2O "OSIMERTINIB"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* insert MtbBeschlussPrioritaet(1)
* insert MtbBeschlussEvidenz(m1A, http://www.ncbi.nlm.nih.gov/pubmed, 29151359)
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-beschluss"
* identifier.value = "TE-2024-001"
* medicationCodeableConcept.text = "Osimertinib 80 mg"
* dosageInstruction.text = "80 mg einmal täglich oral"
* dosageInstruction.sequence = 1
* dosageInstruction.route = $SCT#26643006 "Oral route (qualifier value)"
* dosageInstruction.site = $SCT#123851003 "Mouth region structure (body structure)"
* dosageInstruction.asNeededBoolean = false
* dosageInstruction.timing.event = "2024-04-15T08:00:00+02:00"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.periodMax = 2
* dosageInstruction.timing.repeat.boundsPeriod.start = "2024-04-15"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2024-08-30"
* dosageInstruction.timing.repeat.count = 130
* dosageInstruction.timing.repeat.countMax = 140
* dosageInstruction.timing.repeat.duration = 5
* dosageInstruction.timing.repeat.durationMax = 10
* dosageInstruction.timing.repeat.durationUnit = #min
* dosageInstruction.timing.repeat.frequencyMax = 2
* dosageInstruction.timing.repeat.dayOfWeek[+] = #mon
* dosageInstruction.timing.repeat.timeOfDay[+] = "08:00:00"
* dosageInstruction.doseAndRate.doseQuantity = 80 'mg'
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate[0].rateRatio.numerator = 80 'mg'
* dosageInstruction.doseAndRate[0].rateRatio.numerator.unit = "mg"
* dosageInstruction.doseAndRate[0].rateRatio.denominator = 1 'd'
* dosageInstruction.doseAndRate[0].rateRatio.denominator.unit = "Tag"
* dosageInstruction.doseAndRate[1].doseRange.low = 40 'mg'
* dosageInstruction.doseAndRate[1].doseRange.low.unit = "mg"
* dosageInstruction.doseAndRate[1].doseRange.high = 80 'mg'
* dosageInstruction.doseAndRate[1].doseRange.high.unit = "mg"
* dosageInstruction.doseAndRate[1].rateQuantity = 3.3 'mg/h'
* dosageInstruction.doseAndRate[1].rateQuantity.unit = "mg/h"
* dosageInstruction.doseAndRate[2].rateRange.low = 2 'mg/h'
* dosageInstruction.doseAndRate[2].rateRange.low.unit = "mg/h"
* dosageInstruction.doseAndRate[2].rateRange.high = 4 'mg/h'
* dosageInstruction.doseAndRate[2].rateRange.high.unit = "mg/h"
* dosageInstruction.maxDosePerAdministration = 80 'mg'
* dosageInstruction.maxDosePerAdministration.unit = "mg"
* dosageInstruction.maxDosePerPeriod.numerator = 160 'mg'
* dosageInstruction.maxDosePerPeriod.numerator.unit = "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd'
* dosageInstruction.maxDosePerPeriod.denominator.unit = "Tag"
* note.text = "Empfehlung mit Evidenzgrad m1A auf Basis der EGFR-L858R-Variante."
* reasonCode = $ICD10GM#C34.1 "Bösartige Neubildung: Oberlappen (-Bronchus)"
* requester = Reference(mii-exa-test-data-organization-charite)
* substitution.allowedBoolean = false
* supportingInformation = Reference(mii-exa-test-data-mtb-ngs-bericht-1)

Instance: mii-exa-test-data-mtb-therapieempfehlung-2
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Sotorasib"
Description: "Test instance for second therapy recommendation (part of combination)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #option
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* medicationCodeableConcept.coding = $atc#L01XX73 "Sotorasib"
* medicationCodeableConcept.coding.version = "2024"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* priorPrescription = Reference(mii-exa-test-data-mtb-therapieempfehlung-1)
* dosageInstruction.asNeededCodeableConcept = $SCT#422587007 "Nausea (finding)"
* dosageInstruction.timing.repeat.boundsDuration = 7 'd'
* dosageInstruction.timing.repeat.boundsDuration.unit = "Tage"
* dosageInstruction.timing.repeat.when[+] = #MORN
* dosageInstruction.timing.repeat.offset = 30

Instance: mii-exa-test-data-mtb-therapieempfehlung-3
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Trametinib"
Description: "Test instance for third therapy recommendation (part of combination)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #option
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* medicationCodeableConcept.coding = $atc#L01EE01 "Trametinib"
* medicationCodeableConcept.coding.version = "2024"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* dosageInstruction.text = "Ausschleichen über 1-2 Wochen"
* dosageInstruction.timing.repeat.boundsRange.low = 1 'wk'
* dosageInstruction.timing.repeat.boundsRange.low.unit = "Wochen"
* dosageInstruction.timing.repeat.boundsRange.high = 2 'wk'
* dosageInstruction.timing.repeat.boundsRange.high.unit = "Wochen"

// =============================================================================
// 37. MII_PR_MTB_Therapieempfehlung_Kombination (RequestGroup, extends Onko)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapieempfehlung-kombination-1
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
Title: "MTB Therapieempfehlung Kombination"
Description: "Test instance for combination therapy recommendation"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
* status = #draft
* intent = #proposal
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* action[+].resource = Reference(mii-exa-test-data-mtb-therapieempfehlung-2)
* action[=].code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* action[+].resource = Reference(mii-exa-test-data-mtb-therapieempfehlung-3)
// Hinweis: RequestGroup.action.action (verschachtelte Kombination) kann von SUSHI
// ueber die contentReference nicht befuellt werden – bewusst offen gelassen.
* insert MtbBeschlussPrioritaet(2)
* insert MtbBeschlussEvidenz(m1B, http://doi.org, 10.1056/NEJMoa2030428)
* encounter = Reference(mii-exa-test-data-mtb-encounter-1)
* identifier.system = "https://www.charite.de/fhir/sid/mtb-beschluss"
* identifier.value = "KOMBI-2024-001"
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)

// =============================================================================
// 38. MII_PR_MTB_Studieneinschluss_Anfrage (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-studieneinschluss-anfrage-1
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Usage: #example
Title: "MTB Studieneinschluss Anfrage"
Description: "Test instance for study enrollment request with all MS elements"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
* status = #draft
* intent = #proposal
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* supportingInfo = Reference(mii-exa-test-data-mtb-studie-1)
* insert MtbBeschlussSubPrioritaet(3.1)
* insert MtbBeschlussEvidenzPublikation(http://www.ncbi.nlm.nih.gov/pubmed, 34726479)
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)

// Zweite Anfrage: abgelehnter Studieneinschluss - deckt extension:statusReason
// ("Grund fuer Ablehnung des Studieneinschlusses - z.B. Tod oder Studie
// geschlossen") ab, der nur bei einem Exception-Status sinnvoll ist.
Instance: mii-exa-test-data-mtb-studieneinschluss-anfrage-2
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Usage: #example
Title: "MTB Studieneinschluss Anfrage (abgelehnt)"
Description: "Test instance for a rejected study enrollment request (statusReason)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
* status = #revoked
* intent = #proposal
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* supportingInfo = Reference(mii-exa-test-data-mtb-studie-1)
* extension[statusReason].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund#patient-death "Tod"
* extension[statusReason].valueCodeableConcept.text = "Studieneinschluss nicht erfolgt - Patient vor Screening verstorben"
* insert MtbBeschlussSubPrioritaet(3.2)
* reasonReference = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)

// =============================================================================
// 39. MII_PR_MTB_Studie (ResearchStudy, extends Studie)
// =============================================================================
Instance: mii-exa-test-data-mtb-studie-1
InstanceOf: MII_PR_MTB_Studie
Usage: #example
Title: "MTB Studie"
Description: "Test instance for MTB research study"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
* identifier[+].system = $mii-ns-mtb-nct
* identifier[=].value = "05252390"
* status = #active
* title = "Phase III NSCLC EGFR Mutation Study"
* primaryPurposeType = http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type#treatment "Treatment"
* phase = http://terminology.hl7.org/CodeSystem/research-study-phase#phase-3 "Phase 3"
* extension[Label].extension[value].valueString = "Phase-III-Studie zu Osimertinib bei EGFR-mutiertem NSCLC"
* extension[Label].extension[type].valueCodeableConcept = $title-type#scientific
* extension[AssociatedParty].extension[role].valueCodeableConcept = $research-study-party-role#sponsor
* extension[AssociatedParty].extension[party].valueReference = Reference(mii-exa-test-data-organization-charite)
* extension[Ethikvotum].extension[status].valueString = "Zustimmende Bewertung"
* extension[Ethikvotum].extension[kommission].valueString = "Ethikkommission der Charité - Universitätsmedizin Berlin"
* extension[Ethikvotum].extension[ethiknummer].valueString = "EA1/456/24"
* extension[Studienregister].valueReference = Reference(mii-exa-test-data-mtb-studien-register-1)
* extension[Eligibility].valueReference = Reference(mii-exa-test-data-mtb-studie-group-1)
* extension[Akronym].valueString = "NSCLC-EGFR-III"
* extension[Rekrutierung].extension[rekrutierungsstart].valueDate = "2024-01-01"
* extension[Rekrutierung].extension[rekrutierungsziel].valueInteger = 300
* extension[Rekrutierung].extension[rekrutierungsstand].valueInteger = 120
* extension[Rekrutierung].extension[rekrutierungsstand-datum].valueDate = "2024-06-01"
* extension[Finanzierung].valueString = "Industriefinanzierte Studie"
* category.text = "Interventionelle Arzneimittelstudie"
* focus.text = "EGFR-mutiertes NSCLC"
* keyword.text = "EGFR"
* arm.name = "Arm A: Osimertinib"
* partOf = Reference(mii-exa-test-data-mtb-studie-2)

// Uebergeordnete Studie (Ziel der partOf-Referenz)
Instance: mii-exa-test-data-mtb-studie-2
InstanceOf: ResearchStudy
Usage: #example
Title: "MTB Studie (Dachstudie)"
Description: "Minimales Studien-Stub als Ziel der partOf-Referenz der MTB-Studie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* title = "NSCLC Master Protocol"

// Studienregister-Library (Ziel der Studienregister-Extension)
Instance: mii-exa-test-data-mtb-studien-register-1
InstanceOf: Library
Usage: #example
Title: "MTB Studienregister"
Description: "Studienregister-Eintrag (ClinicalTrials.gov) der MTB-Studie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* name = "ClinicalTrials_gov"
* title = "ClinicalTrials.gov"
* url = "https://clinicaltrials.gov/study/NCT05252390"

// Eligibility-Gruppe (Ziel der Eligibility-Extension)
Instance: mii-exa-test-data-mtb-studie-group-1
InstanceOf: Group
Usage: #example
Title: "MTB Studien-Eligibility-Gruppe"
Description: "Eligibility-Population der MTB-Studie"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* type = #person
* actual = false
* name = "Erwachsene mit EGFR-mutiertem NSCLC im Stadium IV"

// =============================================================================
// 40. MII_PR_MTB_Humangenetische_Beratung_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-humangenetische-beratung-1
InstanceOf: MII_PR_MTB_Humangenetische_Beratung_Auftrag
Usage: #example
Title: "MTB Humangenetische Beratung Auftrag"
Description: "Test instance for human genetics counseling order"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#788339009 "Genetic consultation (procedure)"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* reasonCode = $mii-cs-mtb-auftrag-begruendung#secondary-tumor
* specimen = Reference(mii-exa-test-data-mtb-specimen-1)

// =============================================================================
// 41. MII_PR_MTB_Histologie_Evaluation_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-histologie-evaluation-1
InstanceOf: MII_PR_MTB_Histologie_Evaluation_Auftrag
Usage: #example
Title: "MTB Histologie Evaluation Auftrag"
Description: "Test instance for histology evaluation order"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#183825009 "Refer for histology (procedure)"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* reasonReference = Reference(mii-exa-test-data-mtb-tumorzellgehalt-1)
* specimen = Reference(mii-exa-test-data-mtb-specimen-1)

// =============================================================================
// 42. MII_PR_MTB_Biopsie_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-biopsie-auftrag-1
InstanceOf: MII_PR_MTB_Biopsie_Auftrag
Usage: #example
Title: "MTB Biopsie Auftrag"
Description: "Test instance for biopsy order"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#86273004 "Biopsy (procedure)"
* subject = Reference(mii-exa-test-data-mtb-patient-1)
* reasonReference = Reference(mii-exa-test-data-mtb-tumorzellgehalt-1)
* specimen = Reference(mii-exa-test-data-mtb-specimen-1)
