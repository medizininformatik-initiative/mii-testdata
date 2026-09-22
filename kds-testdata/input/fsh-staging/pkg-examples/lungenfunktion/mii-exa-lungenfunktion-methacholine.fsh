Instance: mii-exa-lungenfunktion-methacholine
InstanceOf: MII_PR_Lungenfunktion_Methacholine
Usage: #example
* code = http://fhir.de/CodeSystem/ifa/pzn#00171345 "Provokit® 0,33%"
* ingredient[0].strength.denominator = 10 'ml' "ml"
* ingredient[=].strength.numerator = 33 'mg' "mg"
* ingredient[=].itemCodeableConcept.coding = http://snomed.info/sct#109196007 "Methacholine chloride (substance)"
* ingredient[=].itemCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* ingredient[+].itemCodeableConcept.coding = http://snomed.info/sct#11713004 "Water (substance)"
* ingredient[=].itemCodeableConcept.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"