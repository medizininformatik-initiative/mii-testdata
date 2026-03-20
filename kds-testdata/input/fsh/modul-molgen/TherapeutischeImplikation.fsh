// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation
Usage: #example
Description: "Observation: Therapeutische Implikation fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* category[labCategory] = $observation-category#laboratory "Laboratory"
* status = #final
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E. Triple-Therapie mit einem EGFR-Antikoerper sowie einem BRAF- und einem MEK-Inhibitor pruefen."
* component[medication-assessed][0].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][0].valueCodeableConcept.coding[0] = $atc#L01EC "BRAF-Serin-Threoninkinase-Inhibitoren"
* component[medication-assessed][0].valueCodeableConcept.coding[+] = $sct#703645005 "Product containing B-Raf inhibitor (product)"
* component[medication-assessed][0].valueCodeableConcept.text = "BRAF Inhibitor"
* component[medication-assessed][1].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][1].valueCodeableConcept = $atc#L01FE "EGFR (Epidermaler Wachstumsfaktor-Rezeptor)-Inhibitoren"
* component[medication-assessed][2].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][2].valueCodeableConcept = $atc#L01EE "Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren"
* component[evidence-level].code = $loinc#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept.text = "Tier I - Level A (FDA-approved therapy)"
// code inherited from profile pattern (loinc#81259-4)
* component[phenotypic-treatment-context].valueCodeableConcept = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"

// Patient-3 EGFR L858R → Osimertinib (NSCLC Stadium IV)
Instance: mii-exa-test-data-patient-3-molgen-therapeutische-implikation-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation
Usage: #example
Description: "Observation: Therapeutische Implikation fuer EGFR L858R bei NSCLC Stadium IV"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Ramalingam SS et al. Overall Survival with Osimertinib in Untreated, EGFR-Mutated Advanced NSCLC. N Engl J Med. 2020;382(1):41-50. PMID 31751012"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/31751012/"
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* category[labCategory] = $observation-category#laboratory "Laboratory"
* status = #final
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2024-03-20"
* issued = "2024-03-25T10:00:00+01:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-2)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden EGFR-Punktmutation p.(Leu858Arg) in Exon 21 (L858R). Osimertinib (Tagrisso) als Erstlinientherapie empfohlen gemaess FLAURA-Studie und aktueller Zulassung."
* component[medication-assessed][0].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][0].valueCodeableConcept.coding[0] = $atc#L01EB04 "Osimertinib"
* component[medication-assessed][0].valueCodeableConcept.text = "Osimertinib (Tagrisso)"
* component[evidence-level].code = $loinc#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept.text = "Tier I - Level A (EMA/FDA-zugelassen, FLAURA)"
// code inherited from profile pattern (loinc#81259-4)
* component[phenotypic-treatment-context].valueCodeableConcept = $sct#254637007 "Non-small cell carcinoma of lung (disorder)"

// Patient-3 EGFR Exon-20-Insertion → Amivantamab (off-label 1L / zugelassen 2L)
Instance: mii-exa-test-data-patient-3-molgen-therapeutische-implikation-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation
Usage: #example
Description: "Observation: Therapeutische Implikation fuer EGFR Exon-20-Insertion bei NSCLC - Amivantamab"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Park K et al. Amivantamab in EGFR Exon 20 Insertion-Mutated Non-Small-Cell Lung Cancer Progressing on Platinum Chemotherapy (CHRYSALIS). J Clin Oncol. 2021;39(30):3391-3402. PMID 34339292"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/34339292/"
* code = $tbd-codes-cs#therapeutic-implication "Therapeutic Implication"
* category[labCategory] = $observation-category#laboratory "Laboratory"
* status = #final
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2024-03-20"
* issued = "2024-03-25T10:00:00+01:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-3)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer EGFR-Exon-20-Insertion p.(Ala767_Val769dup). Diese Variante zeigt primaere Resistenz gegenueber gaengigen EGFR-TKIs (inkl. Osimertinib). Amivantamab (Rybrevant) ist EMA-zugelassen nach Versagen platinbasierter Chemotherapie (2L). Einsatz in der Erstlinie (PAPILLON-Schema: Amivantamab + Carboplatin/Pemetrexed) derzeit in Deutschland off-label."
* component[medication-assessed][0].code = $loinc#51963-7 "Medication assessed [ID]"
* component[medication-assessed][0].valueCodeableConcept.text = "Amivantamab (Rybrevant) - EGFR/MET bispezifischer Antikoerper"
* component[evidence-level].code = $loinc#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept.text = "Tier I - Level B (EMA-zugelassen 2L; 1L off-label, PAPILLON-Studie)"
// code inherited from profile pattern (loinc#81259-4)
* component[phenotypic-treatment-context].valueCodeableConcept = $sct#254637007 "Non-small cell carcinoma of lung (disorder)"
