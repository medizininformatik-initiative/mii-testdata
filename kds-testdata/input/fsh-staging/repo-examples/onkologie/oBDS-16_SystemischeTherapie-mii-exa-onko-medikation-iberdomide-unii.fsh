Instance: mii-exa-onko-medikation-iberdomide-unii
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Medikation Iberdomide (UNII)"
Description: "Beispiel einer systemischen Therapie Medikation mit UNII-Code für experimentellen Wirkstoff ohne ATC-Code"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* status = #completed
* subject = Reference(Patient/example)
* medicationCodeableConcept.coding[UNII] = http://fdasis.nlm.nih.gov#8V66F27X44 "IBERDOMIDE"
* medicationCodeableConcept.text = "Iberdomide (experimenteller Immunmodulator)"
* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "Experimentelles Protokoll"
* effectivePeriod.start = "2024-06-01"
* effectivePeriod.end = "2024-08-30"
* basedOn[tumorkonferenz] = Reference(mii-exa-onko-tumorkonferenz-01)
