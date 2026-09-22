Instance: mii-exa-seltene-bundle-marfan-complete
InstanceOf: Bundle
Usage: #example
Title: "Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle"
Description: "Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall"
* type = #transaction
* timestamp = "2024-12-15T14:00:00Z"

// Patient
* entry[+].fullUrl = "urn:uuid:546740dd-771d-41e4-a2a5-e8d6a2b5c505"
* entry[=].resource = mii-exa-seltene-patient-marfan-001
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Main Diagnoses - Three stages
* entry[+].fullUrl = "urn:uuid:12b18efe-aae8-4039-9e2c-466ee0cb0ce0"
* entry[=].resource = mii-exa-seltene-condition-marfan-suspected
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:6842a03b-9adc-4cb7-9126-85d317203e7b"
* entry[=].resource = mii-exa-seltene-condition-marfan-clinical
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:23bd27f8-f2b5-4bc9-8fa3-078c26bc64a2"
* entry[=].resource = mii-exa-seltene-condition-marfan-genetic
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "urn:uuid:f584ef12-6225-4e71-9186-68528f68e07d"
* entry[=].resource = mii-exa-seltene-condition-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Phenotypic Observations
* entry[+].fullUrl = "urn:uuid:72fa4681-014d-4caa-86a3-97cea92766f4"
* entry[=].resource = mii-exa-seltene-observation-height-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:9dfa4ddc-723f-4c65-b86d-1a88304e77fe"
* entry[=].resource = mii-exa-seltene-observation-leg-asymmetry
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Symptoms
* entry[+].fullUrl = "urn:uuid:b5f66545-2f6e-450c-a92e-8e9d2626e003"
* entry[=].resource = mii-exa-seltene-symptom-chest-pain
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:ce25223c-45fe-4a87-ba1b-e120cba24e94"
* entry[=].resource = mii-exa-seltene-symptom-cataract
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Cardiac Findings
* entry[+].fullUrl = "urn:uuid:a482bf38-9c7a-4295-a0f2-a38c1d15aae7"
* entry[=].resource = mii-exa-seltene-symptom-aortic-root
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:7b78bb46-817f-4786-84f8-0805b1580192"
* entry[=].resource = mii-exa-seltene-symptom-aortic-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:a933aaca-920c-4d29-be34-1d38c60b8bc9"
* entry[=].resource = mii-exa-seltene-symptom-mitral-regurg
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Genetic Variant
* entry[+].fullUrl = "urn:uuid:b769b1ea-3ec2-4b35-86d2-9a0ca128e1e6"
* entry[=].resource = mii-exa-seltene-variant-fbn1-001
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Echocardiography Observations
* entry[+].fullUrl = "urn:uuid:b4d84fa0-2c48-4613-ba4f-05b75d83c3c9"
* entry[=].resource = mii-exa-seltene-observation-echo-aortic
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:796c77be-100b-4935-b738-ef8d6175d668"
* entry[=].resource = mii-exa-seltene-observation-echo-av
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:c9a2b002-1177-4c4e-82c0-a8d32983da28"
* entry[=].resource = mii-exa-seltene-observation-echo-mv
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Procedures
* entry[+].fullUrl = "urn:uuid:7aa4841a-ee1c-462f-86c7-00a2705d42f4"
* entry[=].resource = mii-exa-seltene-procedure-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "urn:uuid:853a938b-bc21-4757-98cc-c33554ea26af"
* entry[=].resource = mii-exa-seltene-procedure-aortic-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// Medication
* entry[+].fullUrl = "urn:uuid:8fb04be6-9930-4aec-8a5f-4ef9b904ae51"
* entry[=].resource = mii-exa-seltene-medication-losartan
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"

// Clinical Impression
* entry[+].fullUrl = "urn:uuid:35d41288-207b-4be7-967a-d92e295d1c75"
* entry[=].resource = mii-exa-seltene-clinical-impression-seltene-assessment
* entry[=].request.method = #POST
* entry[=].request.url = "ClinicalImpression"

// Encounters - Chronological order
* entry[+].fullUrl = "urn:uuid:258f0a21-4c6e-473d-87e9-36a5bf01bb1a"
* entry[=].resource = mii-exa-seltene-encounter-ophthalmology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:70504d04-a6f0-4aa8-bd20-9b475b94438c"
* entry[=].resource = mii-exa-seltene-encounter-cataract-surgery
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:c90d7e24-a787-4d1b-b402-36b64362cc13"
* entry[=].resource = mii-exa-seltene-encounter-cardiology
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:1ec76c96-9e7d-403a-9ea5-1f2eaea6ef28"
* entry[=].resource = mii-exa-seltene-encounter-surgery-planned
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
