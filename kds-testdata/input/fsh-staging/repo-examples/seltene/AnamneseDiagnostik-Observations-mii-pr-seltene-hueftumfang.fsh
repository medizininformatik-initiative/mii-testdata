Instance: mii-exa-seltene-hueftumfang
InstanceOf: MII_PR_Seltene_Hueftumfang
Usage: #example
Title: "Hüftumfang Beispiel"
Description: "Beispiel einer Hüftumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = http://snomed.info/sct#284472007 "Hip circumference"
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 98.0
* valueQuantity.unit = "cm"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #cm

// Mapping to Logical Model
