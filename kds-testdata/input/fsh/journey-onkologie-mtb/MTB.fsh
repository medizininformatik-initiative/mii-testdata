// ============================================================================
// JOURNEY Patient-14 — Modul Molekulares Tumorboard (MTB)
//
// DER SCHARNIERPUNKT DER JOURNEY: Die therapeutische Implikation leitet sich
// (derivedFrom) aus MSI und TMB ab, die Therapieempfehlung setzt sie um, und
// die Onko-Systemische-Therapie referenziert den MTB-Therapieplan über
// basedOn. Damit ist die Kette
//   molekularer Befund -> Implikation -> Empfehlung -> Therapie -> Ansprechen
// vollständig aus den Daten rekonstruierbar.
// ============================================================================

RuleSet: JourneyMtbObsBase
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)

// ----------------------------------------------------------------------------
// Behandlungsepisode — die Klammer des MTB-Falls
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-mtb-episode-1
InstanceOf: MII_PR_MTB_Behandlungsepisode
Usage: #example
Description: "MTB Behandlungsepisode: Fallvorstellung Patient 14"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* subject = Reference(mii-exa-test-data-patient-14)
* effectivePeriod.start = "2024-03-26"
* effectivePeriod.end = "2024-04-18"
* problem = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* investigation[NgsBericht][+].item = Reference(mii-exa-test-data-patient-14-mtb-ngs-bericht-1)
* investigation[ECOG][+].item = Reference(mii-exa-test-data-patient-14-onko-ecog-1)
* supportingInfo[Therapieplan] = Reference(mii-exa-test-data-patient-14-mtb-therapieplan-1)
* extension[LeitlinienbehandlungStatus].valueCoding = $mii-cs-mtb-leitlinienbehandlung-status#non-exhausted "non-exhausted"
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)

// ----------------------------------------------------------------------------
// NGS-Bericht und molekulare Befunde
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-mtb-ngs-bericht-1
InstanceOf: MII_PR_MTB_NGS_Bericht
Usage: #example
Description: "MTB NGS-Bericht: Comprehensive Genomic Profiling am Sigmaresektat (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category = $hl7-v2-0074#GE "Genetics"
* code = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* effectiveDateTime = "2024-04-09"
* issued = "2024-04-09T15:00:00+02:00"
* specimen = Reference(mii-exa-test-data-patient-14-onko-specimen-1)
* performer = Reference(mii-exa-test-data-organization-charite)
* result[EinfacheVariante][+] = Reference(mii-exa-test-data-patient-14-mtb-variante-braf)
* result[MSI] = Reference(mii-exa-test-data-patient-14-mtb-msi-1)
* result[TumorMutionalBurden] = Reference(mii-exa-test-data-patient-14-mtb-tmb-1)
* result[+] = Reference(mii-exa-test-data-patient-14-mtb-implikation-1)
* conclusion = "Panel-Sequenzierung (523 Gene): BRAF p.V600E nachgewiesen, Mikrosatelliteninstabilitaet hoch (MSI-H), Tumormutationslast 41,3 Mutationen/Megabase. KRAS und NRAS Wildtyp."

Instance: mii-exa-test-data-patient-14-mtb-variante-braf
InstanceOf: MII_PR_MTB_Einfache_Variante
Usage: #example
Description: "MTB Variante: BRAF p.Val600Glu (Patient 14)"
* insert JourneyMtbObsBase
* code = $loinc#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* identifier.system = "https://www.charite.de/fhir/sid/mtb-variante"
* identifier.value = "VAR-BRAF-014"
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[representative-protein-hgvs].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = $HGVS#NP_004324.2:p.Val600Glu
* effectiveDateTime = "2024-04-09"
* issued = "2024-04-09T15:00:00+02:00"
* method = $loinc#LA26398-0 "Sequencing"

Instance: mii-exa-test-data-patient-14-mtb-msi-1
InstanceOf: MII_PR_MTB_Mikrosatelliteninstabilitaet
Usage: #example
Description: "MTB MSI: Mikrosatelliteninstabilität hoch (MSI-H, Patient 14)"
* insert JourneyMtbObsBase
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* valueQuantity.value = 0.42
* valueQuantity.unit = "ratio"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* effectiveDateTime = "2024-04-09"
* issued = "2024-04-09T15:00:00+02:00"
* interpretation = $v3-interpretation#H "High"
* method = $loinc#LA26398-0 "Sequencing"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:7127 "MLH1"
* component[biomarker-category].valueCodeableConcept = $mbo-category#nucleicAcid "nucleic acid category"

Instance: mii-exa-test-data-patient-14-mtb-tmb-1
InstanceOf: MII_PR_MTB_Mutationslast
Usage: #example
Description: "MTB TMB: Tumormutationslast 41,3 Mut/Mb (Patient 14)"
* insert JourneyMtbObsBase
* code = $loinc#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* valueQuantity.value = 41.3
* valueQuantity.unit = "mutations per megabase"
* valueQuantity.system = $ucum
* valueQuantity.code = #{Mutations}/1000000{Base}
* interpretation = $v3-interpretation#H "High"
* effectiveDateTime = "2024-04-09"
* issued = "2024-04-09T15:00:00+02:00"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:7127 "MLH1"
* component[biomarker-category].valueCodeableConcept = $mbo-category#nucleicAcid "nucleic acid category"

