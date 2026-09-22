Instance: mii-exa-lungenfunktion-tlc
InstanceOf: MII_PR_Lungenfunktion_TLC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* status = #final
* code.coding = http://snomed.info/sct#57566009 "Total lung capacity (observable entity)"
* code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 5 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 5.67 'L'
* component[0].code = http://loinc.org#19861-4 "Total lung capacity Predicted"
* component[=].valueQuantity = 6.82 'L'
* component[+].code = http://loinc.org#89085-5 "Total lung capacity measured/predicted by Plethysmograph body box"
* component[=].valueQuantity = 73 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = -2.6
* component[=].valueQuantity.system = "http://unitsofmeasure.org"