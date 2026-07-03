// Fall/Kontakt zur Probenentnahme fuer den Biobank-Patienten
Instance: mii-exa-test-data-biobank-encounter-1
InstanceOf: Encounter
Usage: #example
Description: "Biobank Test Encounter (Probenentnahme)"
* insert TestDataLabel
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(mii-exa-test-data-biobank-patient-1)
* period.start = "2024-03-01"
* period.end = "2024-03-01"
