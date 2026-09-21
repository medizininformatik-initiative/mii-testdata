// ============================================================================
// MII Symptom Test Data - Patient and Infrastructure Resources
// ============================================================================

Instance: mii-exa-test-data-symptom-patient-1
InstanceOf: Patient
Usage: #example
Description: "Symptom Test Patient"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* identifier.value = "SYMP-TEST-001"
* name.family = "Symptomatika"
* name.given = "Helene"
* birthDate = 1994-08-21
* gender = #female

Instance: mii-exa-test-data-symptom-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Symptom Test Encounter (ambulante Abklaerung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* period.start = "2025-03-04"
* period.end = "2025-03-04"

// Supporting resources for MS coverage of the Symptom Observation profile
// (device: digitales Symptomtagebuch, derivedFrom: Kopfschmerztagebuch-Fragebogen)

Instance: mii-exa-test-data-symptom-device-1
InstanceOf: Device
Usage: #example
Description: "Symptom Test Device: digitales Symptomtagebuch (ePRO-App)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #active
* deviceName.name = "Kopfschmerztagebuch-App"
* deviceName.type = #user-friendly-name
* type = $sct#706689003 "Application program software"

Instance: mii-exa-test-data-symptom-questionnaireresponse-1
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Symptom Test QuestionnaireResponse: Kopfschmerztagebuch"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* subject = Reference(mii-exa-test-data-symptom-patient-1)
* authored = "2025-03-03T18:00:00+01:00"
* item.linkId = "schmerzintensitaet-nrs"
* item.text = "Wie stark waren Ihre Kopfschmerzen heute (0-10)?"
* item.answer.valueInteger = 6
