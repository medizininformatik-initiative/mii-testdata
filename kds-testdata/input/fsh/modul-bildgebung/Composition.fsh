Instance: mii-exa-test-data-semistrukt-befundbericht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht
Usage: #example
Description: "Composition: semistrukturierter Befundbericht"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#24604-1 "MG Breast Diagnostic Limited Views"
* subject = Reference(mii-exa-test-data-patient-1)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* title = "Mammographic Report"
* section[diagRep].title = "Diagnostic Report"
* section[diagRep].entry = Reference(mii-exa-test-data-befundbericht)
* section[diagRep].section.title = "Left Breast"
* section[diagRep].section.code = $loinc#66110-8 "Breast Pathology biopsy report"
* section[diagRep].section.author = Reference(mii-exa-test-data-practitioner-physician-2)
* section[diagRep].section.entry = Reference(mii-exa-test-data-radiologische-beobachtung)

// CT Thorax scenario
Instance: mii-exa-test-data-semistrukt-befundbericht-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht
Usage: #example
Description: "Composition: CT Thorax semistrukturierter Befundbericht"
* insert TestDataLabel
* status = #final
* type = $loinc#24627-2 "CT Chest"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* date = "2024-11-05T13:45:00+01:00"
* author = Reference(mii-exa-test-data-practitioner-physician-1)
* title = "CT Thorax Befundbericht"
* section[diagRep].title = "Diagnostic Report"
* section[diagRep].entry = Reference(mii-exa-test-data-befundbericht-ct)
* section[diagRep].section.title = "Rechter Oberlappen"
* section[diagRep].section.code = $loinc#24627-2 "CT Chest"
* section[diagRep].section.text.status = #generated
* section[diagRep].section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Solitaerer Rundherd rechter Oberlappen Segment 3, 18 mm, dringender V.a. Bronchialkarzinom</div>"
* section[diagRep].section.author = Reference(mii-exa-test-data-practitioner-physician-1)
* section[diagRep].section.entry = Reference(mii-exa-test-data-radiologische-beobachtung-ct)