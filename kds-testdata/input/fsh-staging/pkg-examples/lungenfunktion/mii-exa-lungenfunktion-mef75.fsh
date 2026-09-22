Instance: mii-exa-lungenfunktion-mef75
InstanceOf: MII_PR_Lungenfunktion_MEF
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#251921003 "Maximum expiratory flow rate at 75 percent of vital capacity (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 3.74 'L/s'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 4.83 'L/s'
* component[0].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 7.64 'L/s'
* component[+].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 49 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -2.3
* component[=].valueQuantity.system = "http://unitsofmeasure.org"