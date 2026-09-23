// Service Request für Prostatabiopsie
Instance: mii-exa-test-data-patho-request-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request
Usage: #example
Title: "Prostatabiopsie Anforderung (2 Stanzen)"
Description: "Anforderung für die 2-Stanzen-Prostatabiopsie (Testdaten-Szenario)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* identifier[Placer-ID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
* identifier[Placer-ID].system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
* identifier[Placer-ID].value = "PATH-RPT-2024-001"
* identifier[Filler-ID].type = $v2-0203#FILL
* identifier[Filler-ID].system = "https://www.charite.de/fhir/sid/patho/befundbericht"
* identifier[Filler-ID].value = "E_24_001"
* intent = #order
* category = $sct#726007 "Pathology consultation, comprehensive, records and specimen with report"
* code = $loinc#66117-3 "Prostate Pathology biopsy report"
* encounter = Reference(mii-exa-test-data-patho-encounter-1)
* subject = Reference(mii-exa-test-data-patho-patient-1)
* requester = Reference(mii-exa-test-data-patho-practitioner-2)
* performer = Reference(mii-exa-test-data-patho-practitioner-1)
* reasonCode = $sct#396152005 "Prostate specific antigen above reference range"
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-01-part)
* specimen[+] = Reference(mii-exa-test-data-patho-specimen-03-part)
* supportingInfo[observations][+] = Reference(mii-exa-test-data-patho-psa-1)
* supportingInfo[codedCondition][+] = Reference(mii-exa-test-data-patho-diagnose-verdacht-1)
* supportingInfo[anamnesis][+] = Reference(mii-exa-test-data-patient-1-patho-hopi-1)
* supportingInfo[activeProblems][+] = Reference(mii-exa-test-data-patient-1-patho-active-problems-1)
* meta.lastUpdated = "2024-01-20T16:00:00+01:00"
* requisition.system = "https://www.charite.de/fhir/sid/patho/untersuchungsauftrag"
* requisition.value = "REQ-2024-001"