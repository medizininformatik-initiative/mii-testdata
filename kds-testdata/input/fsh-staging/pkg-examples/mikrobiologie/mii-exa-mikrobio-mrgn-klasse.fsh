Instance: mii-exa-mikrobio-mrgn-klasse
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
Usage: #example
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "59826-8_1234567890"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* code.coding = http://loinc.org#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* code.coding.version = "2.82"
* status = #final
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept.coding = http://loinc.org#LA33214-0 "2MRGN"
* valueCodeableConcept.coding.version = "2.82"
* specimen = Reference(mii-exa-mikrobio-probe)