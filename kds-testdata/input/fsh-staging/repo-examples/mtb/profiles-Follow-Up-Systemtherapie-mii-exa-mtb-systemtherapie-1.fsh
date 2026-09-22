Instance: MII-EXA-MTB-Systemtherapie-Beispiel-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "Beispiel fuer eine Systemtherapie"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie)
* status = #completed
* statusReason.coding.code = #regular-completion
* category = http://snomed.info/sct#367336001 "Chemotherapy (procedure)"
* extension[Intention].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K
* extension[causedBy].valueReference = Reference(MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib)
* basedOn = Reference(CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie)
* code.coding[systemische_therapie_art] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CH // Chemotherapy
* code.coding[ops] = http://fhir.de/CodeSystem/bfarm/ops#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2023"
* subject = Reference(Patient/mii-exa-mtb-patient)
* performedPeriod.start = "2014-02-12"
* performedPeriod.end = "2014-02-12"
* note.text = "Test Text!"
