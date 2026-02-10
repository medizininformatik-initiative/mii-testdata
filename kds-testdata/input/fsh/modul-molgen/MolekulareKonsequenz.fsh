// =============================================================================
// MolekulareKonsequenz (molecular-consequence) -- NEW in 2026
// Holds functional-effect (moved from DiagnostischeImplikation) and
// amino-acid-change-type logic (moved from Variante)
// =============================================================================

// Patient-3: BRAF V600E - gain-of-function missense mutation
Instance: mii-exa-test-data-patient-3-molgen-molekulare-konsequenz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekulare-konsequenz
Usage: #example
Description: "Observation: Molekulare Konsequenz der BRAF V600E Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Aktivierende Missense-Mutation im BRAF-Gen. Austausch von Valin zu Glutaminsaeure an Position 600 fuehrt zu konstitutiver Aktivierung der BRAF-Kinase."
* component[functional-effect].valueCodeableConcept = $SO#SO:0002053 "gain_of_function_variant"
* component[functional-effect].valueCodeableConcept.text = "Konstitutive Aktivierung der BRAF-Kinase"
* component[clinical-significance].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

// Patient-4: CTNNA1 frameshift - loss-of-function
Instance: mii-exa-test-data-patient-4-molgen-molekulare-konsequenz-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekulare-konsequenz
Usage: #example
Description: "Observation: Molekulare Konsequenz der CTNNA1 Frameshift-Deletion"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* extension[workflow-relatedArtifact].url = "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact"
* extension[workflow-relatedArtifact].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[workflow-relatedArtifact].valueRelatedArtifact.citation = "Richards et al., Genet Med. 2015; 17:405-24"
* extension[workflow-relatedArtifact].valueRelatedArtifact.url = "https://pubmed.ncbi.nlm.nih.gov/25741868/"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#molecular-consequence "Molecular Consequence"
* subject = Reference(mii-exa-test-data-patient-4)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectiveDateTime = "2022-11-30"
* issued = "2022-12-05T14:00:00+01:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-4-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Frameshift-Deletion fuehrt zu vorzeitigem Stopp-Codon und Verlust des alpha-E-Catenin-Proteins."
* component[functional-effect].valueCodeableConcept = $SO#SO:0002054 "loss_of_function_variant"
* component[functional-effect].valueCodeableConcept.text = "Funktionsverlust des alpha-E-Catenin-Proteins"
* component[clinical-significance].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[evidence-level].valueCodeableConcept = $loinc#LA30200-2 "Pathogenic strong"
