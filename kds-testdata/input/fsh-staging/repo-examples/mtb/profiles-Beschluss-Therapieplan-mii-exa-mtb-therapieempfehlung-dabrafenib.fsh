Instance: mii-exa-mtb-therapieempfehlung-dabrafenib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
* authoredOn = 2024-01-01
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Medikation
* medicationCodeableConcept.coding = http://fhir.de/CodeSystem/bfarm/atc#L01EC02 "Dabrafenib"
* medicationCodeableConcept.coding.version = "2025"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)
