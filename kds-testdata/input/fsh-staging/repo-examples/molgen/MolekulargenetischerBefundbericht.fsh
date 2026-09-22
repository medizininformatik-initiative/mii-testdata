Instance: mii-exa-molgen-befundbericht-1
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
Title: "Molekulargentischer Befund 1: BRAF mutiert colorektales Adenokarzinom"
Description: "Beispiel für molekulargenetischen Befund BRAF mutiert bei colorektalem Adenokarzniom."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(mii-exa-molgen-genomic-study-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-molgen-medikationsempfehlung-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-molgen-folgemassnahme-1)
* extension[supporting-info].valueReference = Reference(mii-exa-molgen-family-member-history-1)
* basedOn = Reference(mii-exa-molgen-anforderung-1)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen = Reference(mii-exa-molgen-specimen-1)
//* result[gen-grouper] = Reference(mii-exa-molgen-gruppierung-beobachtungen-1)
//result[overall] = Reference(mii-exa-molgen-ergebnis-zusammenfassung-1)
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-1)
* result[therapeutic-implication] = Reference(mii-exa-molgen-therapeutische-implikation-1)
* result[variant] = Reference(mii-exa-molgen-variante-1)
//* result[region-studied] = Reference(mii-exa-molgen-untersuchte-region-1)
* result[genotype] = Reference(mii-exa-molgen-genotyp-1)
* result[biomarker][+] = Reference(mii-exa-molgen-mutationslast-1)
* result[biomarker][+] = Reference(mii-exa-molgen-mikrosatelliteninstabilitaet-1)
* conclusion = "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor prüfen."

Instance: mii-exa-molgen-befundbericht-tumorboard-3
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
Title: "Molekulargentischer Befund 3: Tumorboard Genfusion"
Description: "Beispiel für molekulargenetischen Befund Tumorboard Genfusion."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(mii-exa-molgen-genomic-study-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-molgen-medikationsempfehlung-1)
* extension[recommended-action][+].valueReference = Reference(mii-exa-molgen-folgemassnahme-1)
* extension[supporting-info].valueReference = Reference(mii-exa-molgen-family-member-history-1)
* basedOn = Reference(mii-exa-molgen-anforderung-1)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen = Reference(mii-exa-molgen-specimen-1)
// result[gen-grouper] removed - slice no longer exists in STU3
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-1)
* result[therapeutic-implication] = Reference(mii-exa-molgen-therapeutische-implikation-1)
* result[variant] = Reference(mii-exa-molgen-variante-1)
// result[region-studied] removed - use genomic-study extension instead
* result[genotype] = Reference(mii-exa-molgen-genotyp-1)
* result[biomarker] = Reference(mii-exa-molgen-mutationslast-1)
* conclusion = "Nachweis der bekannten treibenden FGFR2-Fusion"

// 04 docx

Instance: mii-exa-molgen-befundbericht-trurisk-panel
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
Title: "Molekulargentischer Befund Familiäre Belastung für Brust- und Eierstockkrebs"
Description: "Beispiel für molekulargenetischen Befund einer BRCA1 Variante bei Familiärer Belastung für Brust- und Eierstockkrebs."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report|3.0.0"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Plon SE, Eccles DM, Easton D, Foulkes WD, Genuardi M, Greenblatt MS, Hogervorst FB, Hoogerbrugge N, Spurdle AB, Tavtigian SV; IARC Unclassified Genetic Variants Working Group. Sequence variant classification and reporting: recommendations for improving the interpretation of cancer susceptibility genetic test results. Hum Mutat. 2008 Nov;29(11):1282-91. doi: 10.1002/humu.20880. PMID: 18951446; PMCID: PMC3075918."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://doi.org/10.1002/humu.20880"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Rhiem K, Auber B, Briest S, Dikow N, Ditsch N, Dragicevic N, Grill S, Hahnen E, Horvath J, Jaeger B, Kast K, Kiechle M, Leinert E, Morlot S, Püsken M, Schäfer D, Schott S, Schroeder C, Siebers-Renelt U, Solbach C, Weber-Lassalle N, Witzel I, Zeder-Göß C, Schmutzler RK. Consensus Recommendations of the German Consortium for Hereditary Breast and Ovarian Cancer. Breast Care (Basel). 2022 Apr;17(2):199-207. doi: 10.1159/000516376. Epub 2021 Jul 19. PMID: 35702495; PMCID: PMC9149395."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://doi.org/10.1159%2F000516376"
* extension[genomic-study].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[genomic-study].valueReference = Reference(mii-exa-molgen-genomic-study-trurisk-panel)
* extension[recommended-action].valueReference = Reference(mii-exa-molgen-folgemassnahme-brca1)
* extension[genomic-risk-assessment].valueReference = Reference(mii-exa-molgen-prs-brca1)
* basedOn = Reference(mii-exa-molgen-anforderung-trurisk-panel)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code[+] = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient-brca1)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen = Reference(mii-exa-molgen-specimen-brca1)
* result[variant] = Reference(mii-exa-molgen-variante-brca1)
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-brca1)
* conclusion = "Nachweis heterozygoter Sequenzveränderung, die zum Funktionsverlust führt."
