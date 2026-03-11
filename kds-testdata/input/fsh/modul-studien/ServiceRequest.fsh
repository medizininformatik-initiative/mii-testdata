// Studieneinschluss-Anfrage für Patient-1
Instance: mii-exa-test-data-studie-einschluss-anfrage-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studieneinschluss-anfrage
Usage: #example
Description: "ServiceRequest: Studieneinschluss-Anfrage für Patient-1 in MII-BIOMARKER-2024"
* insert TestDataLabel
* status = #active
* intent = #proposal
* category = $sct#110465008 "Clinical trial (procedure)"
* code = $sct#702475000 "Referral to clinical trial (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* authoredOn = "2024-03-10"
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* reasonCode = $sct#363346000 "Malignant neoplastic disease (disorder)"
* note.text = "Patient erfüllt Einschlusskriterien für MII-BIOMARKER-2024 Studie."
