Instance: mii-exa-lungenfunktion-rv
InstanceOf: MII_PR_Lungenfunktion_RV
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* status = #final
* code = http://loinc.org#20146-7 "Residual volume"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 3.01 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 1.43 'L'
* component[0].code = http://loinc.org#20145-9 "Residual volume Predicted"
* component[=].valueQuantity = 2.11 'L'
* component[+].code = http://loinc.org#94125-2 "Residual volume/Predicted by Plethysmograph body box"
* component[=].valueQuantity = 143 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = 2.2
* component[=].valueQuantity.system = "http://unitsofmeasure.org"