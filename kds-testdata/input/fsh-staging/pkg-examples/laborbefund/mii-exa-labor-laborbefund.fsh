Instance: mii-exa-labor-laborbefund
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST "test health data"
* category.coding[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category.coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category.coding[=].version = "2.82"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier.system = "https://example.org/fhir/sid/test-befund"
* identifier.value = "0987654321"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier.assigner.identifier.value = "DIZ-ID"
* code.coding = http://loinc.org#11502-2 "Laboratory report"
* code.coding.version = "2.82"
* basedOn = Reference(mii-exa-labor-laboranforderung)
* status = #final
* subject = Reference(111)
* effectiveDateTime = "2018-11-20T12:05:00+01:00"
* issued = "2018-03-11T10:28:00+01:00"
* result = Reference(mii-exa-labor-laborwert)