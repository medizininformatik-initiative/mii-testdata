Instance: MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement)
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf[systemischeTherapie] = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-06-24"
* effectivePeriod.end = "2023-06-24"
* note.text = "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-06-24"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org
* dosage.doseAndRate.type.coding.code = #volle-Dosis
