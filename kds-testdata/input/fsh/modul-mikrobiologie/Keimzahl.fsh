Instance: mii-exa-test-data-patient-1-mikrobio-keimzahl-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl|2024.0.0"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "MiBiKMZ_000001"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#49223-1 "Colony count [#/volume] in Unspecified specimen by Visual count"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-16T16:15:00+01:00"
* valueQuantity = 1000000 '[CFU]/mL' "CFU/ml"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-2)