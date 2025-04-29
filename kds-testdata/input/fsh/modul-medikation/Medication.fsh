// Patient-1
Instance: mii-exa-test-data-medication-ass-100
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[Pharmazentralnummer] = $pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* code.coding[atcClassDe] = $atc|2023#B01AC06 "Acetylsalicylsäure"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 $standardterms#10219000 "Tablet"

Instance: mii-exa-test-data-medication-dalbavancin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[Pharmazentralnummer] = $pzn#15205222 "XYDALBA"
* code.coding[atcClassDe] = $atc|2023#J01XA04 "Dalbavancin"
* form.coding[EDQM] = $standardterms#50043000 "Powder for concentrate for solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#33395 "Dalbavancin"
* ingredient.itemCodeableConcept.coding[UNII] = $unii#808UI9MS5K
* ingredient.itemCodeableConcept.coding[CAS] = $cas#171500-79-1
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#703917001 "Dalbavancin (substance)"

Instance: mii-exa-test-data-medication-propofol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[atcClassDe] = $atc|2023#N01AX10 "Propofol"
* form.coding[EDQM] = $standardterms#50021000 "Emulsion for injection/infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#22898 "Propofol"
* ingredient.itemCodeableConcept.coding[UNII] = $unii#YI7VU623SF
* ingredient.itemCodeableConcept.coding[CAS] = $cas#2078-54-8
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#387423006 "Propofol (substance)"

Instance: mii-exa-test-data-medication-metamizol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[Pharmazentralnummer] = $pzn#00651306 "Metamizol HEXAL® 500 mg"
* code.coding[atcClassDe] = $atc|2023#N02BB02 "Metamizol-Natrium"
* form.coding[EDQM] = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#12915 "Metamizol-Natrium"
* ingredient.strength.numerator = 500 'mg' "milligram"
* ingredient.strength.denominator = 1 $standardterms#10221000 "Film-coated tablet"

Instance: mii-exa-test-data-medication-rezeptur-doxorubicin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
//* insert TestDataLabel
//* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.text = "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept = $atc|2023#L01DB01 "Doxorubicin"
* ingredient[=].strength.denominator = 250 'mL' "milliliter"
* ingredient[=].strength.numerator = 85 'mg' "mg"
* ingredient[+].isActive = true
* ingredient[=].itemReference = Reference(mii-exa-test-data-medication-glucoseloesung)
* status = #active

Instance: mii-exa-test-data-medication-glucoseloesung
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
//* insert TestDataLabel
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* code.coding[0] = $pzn#03705422 "Glucose 5% B.braun Ecoflac Plus"
* code.coding[+] = $atc|2023#V06DC01 "Glucose"
* code.coding[+] = $atc-who|2023#V06DC01 "glucose"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].isActive = true
* ingredient[=].itemCodeableConcept.coding[0] = $ask#12829 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#50-99-7 "Glucose"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#5SL0G7R0OK "ANHYDROUS DEXTROSE"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#67079006 "Glucose (substance)"
* ingredient[=].strength.denominator = 1000 'ml' "ml"
* ingredient[=].strength.numerator = 50 'g' "g"
* ingredient[+].isActive = false
* ingredient[=].itemCodeableConcept.coding[0] = $ask#00343 "Wasser für Injektionszwecke"
* ingredient[=].itemCodeableConcept.coding[+] = urn:oid:2.16.840.1.113883.6.61#7732-18-5 "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $fdasis#059QF0KO0R "WATER"
* ingredient[=].itemCodeableConcept.coding[+] = $sct#11713004 "Water (substance)"
* status = #active