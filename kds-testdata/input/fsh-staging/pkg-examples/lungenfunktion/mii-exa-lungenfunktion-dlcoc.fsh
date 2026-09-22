Instance: mii-exa-lungenfunktion-dlcoc
InstanceOf: MII_PR_Lungenfunktion_DLCOc
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-diffusion-messung)
* status = #final
* code = http://loinc.org#19911-7 "Diffusion capacity.carbon monoxide"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 8.27 'mmol/(min.kPa)'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 7.29 'mmol/(min.kPa)'
* derivedFrom[0] = Reference(mii-exa-lungenfunktion-hb)
* derivedFrom[+] = Reference(mii-exa-lungenfunktion-dlco)
* component[0].code = http://loinc.org#19910-9 "Diffusion capacity.carbon monoxide Predicted"
* component[=].valueQuantity = 9.5 'mmol/(min.kPa)'
* component[+].code = http://loinc.org#98130-8 "Diffusion capacity.carbon monoxide/Predicted"
* component[=].valueQuantity = 87 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -0.9
* component[=].valueQuantity.system = "http://unitsofmeasure.org"