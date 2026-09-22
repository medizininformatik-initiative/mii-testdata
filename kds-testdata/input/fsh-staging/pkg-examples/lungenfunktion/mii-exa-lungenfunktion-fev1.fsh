Instance: mii-exa-lungenfunktion-fev1
InstanceOf: MII_PR_Lungenfunktion_FEV
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#59328004 "Forced expired volume in 1 second (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 2.23 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 2.98 'L'
* component[0].code.coding = http://snomed.info/sct#310520004 "Expected forced expired volume in 1 second (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 3.8 'L'
* component[+].code.coding = http://snomed.info/sct#313223002 "Percent predicted forced expired volume in one second (observable entity)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 59 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -3.1
* component[=].valueQuantity.system = "http://unitsofmeasure.org"