// ----------------------------------------------------------------------------
// Therapeutische Implikation — der Schluss vom Befund auf die Therapie
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-mtb-implikation-1
InstanceOf: MII_PR_MTB_Therapeutische_Implikation
Usage: #example
Description: "MTB Therapeutische Implikation: MSI-H/TMB-hoch → Checkpoint-Inhibition (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#therapeutic-implication "Therapeutic Implication"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* focus = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* effectiveDateTime = "2024-04-18"
* issued = "2024-04-18T14:00:00+02:00"
// Die Implikation leitet sich aus ZWEI Befunden ab — das ist der
// entscheidende Datenpfad dieser Journey.
* derivedFrom[0] = Reference(mii-exa-test-data-patient-14-mtb-msi-1)
* derivedFrom[1] = Reference(mii-exa-test-data-patient-14-mtb-tmb-1)
* component[conclusion-string].code = $TBD#conclusion-string
* component[conclusion-string].valueString = "MSI-H und TMB > 10 Mut/Mb sagen ein Ansprechen auf PD-1-Checkpoint-Inhibition voraus (Evidenzgrad m1A). Vorrang vor der Standard-Erstlinienchemotherapie."
* component[medication-assessed].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed].valueCodeableConcept = $atc#L01FF02 "Pembrolizumab"
* component[medication-assessed].valueCodeableConcept.coding.version = "2024"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1A

// ----------------------------------------------------------------------------
// MTB-Beschluss: Therapieplan und Therapieempfehlung
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-patient-14-mtb-therapieplan-1
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "MTB Therapieplan: Beschluss Pembrolizumab statt Chemotherapie (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #plan
* category = $mii-cs-onko-therapieplanung-typ#praeth
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* created = "2024-04-18"
* description = "MTB-Beschluss: Erstlinie Pembrolizumab bei MSI-high metastasiertem Kolonkarzinom anstelle der Standard-Chemotherapie."
* addresses = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* supportingInfo[Behandlungsepisode] = Reference(mii-exa-test-data-patient-14-mtb-episode-1)
* activity[extended][Therapieempfehlung][+].reference = Reference(mii-exa-test-data-patient-14-mtb-empfehlung-1)
* activity[obds][+].detail.status = #cancelled
* activity[obds][=].detail.code.coding = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds][=].detail.statusReason.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung#J
* activity[obds][=].detail.statusReason.text = "zugunsten der Immuntherapie zurueckgestellt"

Instance: mii-exa-test-data-patient-14-mtb-empfehlung-1
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "MTB Therapieempfehlung: Pembrolizumab 200 mg alle drei Wochen (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* intent = #proposal
* authoredOn = "2024-04-18"
* subject = Reference(mii-exa-test-data-patient-14)
* encounter = Reference(mii-exa-test-data-patient-14-encounter-2)
* medicationReference = Reference(mii-exa-test-data-medication-pembrolizumab)
* reasonReference[0] = Reference(mii-exa-test-data-patient-14-onko-diagnose-1)
* reasonReference[1] = Reference(mii-exa-test-data-patient-14-mtb-implikation-1)
* insert MtbBeschlussPrioritaet(1)
* insert MtbBeschlussEvidenz(m1A, https://pubmed.ncbi.nlm.nih.gov, 33264544)
* note.text = "Erstlinientherapie. Ansprechkontrolle per CT nach drei Monaten."

// ----------------------------------------------------------------------------
// Wirkstoff
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-medication-pembrolizumab
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Pembrolizumab 100 mg/4 mL Konzentrat zur Infusion"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* code.coding[atcClassDe] = $atc|2023#L01FF02 "Pembrolizumab"
* code.text = "Pembrolizumab 100 mg/4 mL"
* form.coding[EDQM] = $standardterms#50060000 "Concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#716125002 "Pembrolizumab (substance)"
* ingredient.itemCodeableConcept.text = "Pembrolizumab"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 4 'mL' "milliliter"

Instance: mii-exa-test-data-patient-14-medadmin-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Usage: #example
Description: "MedicationAdministration: Erste Pembrolizumab-Gabe (Patient 14)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier[0].system = "https://www.charite.de/fhir/sid/MedicationAdministrations"
* identifier[0].value = "MA_0000051"
* status = #completed
* category = $medication-admin-category#outpatient
* medicationReference = Reference(mii-exa-test-data-medication-pembrolizumab)
* subject = Reference(mii-exa-test-data-patient-14)
* context = Reference(mii-exa-test-data-patient-14-encounter-2)
* effectivePeriod.start = "2024-05-02T09:30:00+02:00"
* effectivePeriod.end = "2024-05-02T10:00:00+02:00"
* performer.actor = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonReference = Reference(mii-exa-test-data-patient-14-mtb-implikation-1)
* partOf = Reference(mii-exa-test-data-patient-14-onko-systemtherapie-1)
* dosage.route = $standardterms#20045000 "Intravenous use"
* dosage.dose = 200 $ucum#mg "mg"
* note.text = "Infusion ueber 30 Minuten, gut vertragen. Naechster Zyklus Tag 22."
