// ============================================================================
// MII MTB Module - Aliases and RuleSets
// ============================================================================

// MTB-specific CodeSystems
Alias: $mii-cs-mtb-follow-up-status = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status
Alias: $mii-cs-mtb-response-befund-beurteilungsmethode = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode
Alias: $mii-cs-mtb-response-befund-beurteilung = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung
Alias: $mii-cs-mtb-bestimmungsmethode-tumorzellgehalt = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt
Alias: $mii-cs-mtb-auftrag-begruendung = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung
Alias: $mii-ns-mtb-nct = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-mtb-nct

// MTB Therapy end-reason (used in Systemische Therapie)
Alias: $mii-cs-onko-therapie-grund-ende = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund

// Genomics Reporting
Alias: $TBD = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs
Alias: $fhir-observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $hl7-v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $hl7-organization-type = http://terminology.hl7.org/CodeSystem/organization-type

// Oncotree
Alias: $OT = http://data.mskcc.org/ontologies/oncotree

// Molecular biomarker codes
Alias: $bwhc-cnv-type = http://bwhc.de/mtb/genetics-copy-number-variant
Alias: $UNIPROT = https://www.uniprot.org/uniprot

// Standard terminologies (may already be defined in other alias files)
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status

// MS-Auffuellung: zusaetzliche CodeSysteme
Alias: $mbo-category = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/molecular-biomarker-ontology-cs
Alias: $genomic-study-type = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-type-cs
Alias: $mii-cs-mtb-leitlinienbehandlung-status = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status
Alias: $mii-cs-mtb-zulassungsstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus
Alias: $mii-cs-mtb-panel-capability = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability
Alias: $mii-cs-mtb-therapie-status-grund = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund
Alias: $mii-cs-mtb-antwort-entscheidung = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung
Alias: $mii-cs-onko-stellungzurop = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop
Alias: $mii-cs-onko-therapie-protokolle = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle
Alias: $v3-interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $med-statement-category = http://terminology.hl7.org/CodeSystem/medication-statement-category
Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type

// RuleSets for MTB therapy recommendations
RuleSet: MtbBeschlussPrioritaet(prio)
* extension[Prioritaet].valuePositiveInt = {prio}

RuleSet: MtbBeschlussSubPrioritaet(prio)
* extension[Prioritaet].valueDecimal = {prio}

RuleSet: MtbBeschlussEvidenzgrad(grad)
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #{grad}

RuleSet: MtbBeschlussEvidenzPublikation(quelle, id)
* extension[Publikation][+].valueIdentifier.system = "{quelle}"
* extension[Publikation][=].valueIdentifier.value = "{id}"

RuleSet: MtbBeschlussEvidenz(grad, quelle, id)
* insert MtbBeschlussEvidenzgrad({grad})
* insert MtbBeschlussEvidenzPublikation({quelle}, {id})
