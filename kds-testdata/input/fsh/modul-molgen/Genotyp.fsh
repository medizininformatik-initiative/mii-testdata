// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-genotyp-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp
Usage: #example
Description: "Observation: Genotyp fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genotype"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#84413-4 "Genotype display name"
* subject = Reference(mii-exa-test-data-patient-3)
* encounter = Reference(mii-exa-test-data-patient-3-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* valueCodeableConcept.text = "BRAF rs113488022 T>A"
* method = $loinc#LA26398-0 "Sequencing"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* device = Reference(mii-exa-test-data-molgen-device-sequencer)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1097 "BRAF"
* component[cytogenetic-location].code = $loinc#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = $ChromLoc#7q34
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Heterozygote BRAF V600E Mutation nachgewiesen"
* component[reference-sequence-assembly].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[reference-sequence-assembly].valueCodeableConcept = $loinc#LA26806-2 "GRCh38"
