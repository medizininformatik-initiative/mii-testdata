// ============================================================================
// MII Mikrobio Test Data - DiagnosticReport
// ============================================================================

Instance: mii-exa-test-data-mikrobio-diagnostic-report-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report
Usage: #example
Description: "Mikrobio Diagnostic Report: Blutkultur + Antibiogramm + MRSA-Befund"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/mikrobiologie-lab-system"
* identifier[befund].type.coding[fillerV2] = $v2-0203#FILL
* identifier[befund].system = "https://www.charite.de/fhir/sid/diagnostic-report"
* identifier[befund].value = "MIKROBIO-DR-001"
* identifier[befund].assigner = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "DIZ-CHA"
* basedOn[+] = Reference(mii-exa-test-data-mikrobio-servicerequest-1)
* basedOn[=].identifier.system = "https://www.charite.de/fhir/sid/service-request"
* basedOn[=].identifier.value = "MIKROBIO-SR-001"
* status = #final
* category[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Blood by Aerobic culture"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* subject.identifier.system = "https://www.charite.de/fhir/sid/patientenidentifikation"
* subject.identifier.value = "MIKROBIO-TEST-001"
* encounter = Reference(mii-exa-test-data-mikrobio-encounter-1)
* encounter.identifier.system = "https://www.charite.de/fhir/sid/encounter-identifier"
* encounter.identifier.value = "MIKROBIO-ENC-001"
* effectiveDateTime = "2026-04-02T08:30:00+02:00"
* effectiveDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension[=].valueCodeableConcept = $sct#281271004 "Date sample collected (observable entity)"
* issued = "2026-04-05T15:00:00+02:00"
* performer[+] = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* performer[=].identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* performer[=].identifier.value = "DIZ-CHA"
* resultsInterpreter[+] = Reference(mii-exa-test-data-mikrobio-organization-lab-1)
* specimen[+] = Reference(mii-exa-test-data-mikrobio-specimen-1)
* specimen[=].identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* specimen[=].identifier.value = "BLOOD-CULT-001"
* result[+] = Reference(mii-exa-test-data-mikrobio-allgemeine-kultur-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-spezifische-bestimmung-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-mikroskopie-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-empfindlichkeit-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-mre-klasse-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-resistenzmechanismen-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-virulenzfaktor-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-ct-wert-1)
* result[+] = Reference(mii-exa-test-data-mikrobio-molekulare-pathogenlast-1)
* conclusion = "Nachweis MRSA in Blutkultur. mecA-positiv, Vancomycin-empfindlich. Empfehlung: Linezolid oder Daptomycin als Reserve. Klinik konsultieren."
