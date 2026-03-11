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
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"
* status = #active
* intent = #plan
* category = $mii-cs-onko-therapieplanung-typ#praeth
* subject = Reference(mii-exa-test-data-patient-1)
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

// =============================================================================
// 36. MII_PR_MTB_Therapieempfehlung (MedicationRequest, extends Onko Therapieempfehlung Medikation)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapieempfehlung-1
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Osimertinib"
Description: "Test instance for therapy recommendation with priority, evidence, and publication"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #proposal
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-patient-1)
* basedOn = Reference(mii-exa-test-data-mtb-therapieplan-1)
* medicationCodeableConcept.coding[+] = $atc#L01EB04 "Osimertinib"
* medicationCodeableConcept.coding[=].version = "2024"
* medicationCodeableConcept.coding[+] = $unii#3C06JJ0Z2O "OSIMERTINIB"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)
* insert MtbBeschlussPrioritaet(1)
* insert MtbBeschlussEvidenz(m1A, http://www.ncbi.nlm.nih.gov/pubmed, 29151359)

Instance: mii-exa-test-data-mtb-therapieempfehlung-2
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Sotorasib"
Description: "Test instance for second therapy recommendation (part of combination)"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #option
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-patient-1)
* medicationCodeableConcept.coding = $atc#L01XX73 "Sotorasib"
* medicationCodeableConcept.coding.version = "2024"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)

Instance: mii-exa-test-data-mtb-therapieempfehlung-3
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Title: "MTB Therapieempfehlung - Trametinib"
Description: "Test instance for third therapy recommendation (part of combination)"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
* status = #draft
* intent = #option
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-patient-1)
* medicationCodeableConcept.coding = $atc#L01EE01 "Trametinib"
* medicationCodeableConcept.coding.version = "2024"
* reasonReference[Primaertumor] = Reference(mii-exa-test-data-mtb-diagnose-primaertumor-1)

// =============================================================================
// 37. MII_PR_MTB_Therapieempfehlung_Kombination (RequestGroup, extends Onko)
// =============================================================================
Instance: mii-exa-test-data-mtb-therapieempfehlung-kombination-1
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
Title: "MTB Therapieempfehlung Kombination"
Description: "Test instance for combination therapy recommendation"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
* status = #draft
* intent = #proposal
* authoredOn = "2024-03-28"
* subject = Reference(mii-exa-test-data-patient-1)
* code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* action[+].resource = Reference(mii-exa-test-data-mtb-therapieempfehlung-2)
* action[+].resource = Reference(mii-exa-test-data-mtb-therapieempfehlung-3)
* insert MtbBeschlussPrioritaet(2)
* insert MtbBeschlussEvidenz(m1B, http://doi.org, 10.1056/NEJMoa2030428)

// =============================================================================
// 38. MII_PR_MTB_Studieneinschluss_Anfrage (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-studieneinschluss-anfrage-1
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Usage: #example
Title: "MTB Studieneinschluss Anfrage"
Description: "Test instance for study enrollment request with all MS elements"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
* status = #draft
* intent = #proposal
* subject = Reference(mii-exa-test-data-patient-1)
* supportingInfo = Reference(mii-exa-test-data-mtb-studie-1)
* insert MtbBeschlussSubPrioritaet(3.1)
* insert MtbBeschlussEvidenzPublikation(http://www.ncbi.nlm.nih.gov/pubmed, 34726479)

// =============================================================================
// 39. MII_PR_MTB_Studie (ResearchStudy, extends Studie)
// =============================================================================
Instance: mii-exa-test-data-mtb-studie-1
InstanceOf: MII_PR_MTB_Studie
Usage: #example
Title: "MTB Studie"
Description: "Test instance for MTB research study"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
* identifier[+].system = $mii-ns-mtb-nct
* identifier[=].value = "05252390"
* status = #active
* title = "Phase III NSCLC EGFR Mutation Study"
* primaryPurposeType = #treatment
* phase = #phase-3

// =============================================================================
// 40. MII_PR_MTB_Humangenetische_Beratung_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-humangenetische-beratung-1
InstanceOf: MII_PR_MTB_Humangenetische_Beratung_Auftrag
Usage: #example
Title: "MTB Humangenetische Beratung Auftrag"
Description: "Test instance for human genetics counseling order"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#788339009 "Genetic consultation (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* reasonCode = $mii-cs-mtb-auftrag-begruendung#secondary-tumor

// =============================================================================
// 41. MII_PR_MTB_Histologie_Evaluation_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-histologie-evaluation-1
InstanceOf: MII_PR_MTB_Histologie_Evaluation_Auftrag
Usage: #example
Title: "MTB Histologie Evaluation Auftrag"
Description: "Test instance for histology evaluation order"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#183825009 "Refer for histology (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* reasonReference = Reference(mii-exa-test-data-mtb-tumorzellgehalt-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)

// =============================================================================
// 42. MII_PR_MTB_Biopsie_Auftrag (ServiceRequest)
// =============================================================================
Instance: mii-exa-test-data-mtb-biopsie-auftrag-1
InstanceOf: MII_PR_MTB_Biopsie_Auftrag
Usage: #example
Title: "MTB Biopsie Auftrag"
Description: "Test instance for biopsy order"
* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag"
* status = #draft
* intent = #proposal
* code.coding = $SCT#86273004 "Biopsy (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* reasonReference = Reference(mii-exa-test-data-mtb-tumorzellgehalt-1)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-1)
