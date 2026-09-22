Instance: mii-exa-seltene-taillenumfang
InstanceOf: MII_PR_Seltene_Taillenumfang
Usage: #example
Title: "Taillenumfang Beispiel"
Description: "Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = http://snomed.info/sct#276361009 "Waist circumference"
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 82.0
* valueQuantity.unit = "cm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #cm

// Mapping to Logical Model
