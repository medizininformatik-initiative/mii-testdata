Instance: mii-exa-test-data-befundbericht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund
Usage: #example
Description: "DiagnosticReport: Befundbericht"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
* basedOn = Reference(mii-exa-test-data-anforderung)
* status = #final
* category.coding[sct] = $sct#4201000179104 "Imaging report (record artifact)"
* code = $sct#4231000179109 "Mammography report"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T12:03:30+02:00"
* result = Reference (mii-exa-test-data-radiologische-beobachtung)
* imagingStudy = Reference (mii-exa-test-data-bildgebungsstudie)
* conclusion = "There are suspicious microcalcifications in the upper outer quadrant in the left breast"
* conclusionCode = $sct#12747003 "Microcalcification, calcified structure (morphologic abnormality)"
* extension[supportingInfo].valueReference = Reference(mii-exa-test-data-befundungsprozedur)

// CT Thorax scenario
Instance: mii-exa-test-data-befundbericht-ct
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund
Usage: #example
Description: "DiagnosticReport: CT Thorax Befundbericht"
* insert TestDataLabel
* basedOn = Reference(mii-exa-test-data-anforderung-ct)
* status = #final
* category.coding[sct] = $sct#4201000179104 "Imaging report (record artifact)"
* code = $sct#169070004 "Computed tomography of chest (procedure)"
* subject = Reference(mii-exa-test-data-patient-2)
* encounter = Reference(mii-exa-test-data-patient-2-encounter-1)
* effectiveDateTime = "2024-11-05T11:30:00+01:00"
* issued = "2024-11-05T13:45:00+01:00"
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* result = Reference(mii-exa-test-data-radiologische-beobachtung-ct)
* imagingStudy = Reference(mii-exa-test-data-bildgebungsstudie-ct)
* conclusion = "Solitaerer pulmonaler Rundherd im rechten Oberlappen (Segment 3), 18 mm, unregelmae\u00DFig begrenzt mit Spiculae. Dringender Verdacht auf Bronchialkarzinom. Empfehlung: PET-CT und bioptische Abklaerung."
* conclusionCode = $sct#427359005 "Solitary nodule of lung (disorder)"
* extension[supportingInfo].valueReference = Reference(mii-exa-test-data-befundungsprozedur-ct)