Instance: mii-exa-test-data-onko-mamma-tumorkonferenz
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz
Usage: #example
Description: "DiagnosticReport: Histologiebefund für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* addresses = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* created = "2024-01-11"
* status = $request-status#active
* intent = $request-intent#plan
//* activity[obds].detail.code = $mii-cs-onko-therapie-typ#OP
//* activity[obds].detail.status = $care-plan-activity-status#completed
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop