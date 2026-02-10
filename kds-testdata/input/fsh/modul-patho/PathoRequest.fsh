// -------------------------------------------------------
// Patho ServiceRequest for Patient-1: Prostate Biopsy
// -------------------------------------------------------
Instance: mii-exa-test-data-patient-1-patho-request-1
InstanceOf: mii-pr-patho-service-request
Usage: #example
Description: "Patho ServiceRequest: Prostata-Stanzbiopsie-Untersuchung fuer Patient 1"
* insert TestDataLabel
* identifier[Placer-ID].type = $v2-0203#PLAC
* identifier[Placer-ID].system = "https://www.charite.de/fhir/sid/patho-requests"
* identifier[Placer-ID].value = "PATHO_REQ_000001"
* identifier[Filler-ID].type = $v2-0203#FILL
* identifier[Filler-ID].system = "https://www.charite.de/fhir/sid/patho-befundnummern"
* identifier[Filler-ID].value = "E24.00001"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "https://www.charite.de/fhir/sid/patho-auftragsgruppen"
* requisition.value = "AG_000001"
* status = #completed
* intent = #order
* code = $sct#86273004 "Biopsy of prostate (procedure)"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* requester = Reference(mii-exa-test-data-practitioner-physician-1)
* performer = Reference(mii-exa-test-data-practitioner-physician-1)
* specimen[+] = Reference(mii-exa-test-data-patient-1-patho-specimen-1)
* specimen[+] = Reference(mii-exa-test-data-patient-1-patho-specimen-2)
* reasonCode = $sct#399068003 "Malignant tumor of prostate (disorder)"
