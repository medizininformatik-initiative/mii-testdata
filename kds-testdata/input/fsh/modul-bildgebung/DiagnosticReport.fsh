Instance: mii-exa-test-data-befundbericht
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund
Usage: #example
Description: "DiagnosticReport: Befundbericht"
* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
* basedOn = Reference(mii-exa-test-data-anforderung)
* status = #final
* category.coding[sct] = $sct#4201000179104 "Imaging report"
* code = $sct#4231000179109 "Mammography report"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T12:03:30+02:00"
* result = Reference (mii-exa-test-data-radiologische-beobachtung)
* imagingStudy = Reference (mii-exa-test-data-bildgebungsstudie)
* conclusion = "There are suspicious microcalcifications in the upper outer quadrant in the left breast"
* conclusionCode = $sct#12747003 "Microcalcification, calcified structure (morphologic abnormality)"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[type].url = "type"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[type].valueCodeableConcept = $observation-type#SCI "Supporting Clinical Information"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[reference].url = "reference"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[reference].valueReference = Reference(mii-exa-test-data-befundungsprozedur)