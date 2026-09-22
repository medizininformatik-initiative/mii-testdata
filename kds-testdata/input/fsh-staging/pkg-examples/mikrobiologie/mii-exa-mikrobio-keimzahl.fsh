Instance: mii-exa-mikrobio-keimzahl
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* valueQuantity = 100000 '/mL' "/mL"
* method.coding = http://snomed.info/sct#410681005 "Count of entities"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://loinc.org#49223-1 "Colony count [#/volume] in Specimen by Visual count"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* specimen = Reference(mii-exa-mikrobio-probe)