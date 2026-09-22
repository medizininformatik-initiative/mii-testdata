Instance: mii-exa-seltene-bundle-sma-complete
InstanceOf: Bundle
Usage: #example
Title: "SMA Fallbeispiel - Vollständiges Transaction Bundle"
Description: "Transaction Bundle mit allen Ressourcen für den SMA Fall inkl. Diagnoseverlauf"
* type = #transaction
* timestamp = "2024-08-12T14:00:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:6830d99e-9bbe-48ed-8927-ff28eadc42e0"
* entry[=].resource = mii-exa-seltene-patient-sma-001
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Diagnosis History - Three stages
* entry[+].fullUrl = "urn:uuid:117180a6-0392-47c5-8841-aa5b57d0e47e"
* entry[=].resource = mii-exa-seltene-condition-sma-suspected
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:7041e5af-feab-4650-af1b-e2051ba0a95a"
* entry[=].resource = mii-exa-seltene-condition-sma-clinical
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:9596df71-0f1b-495f-bf1c-16708dc952bf"
* entry[=].resource = mii-exa-seltene-condition-sma-genetic
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Family History
* entry[+].fullUrl = "urn:uuid:00e23000-f21c-470d-8f71-1942f0f72efe"
* entry[=].resource = mii-exa-seltene-family-history-001
* entry[=].request.method = #POST
* entry[=].request.url = "FamilyMemberHistory"

// Screening and Genetic Testing
* entry[+].fullUrl = "urn:uuid:07ff35a6-561b-4a3b-bfc0-be528e6ab5a4"
* entry[=].resource = mii-exa-seltene-observation-sma-screening
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Genetic Variants (Confirmatory)
* entry[+].fullUrl = "urn:uuid:89231fbc-2218-499e-b3f5-c11368975c6e"
* entry[=].resource = mii-exa-seltene-variant-smn1-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:3325c12d-0646-433e-8e46-042168eccf92"
* entry[=].resource = mii-exa-seltene-variant-smn2-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Gene Therapy Procedure
* entry[+].fullUrl = "urn:uuid:127dc51a-19ad-44ff-bf75-b1804d232109"
* entry[=].resource = mii-exa-seltene-procedure-gentherapy-001
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// Laboratory Observations - Post-therapeutic
* entry[+].fullUrl = "urn:uuid:ccdcbdd3-8153-4ef2-8d76-1ee0f681328b"
* entry[=].resource = mii-exa-seltene-observation-alt-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:bb92ee35-b577-42a8-bf9a-b51cbe5debae"
* entry[=].resource = mii-exa-seltene-observation-ast-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:38b52a28-bfa6-451f-8dad-9d0b8a8466bc"
* entry[=].resource = mii-exa-seltene-observation-plt-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Troponin T Series - Chronological order
* entry[+].fullUrl = "urn:uuid:ab5b69cf-4eae-4aa3-8ce4-5b5eb1a4a46a"
* entry[=].resource = mii-exa-seltene-observation-troponin-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:23b8775e-4704-4037-930e-68d1628cf0b8"
* entry[=].resource = mii-exa-seltene-observation-troponin-002
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:7d919637-556d-441d-8145-706eb3543fa3"
* entry[=].resource = mii-exa-seltene-observation-troponin-003
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:0ccc9861-03d4-403b-a650-a9f24d64a615"
* entry[=].resource = mii-exa-seltene-observation-troponin-004
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Clinical Impressions
* entry[+].fullUrl = "urn:uuid:81c1e902-ea19-4d32-adbf-3ee234509cf6"
* entry[=].resource = mii-exa-seltene-clinical-impression-erstvorstellung
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

* entry[+].fullUrl = "urn:uuid:b764f4a2-50c0-4624-ad49-8eb9405aaf9d"
* entry[=].resource = mii-exa-seltene-clinical-impression-nachsorge
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

// Encounters - Chronological order
* entry[+].fullUrl = "urn:uuid:8320638f-eca2-4586-b173-bd0c49d9ae9d"
* entry[=].resource = mii-exa-seltene-encounter-screening-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:98afd481-d1d6-4c2e-9d1c-51c651964e5f"
* entry[=].resource = mii-exa-seltene-encounter-ambulant-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:bdb5bd40-064b-4b79-aab6-8d9cc9db4873"
* entry[=].resource = mii-exa-seltene-encounter-stationaer-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:f8e29cb1-a8a9-4d56-ac0e-65fca096f860"
* entry[=].resource = mii-exa-seltene-encounter-nachsorge-001
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
