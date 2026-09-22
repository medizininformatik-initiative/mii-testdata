Instance: mii-exa-seltene-bodymassindex
InstanceOf: MII_PR_Seltene_Bodymassindex
Usage: #example
Title: "Body Mass Index (BMI) Example"
Description: "Example of a Body Mass Index (BMI) observation for a patient."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Example Patient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #kg/m2

// Mapping to Logical Model
