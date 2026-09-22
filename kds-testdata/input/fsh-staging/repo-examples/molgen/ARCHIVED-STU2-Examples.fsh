Instance: mii-exa-molgen-befundbericht-2
InstanceOf: mii-pr-molgen-molekulargenetischer-befundbericht
Usage: #example
Title: "Molekulargentischer Befund 2: Molekulargenetische Diagnose eines Cornelia de Lange-Syndrom autosomal dominanter Erbgang"
Description: "Beispiel für molekulargenetischen Befund Molekulargenetische Diagnose eines Cornelia de Lange-Syndrom autosomal dominanter Erbgang."
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Gillis LA, McCallum J, Kaur M, DeScipio C, Yaeger D, Mariani A, Kline AD, Li HH, Devoto M, Jackson LG, Krantz ID. NIPBL mutational analysis in 120 individuals with Cornelia de Lange syndrome and evaluation of genotype-phenotype correlations. Am J Hum Genet. 2004 Oct;75(4):610-23. doi: 10.1086/424698. Epub 2004 Aug 18. PMID: 15318302; PMCID: PMC1182048."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/15318302/"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Kawauchi S, Calof AL, Santos R, Lopez-Burks ME, Young CM, Hoang MP, Chua A, Lao T, Lechner MS, Daniel JA, Nussenzweig A, Kitzes L, Yokomori K, Hallgrimsson B, Lander AD. Multiple organ system defects and transcriptional dysregulation in the Nipbl(+/-) mouse, a model of Cornelia de Lange Syndrome. PLoS Genet. 2009 Sep;5(9):e1000650. doi: 10.1371/journal.pgen.1000650. Epub 2009 Sep 18. PMID: 19763162; PMCID: PMC2730539."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/19763162/"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Huisman SA, Redeker EJ, Maas SM, Mannens MM, Hennekam RC. High rate of mosaicism in individuals with Cornelia de Lange syndrome. J Med Genet. 2013 May;50(5):339-44. doi: 10.1136/jmedgenet-2012-101477. Epub 2013 Mar 15. PMID: 23505322."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/23505322/"
* extension[workflow-relatedArtifact][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.type = http://hl7.org/fhir/related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.citation = "Kline AD, Moss JF, Selicorni A, Bisgaard AM, Deardorff MA, Gillett PM, Ishman SL, Kerr LM, Levin AV, Mulder PA, Ramos FJ, Wierzba J, Ajmone PF, Axtell D, Blagowidow N, Cereda A, Costantino A, Cormier-Daire V, FitzPatrick D, Grados M, Groves L, Guthrie W, Huisman S, Kaiser FJ, Koekkoek G, Levis M, Mariani M, McCleery JP, Menke LA, Metrena A, O'Connor J, Oliver C, Pie J, Piening S, Potter CJ, Quaglio AL, Redeker E, Richman D, Rigamonti C, Shi A, Tümer Z, Van Balkom IDC, Hennekam RC. Diagnosis and management of Cornelia de Lange syndrome: first international consensus statement. Nat Rev Genet. 2018 Oct;19(10):649-666. doi: 10.1038/s41576-018-0031-0. PMID: 29995837; PMCID: PMC7136165."
* extension[workflow-relatedArtifact][=].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/29995837/"
* extension[coded-note][+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report-note"
* extension[coded-note][=].valueAnnotation.extension[code].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/annotation-code"
* extension[coded-note][=].valueAnnotation.extension[code].valueCodeableConcept = http://snomed.info/sct#116148004 "Molecular genetics procedure (procedure)"
* extension[coded-note][=].valueAnnotation.text = "Gen-Panel zusammengestellt nach den aktuellen Empfehlungen des Deutschen Konsortiums für erblichen Brust- und Eierstockkrebs sowie der ClinGen Breast/Ovarian Cancer Working Group (Lee et al. 2019, PMID: 30504931). Nach DNA-Extraktion wurden alle kodierenden Exons der zu untersuchenden Gene einschließlich flankierender intronischer Regionen (mindestens von -3 bis +8) angereichert (Custom Panel V02, IDT) und auf einem Illumina NextSeq 500-, NextSeq 550- oder NovaSeq 6000-Sequencer sequenziert. Zur Verifizierung der DNA-Probe wurden 14 SNPs (Single Nucleotide Polymorphism) mittels kompetitiver allelspezifischer PCR unter Verwendung fluoreszenzmarkierter Primer amplifiziert (StepOnePlus System, ThermoFisher Scientific) und analysiert (StepOnePlus software für Genotyping Experiments) und die Ergebnisse mit den Daten der NGS-Analyse verglichen (megSAP). Der Abgleich der ermittelten DNA-Sequenz erfolgte mit den in den Gendatenbanken niedergelegten Sequenzen: BRCA1 - NCBI Reference Sequence NM_007294.2, BRCA2 - ensembl ENST00000380152, ATM - NCBI Reference Sequence NM_000051.3, BARD1 - ENST00000260947.4, BRIP1 - NCBI Reference Sequence NM_032043.2, CDH1 - ensembl ENST00000261769, CHEK2 - NCBI Reference Sequence NM_007194.3, PALB2 - ensembl ENST00000261584, PTEN -  NCBI Reference Sequence NM_000214.4, RAD51C - ensembl ENST00000337432, RAD51D - ensembl ENST00000345365,  STK11 -  ensembl ENST00000326873.7 und TP53 - ensembl ENST00000269305. Es wurden außerdem Varianten nachgewiesen, die nach heutigem Wissensstand als Normvarianten ohne pathologische Bedeutung zu werten sind."
* extension[supporting-info][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[supporting-info][=].valueReference = Reference(mii-exa-molgen-chargeitem-ebm-21)
* extension[supporting-info][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[supporting-info][=].valueReference = Reference(mii-exa-molgen-chargeitem-ebm-22)
* extension[supporting-info][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[supporting-info][=].valueReference = Reference(mii-exa-molgen-chargeitem-ebm-23)
* extension[supporting-info][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[supporting-info][=].valueReference = Reference(mii-exa-molgen-chargeitem-ebm-24)
* extension[supporting-info][+].url = "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
* extension[supporting-info][=].valueReference = Reference(mii-exa-molgen-bundle-befund-2-nipbl-condition-lab)
* basedOn = Reference(mii-exa-molgen-anforderung-2)
* status = http://hl7.org/fhir/diagnostic-report-status#final
* category[Genetics] = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code[+] = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-molgen-patient-2)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* specimen = Reference(mii-exa-molgen-specimen-2)
//* result[gen-grouper] = Reference(mii-exa-molgen-gruppierung-beobachtungen-2-nipbl)  // SLICE REMOVED IN STU3
* result[diagnostic-implication] = Reference(mii-exa-molgen-diagnostische-implikation-2)
* result[variant] = Reference(mii-exa-molgen-variante-2)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-nipbl)  // PROFILE REMOVED IN STU3
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-hdac8)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-rad21)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-smc1a)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-smc3)
//* result[region-studied][+] = Reference(mii-exa-molgen-untersuchte-region-2-tp63)
* conclusion = "Nachweis der pathogenen Variante c.2207del p.(Pro736Glnfs*58) (heterozygot) im NIPBL-Gen."
*/

// ============================================
// From GenomicStudy.fsh - Another fusion example
// ============================================

//Instance: mii-exa-molgen-befundbericht-tumorboard-3
//InstanceOf: sd-mii-modul-molgen-molekulargenetischer-befundbericht
//Usage: #example
//Title: "Molekulargentischer Befund 3: Tumorboard Genfusion"
//Description: "Beispiel für molekulargenetischen Befund Tumorboard Genfusion."
//... (duplicate of above, appears in both files)

// ============================================
// NOTE: UntersuchteRegion and ErgebnisZusammenfassung profiles and all their examples
// are preserved in their original files (UntersuchteRegion.fsh and ErgebnisZusammenfassung.fsh)
// but completely commented out as entire files
// ============================================
