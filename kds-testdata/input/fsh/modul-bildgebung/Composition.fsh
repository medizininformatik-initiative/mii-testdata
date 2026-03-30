Instance: mii-exa-test-data-semistrukt-befundbericht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht
Usage: #example
Description: "Composition: semistrukturierter Befundbericht"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#24604-1 "MG Breast Diagnostic Limited Views"
* subject = Reference(mii-exa-test-data-bildgebung-patient-1)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* title = "Mammographic Report"
* section[diagRep].title = "Diagnostic Report"
* section[diagRep].entry = Reference(mii-exa-test-data-befundbericht)
* section[diagRep].section.title = "Left Breast"
* section[diagRep].section.code = $loinc#66110-8 "Breast Pathology biopsy report"
* section[diagRep].section.author = Reference(mii-exa-test-data-practitioner-physician-2)
* section[diagRep].section.entry = Reference(mii-exa-test-data-radiologische-beobachtung)