Instance: mii-exa-test-data-semistrukt-befundbericht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht
Usage: #example
Description: "Composition: semistrukturierter Befundbericht"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#24604-1 "MG Breast Diagnostics Limited Views"
* subject = Reference(mii-exa-test-data-patient-1)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* title = "Mammographic Report"
* section.title = "Left Breast"
* section.code = $loinc#66110-8 "Breast Pathology biopsy report"
* section.author = Reference(mii-exa-test-data-practitioner-physician-2)
* section.entry = Reference(mii-exa-test-data-befundbericht)
* section.section.entry = Reference(mii-exa-test-data-radiologische-beobachtung)