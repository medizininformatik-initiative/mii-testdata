Instance: mii-exa-test-data-patient-1-mikrobio-empfindlichkeit-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit|2024.0.0"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "MiBiEKT_000001"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18868-0 "Aztreonam [Susceptibility]"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-16T16:15:00+01:00"
* valueQuantity = 32 'mg/L' "mg/L"
* interpretation[CLSI].coding = $v3-ObservationInterpretation|2018-08-12#R "Resistant"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-2)