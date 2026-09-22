Instance: mii-exa-seltene-kopfumfang
InstanceOf: MII_PR_Seltene_Kopfumfang
Usage: #example
Title: "Kopfumfang Beispiel"
Description: "Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang)
* status = #final
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"
* code.coding[loinc] = http://loinc.org#9843-4 "Head Occipital-frontal circumference"
* code.coding[snomed] = http://snomed.info/sct#363812007
* subject = Reference(mii-exa-seltene-patient)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 54.5
* valueQuantity.unit = "centimeter"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #cm

// Mapping to Logical Model
