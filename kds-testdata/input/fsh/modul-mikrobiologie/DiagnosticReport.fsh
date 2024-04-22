// Patient-1
Instance: mii-exa-test-data-patient-1-mibi-befund-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report|2024.0.0"
* identifier[befund].type = $v2-0203#FILL 
* identifier[befund].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[befund].value = "MiBiDR_000001"
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "Charité"
* basedOn = Reference(mii-exa-test-data-patient-1-labrequest-2)
* status = #final
* category.coding[loinc-lab] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[diagnostic-service-sections] = $v2-0074#LAB
* category.coding[snomed-microbiology-studies] = $sct#4341000179107
* code.coding[loinc-labReport] = $loinc#11502-2 "Laboratory report"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* effectiveDateTime = "2024-02-16T16:15:00+01:00"
* issued = "2024-02-16T16:15:00+01:00"
* performer = Reference(mii-exa-test-data-organization-labor-berlin)
* specimen = Reference(mii-exa-test-data-patient-1-specimen-2)
* result[+] = Reference(mii-exa-test-data-patient-1-kulturnachweis-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-keimzahl-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-empfindlichkeit-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-mikroskopie-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-molekulare-diagnostik-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-serologie-immunologie-1)
* result[+] = Reference(mii-exa-test-data-patient-1-mikrobio-mre-klasse-1)