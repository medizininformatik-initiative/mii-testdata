// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation
Usage: #example
Description: "Observation: Diagnostische Implikation fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E"
* component[evidence-level].code = $loinc#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept.text = "Tier I - Level A"
// code inherited from profile pattern (tbd-codes-cs#condition-inheritance)
* component[mode-of-inheritance].valueCodeableConcept.text = "Somatisch erworben"

// Patient-4
Instance: mii-exa-test-data-patient-4-molgen-diagnostische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation
Usage: #example
Description: "Observation: Diagnostische Implikation fuer Magenkarzinom"
* insert TestDataLabel
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-artifact"
* extension[0].valueRelatedArtifact.type = $related-artifact-type#citation "Citation"
* extension[0].valueRelatedArtifact.citation = "ClinGen"
* extension[0].valueRelatedArtifact.url = "https://search.clinicalgenome.org/kb/gene-dosage/HGNC:2509"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(mii-exa-test-data-patient-4)
* encounter = Reference(mii-exa-test-data-patient-4-encounter-1)
* effectiveDateTime = "2022-11-30"
* issued = "2022-12-05T14:00:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-2)
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-4-molgen-variante-1)
* component[conclusion-string].valueString = "Diese Variante wird nach den ACMG/AMP-Kriterien zusammenfassend als pathogen bewertet entsprechend IARC Class 5."
* component[clinical-significance].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[predicted-phenotype].valueCodeableConcept.coding[0] = $sct#716859000 "Hereditary diffuse carcinoma of stomach (disorder)"
* component[evidence-level].code = $loinc#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept = $loinc#LA30200-2 "Very strong evidence pathogenic"
// code inherited from profile pattern (tbd-codes-cs#condition-inheritance)
* component[mode-of-inheritance].valueCodeableConcept = $HPO#HP:0000006 "Autosomal dominant inheritance"
