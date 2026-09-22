Instance: mii-exa-onko-strahlentherapie-2014-mamma-mit-lk
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie  
Usage: #example
Title: "Beispiel Strahlentherapie oBDS 2014 - Mamma mit Lymphknoten (3.1.+)"
Description: "oBDS 2014: Ein Bestrahlungsverfahren für Mamma inklusive Lymphknoten als kombinierter Code"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* status = #completed
* category = http://snomed.info/sct#1287742003 "Radiotherapy (procedure)"
* code.coding.system = http://fhir.de/CodeSystem/bfarm/ops
* code.coding.code = #8-522
* code.coding.display = "Hochvoltstrahlentherapie"
* code.coding.version = "2024"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* reasonReference = Reference(Condition/primaertumor-example)

// oBDS 2014: Single bodySite with combined organ+lymph node information
* bodySite.coding.system = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet-2014
* bodySite.coding.code = #"3.1.+"
* bodySite.coding.display = "Mamma als Ganzbrust mit Lk"

* performedPeriod.start = "2023-03-15"
* performedPeriod.end = "2023-04-20"
* extension[Gesamtdosis].valueQuantity = 50 'Gy'
* extension[Einzeldosis].valueQuantity = 2 'Gy'


// ===== oBDS 2021 Approach: Multiple Procedures =====

// Procedure 1: Primary organ (Mamma)

Instance: mii-exa-onko-strahlentherapie-2021-mamma-primaer
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Title: "Beispiel Strahlentherapie oBDS 2021 - Mamma Primärzielgebiet"
Description: "oBDS 2021: Bestrahlung der Mamma als Primärzielgebiet (entspricht 2014 '3.1.+' Organanteil)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* status = #completed
* category = http://snomed.info/sct#1287742003 "Radiotherapy (procedure)"
* code.coding.system = http://fhir.de/CodeSystem/bfarm/ops
* code.coding.code = #8-522
* code.coding.display = "Hochvoltstrahlentherapie"
* code.coding.version = "2024"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example) 
* reasonReference = Reference(Condition/primaertumor-example)

// oBDS 2021: Separate organ coding
* bodySite.coding.system = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet
* bodySite.coding.code = #3.1
* bodySite.coding.display = "Mamma als Ganzbrust (r, l)"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation#R "rechts"

* performedPeriod.start = "2023-03-15"
* performedPeriod.end = "2023-04-20"
* extension[Gesamtdosis].valueQuantity = 50 'Gy'
* extension[Einzeldosis].valueQuantity = 2 'Gy'


// Procedure 2: Regional lymph nodes

Instance: mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Title: "Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten"  
Description: "oBDS 2021: Bestrahlung der axillären Lymphknoten (entspricht 2014 '3.1.+' Lymphknotenanteil)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* status = #completed
* category = http://snomed.info/sct#1287742003 "Radiotherapy (procedure)"
* code.coding.system = http://fhir.de/CodeSystem/bfarm/ops
* code.coding.code = #8-522
* code.coding.display = "Hochvoltstrahlentherapie"
* code.coding.version = "2024"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* reasonReference = Reference(Condition/primaertumor-example)

// oBDS 2021: Separate lymph node coding
* bodySite.coding.system = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet  
* bodySite.coding.code = #9.3
* bodySite.coding.display = "Axilläre Lymphknoten (r, l)"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation#R "rechts"

// Related to primary breast radiation
* partOf = Reference(mii-exa-onko-strahlentherapie-2021-mamma-primaer)

* performedPeriod.start = "2023-03-15" 
* performedPeriod.end = "2023-04-20"
* extension[Gesamtdosis].valueQuantity = 46 'Gy'  // Typically lower dose for lymph nodes
* extension[Einzeldosis].valueQuantity = 2 'Gy'


// ===== Additional Migration Examples =====

// oBDS 2014: Prostata mit Lymphknoten

Instance: mii-exa-onko-strahlentherapie-2014-prostata-mit-lk
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Title: "Migration Beispiel: Prostata mit Lymphknoten (oBDS 2014 → 2021)"
Description: "Zeigt Migration von 2014 '5.4.+' zu 2021 separaten Prozeduren"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* status = #completed
* category = http://snomed.info/sct#1287742003 "Radiotherapy (procedure)"
* code.coding.system = http://fhir.de/CodeSystem/bfarm/ops
* code.coding.code = #8-522
* code.coding.display = "Hochvoltstrahlentherapie"
* code.coding.version = "2024"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* reasonReference = Reference(Condition/primaertumor-example)

// oBDS 2014 combined code
* bodySite.coding.system = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet-2014
* bodySite.coding.code = #"5.4.+"
* bodySite.coding.display = "Prostata mit Lk"

* performedPeriod.start = "2023-05-10"
* performedPeriod.end = "2023-07-15"
* extension[Gesamtdosis].valueQuantity = 78 'Gy'
* extension[Einzeldosis].valueQuantity = 2 'Gy'

// Migration Note: This would become two 2021 procedures:
// 1. Prostata (5.4) + Beckenlymphabfluss (9.10)
// 2. Separate procedures with partOf relationship
