Instance: mii-exa-seltene-molgen-variant-smn1-deletion
InstanceOf: Observation
Usage: #example
Title: "SMN1 Gen Deletion - MolGen Variante"
Description: "Homozygote Deletion des SMN1-Gens bei SMA"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:11117 "SMN1"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code = http://loinc.org#53034-5 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6705-3 "Homozygous"
* component[+].code.text = "Copy Number"
* component[=].valueInteger = 0
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"

Instance: mii-exa-seltene-molgen-diagnostic-implication-sma
InstanceOf: DiagnosticReport
Usage: #example
Title: "SMA Diagnostische Implikation - MolGen"
Description: "Diagnostischer Bericht zur SMA-Genetik"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-07-26"
* result[+] = Reference(mii-exa-seltene-molgen-variant-smn1-deletion)
* conclusion = "Homozygote Deletion des SMN1-Gens nachgewiesen. Diagnose: Spinale Muskelatrophie. 2 Kopien des SMN2-Gens vorhanden, vereinbar mit schwerem Phänotyp (Typ 1)."
* conclusionCode = http://omim.org#253300 "Spinal muscular atrophy, type I"

// ============================================
// DMD GENETIC FINDINGS
// ============================================

Instance: mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47
InstanceOf: Observation
Usage: #example
Title: "DMD Exon 45-47 Deletion - MolGen Variante"
Description: "In-frame Deletion im DMD-Gen (Exons 45-47) — vereinbar mit Becker, nicht mit Duchenne"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-09-15"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2928 "DMD"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code = http://loinc.org#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept.text = "NC_000023.11:g.31774346_31953400del"
* component[+].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.6439-?_6912+?del"
* component[+].code.text = "Deleted Exons"
* component[=].valueString = "Exons 45-47"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"

Instance: mii-exa-seltene-molgen-diagnostic-dmd
InstanceOf: DiagnosticReport
Usage: #example
Title: "DMD Exon 45-47 - Diagnostische Implikation (Becker)"
Description: "Diagnostischer Bericht: in-frame Deletion, Becker- statt Duchenne-Muskeldystrophie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-09-15"
* result[+] = Reference(mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47)
* conclusion = "In-frame Deletion der Exons 45-47 im DMD-Gen (c.6439-?_6912+?del, 474 Basen — durch drei teilbar, das Leseraster bleibt erhalten). Es entsteht ein verkürztes, aber teilfunktionsfähiges Dystrophin. Vereinbar mit Becker-Muskeldystrophie; Duchenne-Muskeldystrophie ist damit ausgeschlossen."
* conclusionCode = http://omim.org#300376 "Becker muscular dystrophy"

// ============================================
// BRCA1 GENETIC FINDINGS
// ============================================

Instance: mii-exa-seltene-molgen-variant-brca1-pathogenic
InstanceOf: Observation
Usage: #example
Title: "BRCA1 Pathogene Variante - MolGen"
Description: "Pathogene BRCA1-Variante"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-11-01"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.68_69del"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Glu23Valfs*17"
* component[+].code = http://loinc.org#53034-5 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6706-1 "Heterozygous"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* component[+].code.text = "ClinVar ID"
* component[=].valueString = "17668"

Instance: mii-exa-seltene-molgen-brca-panel
InstanceOf: DiagnosticReport
Usage: #example
Title: "BRCA1/2 Panel - Diagnostische Implikation"
Description: "Hereditäres Karzinom-Panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#81247-9 "Master HL7 genetic variant reporting panel"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-11-01"
* result[+] = Reference(mii-exa-seltene-molgen-variant-brca1-pathogenic)
* conclusion = "Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Diese Frameshift-Mutation führt zu einem vorzeitigen Stopcodon. Erhöhtes Risiko für Mamma- und Ovarialkarzinom. Lebenszeitrisiko Mammakarzinom: 60-72%, Ovarialkarzinom: 40-44%."
* conclusionCode = http://omim.org#604370 "Breast-ovarian cancer, familial, 1"

// ============================================
// CFTR GENETIC FINDINGS
// ============================================

Instance: mii-exa-seltene-molgen-variant-cftr-f508del-homozygous
InstanceOf: Observation
Usage: #example
Title: "CFTR F508del Homozygot - MolGen Variante"
Description: "Homozygote F508del Mutation bei Mukoviszidose"
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
* component[=].valueCodeableConcept.text = "c.1521_1523delCTT"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Phe508del"
* component[+].code = http://loinc.org#53034-5 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6705-3 "Homozygous"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* component[+].code.text = "Legacy name"
* component[=].valueString = "F508del"

