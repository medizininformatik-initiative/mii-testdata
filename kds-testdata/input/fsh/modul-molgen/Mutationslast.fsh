// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-mutationslast-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mutationslast
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mutationslast|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(mii-exa-test-data-patient-3)
* valueQuantity = 12 $ucum#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)