Instance: mii-exa-lungenfunktion-fev1-fvc
InstanceOf: MII_PR_Lungenfunktion_FEV_FVC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#251944000 "Forced expired volume in one second/forced vital capacity ratio (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 83.93 '%'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 68.88 '%'
* derivedFrom[0] = Reference(mii-exa-lungenfunktion-fev1)
* derivedFrom[+] = Reference(mii-exa-lungenfunktion-fvc)
* component[0].code.coding = http://snomed.info/sct#310360002 "Expected forced expiratory volume in one second/Forced vital capacity ratio (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 105 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = 0.7
* component[=].valueQuantity.system = "http://unitsofmeasure.org"