Instance: mii-exa-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)
* subject = Reference(Patient/example)
* status = #completed
* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K // kurativ
* extension[Intention].url = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention
* extension[StellungZurOp].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop#A // adjuvant
* extension[StellungZurOp].url = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop
* category = http://snomed.info/sct#367336001 "Chemotherapy (procedure)" 
* code.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CH // Chemotherapie , ggfs. hier auch ein slice, weil OPS mit angegeben werden kann
* code.coding[+] = http://fhir.de/CodeSystem/bfarm/ops#8-52 // Chemotherapie nach OPS
* code.coding[=].version = "2021"
* usedCode = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle#AC "AC" // AC Protokoll (Cyclophosphamid und Doxorubicin)

* performedPeriod.start = "2021-12-04"
* performedPeriod.end = "2022-04-06"

Instance: mii-exa-onko-systemische-therapie-medikation1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Example chemotherapy 1"
Description: "Example for the FHIR profile systemic therapy based on German "
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* subject = Reference(Patient/example)
* status = #completed
* effectivePeriod.start = "2021-12-04" // identical to the Procedure.performedPeriod
* effectivePeriod.end = "2022-04-06"
* medicationCodeableConcept.coding[+].system = http://fhir.de/CodeSystem/bfarm/atc
* medicationCodeableConcept.coding[=].code = #L01AA01
* medicationCodeableConcept.coding[=].version = "2022"
* medicationCodeableConcept.coding[=].display = "Cyclophosphamid"

* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "AC" // Schemaabkürzung für Cyclophosphamid und Doxorubicin

Instance: mii-exa-onko-systemische-therapie-medikation2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Example chemotherapy 2"
Description: "Example for the FHIR profile systemic therapy based on German "
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* subject = Reference(Patient/example)
* status = #completed
* effectivePeriod.start = "2021-12-04"
* effectivePeriod.end = "2022-04-06"
* medicationCodeableConcept.coding[+].system = http://fhir.de/CodeSystem/bfarm/atc
* medicationCodeableConcept.coding[=].code = #L01DB01
* medicationCodeableConcept.coding[=].version = "2022"
* medicationCodeableConcept.coding[=].display = "Doxorubicin"

* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "AC" // Schemaabkürzung für Cyclophosphamid und Doxorubicin
