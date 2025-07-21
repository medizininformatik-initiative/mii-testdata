// Patient-1
Instance: mii-exa-test-data-medication-ass-100
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: ASS 100"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[Pharmazentralnummer] = $pzn#06312077 "ASS 100 - 1a Pharma TAH Tabletten"
* code.coding[atcClassDe] = $atc|2023#B01AC06 "Acetylsalicylsäure"
* form.coding[EDQM] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00002 "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 $standardterms#10219000 "Tablet"

Instance: mii-exa-test-data-medication-dalbavancin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Dalbavancin"
* insert TestDataLabel
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
Usage: #example
Description: "Medication: Propofol"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2.0.0"
* code.coding[atcClassDe] = $atc|2023#N01AX10 "Propofol"
* form.coding[EDQM] = $standardterms#50021000 "Emulsion for injection/infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#22898 "Propofol"
* ingredient.itemCodeableConcept.coding[UNII] = $unii#YI7VU623SF
* ingredient.itemCodeableConcept.coding[CAS] = $cas#2078-54-8
* ingredient.itemCodeableConcept.coding[SNOMED] = $sct#387423006 "Propofol (substance)"

Instance: mii-exa-test-data-medication-metamizol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Metamizol"
* insert TestDataLabel
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
Description: "Medication: Rezeptur Doxorubicin"
* insert TestDataLabel
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
Description: "Medication: Glucoselösung 5%"
* insert TestDataLabel
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

// Patient-2 Medications (Lungenkarzinom)
Instance: mii-exa-test-data-medication-morphin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Morphin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#N02AA01 "Morphin"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01927 "Morphin"
* ingredient.strength.numerator = 10 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-carboplatin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Carboplatin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L01XA02 "Carboplatin"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00488 "Carboplatin"
* ingredient.strength.numerator = 450 'mg' "mg"
* ingredient.strength.denominator = 45 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-paclitaxel
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Paclitaxel"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L01CD01 "Paclitaxel"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02058 "Paclitaxel"
* ingredient.strength.numerator = 175 'mg' "mg"
* ingredient.strength.denominator = 29 'ml' "ml"
* status = #active

// Patient-3 Medications (Anorektalkarzinom)
Instance: mii-exa-test-data-medication-5-fluorouracil
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: 5-Fluorouracil"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L01BC02 "Fluorouracil"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00836 "5-Fluorouracil"
* ingredient.strength.numerator = 1000 'mg' "mg"
* ingredient.strength.denominator = 20 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-oxaliplatin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Oxaliplatin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L01XA03 "Oxaliplatin"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02043 "Oxaliplatin"
* ingredient.strength.numerator = 85 'mg' "mg"
* ingredient.strength.denominator = 17 'ml' "ml"
* status = #active

// Patient-4 Medications (Magenkarzinom)
Instance: mii-exa-test-data-medication-cisplatin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Cisplatin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L01XA01 "Cisplatin"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00580 "Cisplatin"
* ingredient.strength.numerator = 75 'mg' "mg"
* ingredient.strength.denominator = 75 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-omeprazol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Omeprazol"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#A02BC01 "Omeprazol"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02041 "Omeprazol"
* ingredient.strength.numerator = 20 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-5 Medications (Endometriose)
Instance: mii-exa-test-data-medication-leuprorelin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Leuprorelin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#L02AE02 "Leuprorelin"
* form = $standardterms#11201000 "Solution for injection"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01648 "Leuprorelin"
* ingredient.strength.numerator = 3.75 'mg' "mg"
* ingredient.strength.denominator = 1 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-ibuprofen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Ibuprofen"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#M01AE01 "Ibuprofen"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01341 "Ibuprofen"
* ingredient.strength.numerator = 400 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-6 Medications (Gastritis)
Instance: mii-exa-test-data-medication-pantoprazol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Pantoprazol"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#A02BC02 "Pantoprazol"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02069 "Pantoprazol"
* ingredient.strength.numerator = 40 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-amoxicillin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Amoxicillin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#J01CA04 "Amoxicillin"
* form = $standardterms#10210000 "Capsule, hard"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00097 "Amoxicillin"
* ingredient.strength.numerator = 500 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-clarithromycin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Clarithromycin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#J01FA09 "Clarithromycin"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00594 "Clarithromycin"
* ingredient.strength.numerator = 250 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-7 Medications (Bronchitis)
Instance: mii-exa-test-data-medication-amoxicillin-clavulansaeure
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Amoxicillin und Clavulansäure"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#J01CR02 "Amoxicillin und Betalactamase-Inhibitor"
* form = $standardterms#11210000 "Solution for infusion"
* ingredient[0].itemCodeableConcept.coding[ASK] = $ask#00097 "Amoxicillin"
* ingredient[0].strength.numerator = 1000 'mg' "mg"
* ingredient[0].strength.denominator = 100 'ml' "ml"
* ingredient[+].itemCodeableConcept.coding[ASK] = $ask#00598 "Clavulansäure"
* ingredient[=].strength.numerator = 200 'mg' "mg"
* ingredient[=].strength.denominator = 100 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-salbutamol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Salbutamol"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#R03AC02 "Salbutamol"
* form = $standardterms#11106000 "Pressurised inhalation, solution"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02303 "Salbutamol"
* ingredient.strength.numerator = 100 'ug' "μg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-8 Medications (Myokardinfarkt)
Instance: mii-exa-test-data-medication-heparin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Heparin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#B01AB01 "Heparin"
* form = $standardterms#11201000 "Solution for injection"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01291 "Heparin"
* ingredient.strength.numerator = 25000 '[iU]' "IU"
* ingredient.strength.denominator = 5 'ml' "ml"
* status = #active

Instance: mii-exa-test-data-medication-metoprolol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Metoprolol"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#C07AB02 "Metoprolol"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01780 "Metoprolol"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-atorvastatin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Atorvastatin"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#C10AA05 "Atorvastatin"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#00302 "Atorvastatin"
* ingredient.strength.numerator = 40 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-9 Medications (Ovarialzyste)
Instance: mii-exa-test-data-medication-ethinylestradiol-levonorgestrel
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Ethinylestradiol und Levonorgestrel"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#G03AA07 "Levonorgestrel und Ethinylestradiol"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient[0].itemCodeableConcept.coding[ASK] = $ask#00810 "Ethinylestradiol"
* ingredient[0].strength.numerator = 0.03 'mg' "mg"
* ingredient[0].strength.denominator = 1 '1' "1"
* ingredient[+].itemCodeableConcept.coding[ASK] = $ask#01661 "Levonorgestrel"
* ingredient[=].strength.numerator = 0.15 'mg' "mg"
* ingredient[=].strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-paracetamol
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Paracetamol"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#N02BE01 "Paracetamol"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#01954 "Paracetamol"
* ingredient.strength.numerator = 500 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

// Patient-10 Medications (Migräne)
Instance: mii-exa-test-data-medication-sumatriptan
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Sumatriptan"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#N02CC01 "Sumatriptan"
* form = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02517 "Sumatriptan"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active

Instance: mii-exa-test-data-medication-topiramat
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication
Usage: #example
Description: "Medication: Topiramat"
* insert TestDataLabel
* code.coding[atcClassDe] = $atc|2024#N03AX11 "Topiramat"
* form = $standardterms#10221000 "Film-coated tablet"
* ingredient.itemCodeableConcept.coding[ASK] = $ask#02611 "Topiramat"
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = 1 '1' "1"
* status = #active