// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-mutationslast-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mutationslast
Usage: #example
Description: "Observation: Mutationslast (TMB) fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* valueQuantity = 12 $ucum#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.text = "Panel-basiert (alle Gene)"
// code inherited from profile pattern (tbd-codes-cs#biomarker-category)
* component[biomarker-category].valueCodeableConcept.text = "Tumor Mutational Burden"
