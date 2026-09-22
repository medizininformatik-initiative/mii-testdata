Instance: mii-exa-lungenfunktion-ic
InstanceOf: MII_PR_Lungenfunktion_IC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-spirometrie-messung)
* status = #final
* code.coding = http://snomed.info/sct#29533001 "Inspiratory capacity (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 2.43 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 3.31 'L'
* component[0].code = http://loinc.org#19851-5 "Inspiratory capacity Predicted"
* component[=].valueQuantity = 3.31 'L'
* component[+].code = http://loinc.org#19856-4 "Inspiratory capacity measured/predicted"
* component[=].valueQuantity = 73 '%'