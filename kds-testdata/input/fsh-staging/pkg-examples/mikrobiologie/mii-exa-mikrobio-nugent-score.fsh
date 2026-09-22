Instance: mii-exa-mikrobio-nugent-score
InstanceOf: MII_PR_Mikrobio_Nugent_Score
Usage: #example
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier.system = "https://example.org/fhir/sid/test-lab-results"
* identifier.value = "nugent-1"
* identifier.assigner = Reference(mii-exa-mikrobio-labor)
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* category[=].coding[=].version = "2.82"
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* performer = Reference(mii-exa-mikrobio-labor)
* valueQuantity = 7 '1' "1"
* code.coding = http://loinc.org#101433-1 "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
* code.coding.version = "2.82"
* method.coding = http://snomed.info/sct#702661004 "Light microscopy"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* status = #final
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* specimen = Reference(mii-exa-mikrobio-probe)