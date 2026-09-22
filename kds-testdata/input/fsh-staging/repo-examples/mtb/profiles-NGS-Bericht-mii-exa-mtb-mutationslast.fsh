Instance: MII-EXA-MTB-Mutationslast-1
InstanceOf: MII_PR_MTB_Mutationslast
Usage: #example
Title: "Beispiel Mutationslast in Tumorprobe (MTB)"
Description: "Beispiel fuer die Mutationslast in einer Tumorprobe mit Bezug zu molekularem Tumorboard."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(Patient/mii-exa-mtb-patient)
* valueQuantity = 21 http://unitsofmeasure.org#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(Specimen/mii-exa-mtb-specimen)
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
