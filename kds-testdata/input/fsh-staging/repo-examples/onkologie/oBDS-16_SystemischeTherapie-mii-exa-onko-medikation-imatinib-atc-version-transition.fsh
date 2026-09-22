Instance: mii-exa-onko-medikation-imatinib-atc-version-transition
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Medikation Imatinib (ATC Versionsübergang)"
Description: "Beispiel einer systemischen Therapie Medikation mit Imatinib, das 2021 von L01XE01 nach L01EA01 umklassifiziert wurde. Zeigt beide ATC-Codes mit ihren jeweiligen Versionen."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)
* status = #completed
* subject = Reference(Patient/example)

// OLD ATC code (valid until 2020): L01XE01 in "Proteinkinase-Inhibitoren"
* medicationCodeableConcept.coding[+].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[=].version = "2020"
* medicationCodeableConcept.coding[=].code = #L01XE01
* medicationCodeableConcept.coding[=].display = "Imatinib"

// NEW ATC code (valid from 2021): L01EA01 in "BCR-ABL Tyrosinkinase-Inhibitoren"
* medicationCodeableConcept.coding[+].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[=].version = "2021"
* medicationCodeableConcept.coding[=].code = #L01EA01
* medicationCodeableConcept.coding[=].display = "Imatinib"

* medicationCodeableConcept.text = "Imatinib (BCR-ABL Tyrosinkinase-Inhibitor)"
* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "CML-Protokoll mit Imatinib"
* effectivePeriod.start = "2020-12-01"
* effectivePeriod.end = "2024-08-30"
* basedOn[tumorkonferenz] = Reference(mii-exa-onko-tumorkonferenz-01)
