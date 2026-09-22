Instance: mii-exa-mtb-kim-musterperson-ngs-bericht
InstanceOf: MII_PR_MTB_NGS_Bericht
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Ergebnisse des NGS-Bericht von Kim Musterperson"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* issued = "2023-03-28T00:00:00.000Z" // Ist das Datum des NGS-Berichts irgendwo angegeben?
* subject = Reference(Patient/PatientKimMusterperson)
* specimen = Reference(Specimen/PatientKimMusterperson-AscitesSpecimen-2)
* result[+] = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* result[+] = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* result[+] = Reference(mii-exa-mtb-kim-musterperson-CNVariante-CCNE1)

Instance: mii-exa-mtb-kim-musterperson-genomic-study
InstanceOf: MII_PR_MTB_Genomic_Study
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Details zur Durchführung NGS-Bericht von Kim Musterperson"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study)
* status = #completed
* subject = Reference(Patient/PatientKimMusterperson)
* extension[genomic-study-analysis][+].valueReference =  Reference(mii-exa-mtb-kim-musterperson-genomic-study-analysis-1)
* extension[genomic-study-analysis][+].valueReference =  Reference(mii-exa-mtb-kim-musterperson-genomic-study-analysis-2)
* extension[genomic-study-analysis][+].valueReference =  Reference(mii-exa-mtb-kim-musterperson-genomic-study-analysis-3)

Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Details zur Analyse NGS-Bericht von Kim Musterperson - TSO500"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)
* status = #completed
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject = Reference(Patient/PatientKimMusterperson)
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#ngs-mps "Next-Generation (NGS)/Massively parallel sequencing (MPS)" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001483 "SNV" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001483 "SNV" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[=].valueCodeableConcept = http://loinc.org#LA26806-2 "GRCh38"

Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-2
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson HLA Status"
Description: "Diagnostische Prozeduren  NGS-Bericht von Kim Musterperson - HLA-Status - keine näheren Angaben in Beispiel"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)
* status = #completed
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject = Reference(Patient/PatientKimMusterperson)

Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-3
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Diagnostische Prozeduren - MolPatho-Bericht von Kim Musterperson - Immunhistochemie"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)
* status = #completed
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject = Reference(Patient/PatientKimMusterperson)
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#immunohistochemistry "Immunohistochemistry" 
 
 

// Nachweis einer pathogenen TP53-Mutation ohne direkte therapeutische Relevanz.

Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "TP53 Einfache Variante"
Description: "Nachweis einer pathogenen TP53-Mutation"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* subject = Reference(Patient/PatientKimMusterperson)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:11998 "TP53"
* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NP_000537.3:p.Arg213Ter

// Diagnostische Implikation der TP53 Mutation (Pathogenität)

Instance: mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53
InstanceOf: MII_PR_MTB_Diagnostische_Implikation
Title: "TP53 Diagnostische Implikation"
Description: "Diagnostische Bedeutung der festgestellten TP53 Mutation"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(Patient/PatientKimMusterperson)
* derivedFrom = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* component[clinical-significance].code = http://loinc.org#53037-8
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"

// Nachweis einer PIK3R1-Mutation.

Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "PIK3R1 Einfache Variante"
Description: "Nachweis einer PIK3R1-Mutation"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* subject = Reference(Patient/PatientKimMusterperson)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:8979 "PIK3R1"
* component[representative-protein-hgvs].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[representative-protein-hgvs].valueCodeableConcept = http://varnomen.hgvs.org#NP_852664.1:p.(Glu160Ter)
// 

// Add diagnostic implication for PIK3R1 mutation
// clinical significance = oncogenic/pathogenic

// Therapeutische Implikation der PIK3R1 Mutation

Instance: mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1
InstanceOf: MII_PR_MTB_Therapeutische_Implikation
Title: "PIK3R1 Therapeutische Implikation"
Description: "Therapeutische Bedeutung der festgestellten PIK3R1 Mutation"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* subject = Reference(Patient/PatientKimMusterperson)
* derivedFrom = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* component[conclusion-string].code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3)."
* component[medication-assessed].code = http://loinc.org#51963-7 "Medication assessed [ID]"
* component[medication-assessed].valueCodeableConcept = http://fhir.de/CodeSystem/bfarm/atc#L01EE "Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m3

// Kopienzahlveränderung von CCNE1.

Instance: mii-exa-mtb-kim-musterperson-CNVariante-CCNE1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Title: "CCNE1 Einfache Variante 2"
Description: "Kopienzahlveränderung bei einer CCNE1-Mutation"
Usage: #example
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* valueCodeableConcept = http://loinc.org#LA9633-4 "Present"
* subject = Reference(Patient/PatientKimMusterperson)
* component[gene-studied].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:1589 "CCNE1"
* component[cnv-type].code = http://bwhc.de/mtb/genetics-copy-number-variant#type
* component[cnv-type].valueCodeableConcept = http://bwhc.de/mtb/genetics-copy-number-variant#high-level-gain "high-level-gain"
* component[copy-number].code = http://loinc.org#82155-3 "Genomic structural variant copy number"
* component[copy-number].valueQuantity.value = 7
* component[copy-number].valueQuantity.system = http://unitsofmeasure.org
* component[copy-number].valueQuantity.code = #1
