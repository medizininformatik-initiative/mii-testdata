Instance: mii-exa-lungenfunktion-rv-tlc
InstanceOf: MII_PR_Lungenfunktion_RV_TLC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* status = #final
* code.coding = http://snomed.info/sct#1366666000 "Residual volume/total lung capacity ratio (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 50.95 '%'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 23.73 '%'
* derivedFrom[0] = Reference(mii-exa-lungenfunktion-rv)
* derivedFrom[+] = Reference(mii-exa-lungenfunktion-tlc)
* component[0].code = http://loinc.org#43252-6 "Residual volume/Total capacity Predicted"
* component[=].valueQuantity = 32.68 '%'
* component[+].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 156 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = 3.3
* component[=].valueQuantity.system = "http://unitsofmeasure.org"