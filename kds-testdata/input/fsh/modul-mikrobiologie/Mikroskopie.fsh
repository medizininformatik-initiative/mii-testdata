Instance: mii-exa-test-data-patient-1-mikrobio-mikroskopie-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie|2024.0.0"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "MiBiMK_000001"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies"
* code = $sct#117259009 "Microscopy (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-16T16:15:00+01:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* method = $sct#67047002 "Microbial wet smear (procedure)"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-2)
* component[NameMikroorganismus].code = $loinc#89248-9 "Microorganism identified event index case"
* component[NameMikroorganismus].valueCodeableConcept = $sct#52499004 "Pseudomonas aeruginosa (organism)"