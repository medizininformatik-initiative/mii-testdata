Instance: mii-exa-lungenfunktion-kcoc
InstanceOf: MII_PR_Lungenfunktion_KCOc
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-diffusion-messung)
* status = #final
* code = http://loinc.org#19916-6 "Diffusion capacity/Alveolar volume"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 1.7 'mmol/(min.kPa.L)'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 1.18 'mmol/(min.kPa.L)'
* derivedFrom[0] = Reference(mii-exa-lungenfunktion-dlcoc)
* derivedFrom[+] = Reference(mii-exa-lungenfunktion-va)
* component[0].code = http://loinc.org#19915-8 "Diffusion capacity/Alveolar volume Predicted"
* component[=].valueQuantity = 1.52 'mmol/(min.kPa.L)'
* component[+].code = http://loinc.org#98203-3 "(Diffusion capacity/Alveolar volume)/predicted"
* component[=].valueQuantity = 112 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = 0.8
* component[=].valueQuantity.system = "http://unitsofmeasure.org"