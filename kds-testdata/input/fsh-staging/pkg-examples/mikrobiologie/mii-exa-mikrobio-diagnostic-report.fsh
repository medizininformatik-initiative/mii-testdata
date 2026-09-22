Instance: mii-exa-mikrobio-diagnostic-report
InstanceOf: MII_PR_Mikrobio_Diagnostic_Report
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL "Filler Identifier"
* identifier.system = "https://example.org/fhir/sid/test-befund"
* identifier.value = "mikrobio-dr-1"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB "Microbiology"
* category[+].coding = http://loinc.org#92894-5 "Microbiology - bacterial studies"
* category[=].coding.version = "2.82"
* code.coding = http://loinc.org#11502-2 "Laboratory report"
* code.coding.version = "2.82"
* basedOn.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
* basedOn.identifier.system = "https://example.org/fhir/sid/test-anforderung"
* basedOn.identifier.value = "111"
* performer = Reference(mii-exa-mikrobio-labor)
* result = Reference(mii-exa-mikrobio-allgemeine-kultur)
* status = #final
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* issued = "2026-04-02T10:30:00+01:00"