Instance: mii-exa-mikrobio-ct-wert
InstanceOf: MII_PR_Mikrobio_Ct_Wert
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "ct-1"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* valueQuantity = 21.3 '1' "1"
* method.coding = http://snomed.info/sct#70601000052104 "Real-time polymerase chain reaction technique"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* code.coding = http://loinc.org#74039-9 "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
* code.coding.version = "2.82"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* specimen = Reference(mii-exa-mikrobio-probe)