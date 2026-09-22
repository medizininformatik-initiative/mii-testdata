Instance: mii-exa-lungenfunktion-frc
InstanceOf: MII_PR_Lungenfunktion_FRC
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* partOf = Reference(mii-exa-lungenfunktion-bodyplethysmographie-messung)
* status = #final
* code = http://loinc.org#19843-2 "Functional residual capacity"
* subject = Reference(mii-exa-lungenfunktion-patient)
* issued = "2024-07-19T13:03:20+02:00"
* valueQuantity = 3.48 'L'
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N
* method.coding = http://snomed.info/sct#249862003 "Sitting upright (finding)"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* referenceRange.low = 2.43 'L'
* component[0].code = http://loinc.org#19847-3 "Functional residual capacity Predicted"
* component[=].valueQuantity = 3.42 'L'
* component[+].code.coding = http://snomed.info/sct#TODO
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity = 102 '%'
* component[+].code.coding = http://snomed.info/sct#1078210003 "Z-score calculation technique (qualifier value)"
* component[=].code.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* component[=].valueQuantity.value = 0.1
* component[=].valueQuantity.system = "http://unitsofmeasure.org"