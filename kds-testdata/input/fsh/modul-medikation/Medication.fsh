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