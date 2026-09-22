Instance: mii-exa-mikrobio-voraussichtliche-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "v-empf-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* status = #final
* code.coding = http://loinc.org#89489-9 "rifAMPin [Susceptibility] by Genotype method"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* specimen = Reference(mii-exa-mikrobio-probe)