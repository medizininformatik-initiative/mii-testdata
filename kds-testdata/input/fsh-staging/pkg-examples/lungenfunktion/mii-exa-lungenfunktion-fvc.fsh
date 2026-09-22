Instance: mii-exa-lungenfunktion-fvc
InstanceOf: MII_PR_Lungenfunktion_FVC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#50834005 "Forced vital capacity (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 2.65 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 3.76 'L'
* component[0].code.coding = http://snomed.info/sct#310521000 "Expected forced vital capacity (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 4.79 'L'
* component[+].code.coding = http://snomed.info/sct#445210000 "Percentage of predicted forced vital capacity (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 55 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -3.4
* component[=].valueQuantity.system = "http://unitsofmeasure.org"