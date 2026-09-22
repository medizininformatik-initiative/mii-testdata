Instance: mii-exa-mtb-therapieplan-kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)
// Erforderliche Angaben
* status = #active
// * intent = #proposal im Onko wird Plan gesetzt
* category = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ#postth
* subject = Reference(mii-exa-mtb-patient)
* created = "2024-08-09"
// Therapieempfehlungen
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)
// Note: activity.detail removed to comply with FHIR constraint cpl-3
// (Provide a reference or detail, not both)
