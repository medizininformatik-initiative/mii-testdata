Instance: mii-exa-labor-laborwert-range
InstanceOf: MII_PR_Labor_Laboruntersuchung
Usage: #example
* category.coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category.coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category.coding[=].version = "2.82"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "5787-7_1234567890"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.assigner.identifier.value = "DIZ-ID"
* status = #final
* code.coding = http://loinc.org#5787-7 "Epithelial cells [#/area] in Urine sediment by Microscopy high power field"
* code.coding.version = "2.82"
* code.text = "Urinsediment Epithelzellen Semi-quantitative Schätzung"
* subject = Reference(111)
* encounter = Reference(555)
* effectiveDateTime = "2018-11-20T12:05:00+01:00"
* effectiveDateTime.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension.valueCoding = http://snomed.info/sct#399445004 "Specimen collection date"
* effectiveDateTime.extension.valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* issued = "2018-03-11T10:28:00+01:00"
* performer = Reference(7772) "Zentrallabor des IKCL"
* valueRange.low = 2 '/[HPF]' "/HPF"
* valueRange.high = 5 '/[HPF]' "/HPF"