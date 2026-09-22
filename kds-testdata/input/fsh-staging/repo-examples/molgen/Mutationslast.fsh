Instance: mii-exa-molgen-mutationslast-1
InstanceOf: mii-pr-molgen-mutationslast
Usage: #example
Title: "Beispiel Mutationslast in Tumorprobe"
Description: "Beispiel für Mutationslast in Tumorprobe."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mutationslast)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[mbCategory] = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#biomarker-category "A characterization of a given biomarker observation."
* code = http://loinc.org#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(mii-exa-molgen-patient)
* performer = Reference(mii-exa-molgen-practitioner-lab)
* valueQuantity = 12 http://unitsofmeasure.org#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(mii-exa-molgen-specimen-1)
