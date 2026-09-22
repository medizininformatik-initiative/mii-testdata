Instance: mii-exa-onko-tumorkonferenz-molekular
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth // Molekulares Tumorboard (prätherapeutisch)
* category.text = "Molekulares Tumorboard"
* subject = Reference(Patient/example)
* created = "2024-01-15"
* addresses = Reference(Condition/primaertumor-example)

// First Recommendation: Anti-HER2 targeted therapy
* activity[0].detail.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* activity[0].detail.code.coding.code = #ZS
* activity[0].detail.code.text = "Zielgerichtete Anti-HER2 Therapie"
* activity[0].detail.status = #not-started
* activity[0].detail.description = "Basierend auf HER2-Amplifikation: Trastuzumab + Pertuzumab Kombination empfohlen"

// Second Recommendation: CDK4/6 inhibitor combination  
* activity[1].detail.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* activity[1].detail.code.coding.code = #CZ
* activity[1].detail.code.text = "Chemotherapie + CDK4/6 Inhibitor"
* activity[1].detail.status = #not-started
* activity[1].detail.description = "Alternative basierend auf HR+/HER2- Status: Palbociclib + Letrozol"

// Third Recommendation: Radiation therapy referral
* activity[2].detail.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* activity[2].detail.code.coding.code = #ST
* activity[2].detail.code.text = "Strahlentherapie"
* activity[2].detail.status = #not-started
* activity[2].detail.description = "Adjuvante Bestrahlung nach Operation"

// ===== LINKING PROBLEM DEMONSTRATION =====

// SystemischeTherapie for Anti-HER2 therapy (Agent 1: Trastuzumab)

Instance: mii-exa-onko-trastuzumab-therapie
InstanceOf: mii-pr-onko-systemische-therapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* status = #preparation
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #ZS
* category = http://snomed.info/sct#18629005	//"Administration of drug or medicament"
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops|2024#6-001.k "Applikation von Medikamenten, Liste 1: Trastuzumab, intravenös"
* code.text = "Trastuzumab"

* subject = Reference(Patient/example)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-molekular) // ❌ PROBLEM: Can only reference whole CarePlan
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* performedPeriod.start = "2024-02-01"

// SystemischeTherapie for Anti-HER2 therapy (Agent 2: Pertuzumab)

Instance: mii-exa-onko-pertuzumab-therapie
InstanceOf: mii-pr-onko-systemische-therapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* status = #preparation
* category = http://snomed.info/sct#18629005	// Administration of drug or medicament
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #ZS
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#8-543 "Mittelgradig komplexe und intensive Blockchemotherapie"
* code.coding[ops].version = "2024"
* code.text = "Pertuzumab"
* subject = Reference(Patient/example)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-molekular) // ❌ PROBLEM: Same CarePlan reference, no way to specify activity[0]
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* performedPeriod.start = "2024-02-01"

// SystemischeTherapie for CDK4/6 combination (Agent 1: Palbociclib)

Instance: mii-exa-onko-palbociclib-therapie
InstanceOf: mii-pr-onko-systemische-therapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* status = #preparation
* category = http://snomed.info/sct#18629005	// Administration of drug or medicament
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #ZS
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2024"
* code.text = "Palbociclib"
* subject = Reference(Patient/example)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-molekular) // ❌ PROBLEM: Cannot distinguish from anti-HER2 recommendation
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* performedPeriod.start = "2024-02-15"

// ===== POTENTIAL SOLUTIONS =====

// SOLUTION 1: Use partOf to group related therapies
* partOf = Reference(mii-exa-onko-trastuzumab-therapie) // Link Pertuzumab to Trastuzumab

// SOLUTION 2: Use identifier/note to specify which CarePlan activity
* note.text = "Implements CarePlan activity[0]: Anti-HER2 targeted therapy"

// SOLUTION 3: Custom extension for CarePlan activity reference (would need to be defined)
// * extension[careplan-activity].valueString = "activity[0]"
