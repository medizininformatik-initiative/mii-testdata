Instance: mii-exa-lungenfunktion-vc
InstanceOf: MII_PR_Lungenfunktion_VC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#251913009 "Inspiratory vital capacity (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 1.98 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 3.7 'L'
* component[0].code = http://loinc.org#19865-5 "Vital capacity [Volume] Respiratory system Predicted"
* component[=].valueQuantity = 4.62 'L'
* component[+].code.coding = http://snomed.info/sct#445389005 "Percentage of predicted vital capacity (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 43 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -4.7
* component[=].valueQuantity.system = "http://unitsofmeasure.org"