// Inclusion criterion 1: Age >= 18 years
Instance: mii-exa-test-data-studie-evidencevariable-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
Usage: #example
Description: "EvidenceVariable: Einschlusskriterium – Alter >= 18 Jahre"
* insert TestDataLabel
* status = #active
* name = "Einschlusskriterium-Alter"
* title = "Einschlusskriterium: Alter >= 18 Jahre"
// Characteristic 1 – Age inclusion
* characteristic[0].extension[linkId].valueId = "inc-age-18"
* characteristic[0].extension[definitionReference].valueReference = Reference(mii-exa-test-data-studie-group-1)
* characteristic[0].description = "Patient muss mindestens 18 Jahre alt sein"
* characteristic[0].definitionCodeableConcept = $sct#424144002 "Current chronological age (observable entity)"
* characteristic[0].exclude = false

// Inclusion criterion 2: Confirmed inflammatory disorder
Instance: mii-exa-test-data-studie-evidencevariable-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
Usage: #example
Description: "EvidenceVariable: Einschlusskriterium – Bestätigte entzündliche Erkrankung"
* insert TestDataLabel
* status = #active
* name = "Einschlusskriterium-Entzuendung"
* title = "Einschlusskriterium: Bestätigte entzündliche Erkrankung"
// Characteristic – Inflammatory disorder diagnosis
* characteristic[0].extension[linkId].valueId = "inc-inflammation"
* characteristic[0].extension[definitionReference].valueReference = Reference(mii-exa-test-data-studie-group-1)
* characteristic[0].description = "Gesicherte Diagnose einer entzündlichen Erkrankung gemäß ICD-10-GM"
* characteristic[0].definitionCodeableConcept = $sct#128139000 "Inflammatory disorder (disorder)"
* characteristic[0].exclude = false

// Exclusion criterion 1: Active malignancy
Instance: mii-exa-test-data-studie-evidencevariable-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
Usage: #example
Description: "EvidenceVariable: Ausschlusskriterium – Aktive maligne Erkrankung"
* insert TestDataLabel
* status = #active
* name = "Ausschlusskriterium-Malignom"
* title = "Ausschlusskriterium: Aktive maligne Erkrankung"
// Characteristic – Active malignancy exclusion
* characteristic[0].extension[linkId].valueId = "exc-malignancy"
* characteristic[0].extension[definitionReference].valueReference = Reference(mii-exa-test-data-studie-group-1)
* characteristic[0].description = "Patienten mit einer aktiven malignen Erkrankung werden ausgeschlossen"
* characteristic[0].definitionCodeableConcept = $sct#363346000 "Malignant neoplastic disease (disorder)"
* characteristic[0].exclude = true