Instance: mii-exa-seltene-molgen-cf-diagnostic
InstanceOf: DiagnosticReport
Usage: #example
Title: "CF Diagnostische Implikation - MolGen"
Description: "Mukoviszidose genetischer Befund"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-08-25"
* result[+] = Reference(mii-exa-seltene-molgen-variant-cftr-f508del-homozygous)
* conclusion = "Homozygot für die F508del-Mutation (p.Phe508del, c.1521_1523delCTT) im CFTR-Gen. Dies ist die häufigste CF-verursachende Mutation. Bei Homozygotie ist mit einem klassischen, schweren CF-Phänotyp zu rechnen."
* conclusionCode = http://omim.org#219700 "Cystic fibrosis"

// ============================================
// Ergaenzt 2026-09-03 — Korrektur eines fachlichen Widerspruchs.
//
// Der IG fuehrte die Deletion der Exons 45-47 an ZWEI Stellen mit
// entgegengesetzter Aussage: hier als "Out-of-frame ... Duchenne", im
// Ausschlussbeispiel example-dmd-excluded-bmd-confirmed als "In-frame ...
// vereinbar mit Becker, NICHT Duchenne". Beides kann nicht stimmen.
//
// Die Arithmetik entscheidet: c.6439 bis c.6912 sind 474 Basen, 474 / 3 = 158.
// Das Leseraster bleibt erhalten — die Deletion ist IN-frame und fuehrt zu
// Becker, nicht zu Duchenne. Das Ausschlussbeispiel hatte recht; Variante und
// Befund oben sind entsprechend korrigiert.
//
// Damit fehlte dem bestaetigten Duchenne-Beispiel sein Beleg. Es bekommt hier
// eine echte out-of-frame Deletion: Exon 45 allein umfasst 176 Basen,
// 176 / 3 geht nicht auf. Bewusst OHNE erfundene genomische Koordinaten —
// angegeben ist nur, was sich belegen laesst.
// ============================================

Instance: mii-exa-seltene-molgen-variant-dmd-deletion-exon45
InstanceOf: Observation
Usage: #example
Title: "DMD Exon 45 Deletion - MolGen Variante"
Description: "Out-of-frame Deletion im DMD-Gen (Exon 45) — führt zu Duchenne"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-09-15"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2928 "DMD"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code.text = "Deleted Exons"
* component[=].valueString = "Exon 45"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* note.text = "Deletion des Exons 45 (176 Basen, nicht durch drei teilbar). Das Leseraster verschiebt sich, es entsteht ein vorzeitiges Stopcodon und kein funktionsfaehiges Dystrophin. Duchenne-Muskeldystrophie."

Instance: mii-exa-seltene-molgen-diagnostic-dmd-duchenne
InstanceOf: DiagnosticReport
Usage: #example
Title: "DMD Exon 45 - Diagnostische Implikation (Duchenne)"
Description: "Diagnostischer Bericht Duchenne-Muskeldystrophie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#51969-4 "Genetic analysis report"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-09-15"
* result[+] = Reference(mii-exa-seltene-molgen-variant-dmd-deletion-exon45)
* conclusion = "Out-of-frame Deletion des Exons 45 im DMD-Gen. Leserasterverschiebung mit vorzeitigem Stopcodon und komplettem Verlust des funktionsfaehigen Dystrophins. Diagnose: Duchenne-Muskeldystrophie."
* conclusionCode = http://omim.org#310200 "Duchenne muscular dystrophy"

// PKU-Variante — der Therapieempfehlung fehlte ihr genetischer Beleg.

Instance: mii-exa-seltene-molgen-variant-pah-pku
InstanceOf: Observation
Usage: #example
Title: "PAH c.1222C>T - MolGen Variante"
Description: "Pathogene PAH-Variante p.Arg408Trp bei Phenylketonurie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#69548-6 "Genetic variant assessment"
* subject = Reference(mii-exa-seltene-patient)
* effectiveDateTime = "2024-08-25"
* valueCodeableConcept = http://snomed.info/sct#10828004 "Positive"
* component[+].code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:8582 "PAH"
* component[+].code = http://loinc.org#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = http://loinc.org#LA6683-2 "Germline"
* component[+].code = http://loinc.org#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.1222C>T"
* component[+].code = http://loinc.org#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Arg408Trp"
* component[+].code = http://loinc.org#53034-5 "Allelic state"
* component[=].valueCodeableConcept = http://loinc.org#LA6705-3 "Homozygous"
* component[+].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
* note.text = "Homozygote pathogene PAH-Variante. Klassische Phenylketonurie; diaetetische Therapie indiziert."
