Instance: mii-exa-patho-composition
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition
Usage: #example
* status = #final
* type.coding[0] = http://ihe-d.de/CodeSystems/IHEXDStypeCode#PATH
* type.coding[+] = http://snomed.info/sct#371528001 "Pathology report"
* attester.mode = #legal
* attester.party = Reference(mii-exa-patho-practitioner-765879)
* section.code = http://loinc.org#60567-5 "Comprehensive pathology report panel"
* section.title = "Pathology Diagnostic Report"
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Gesamter Textkörper des Befundberichts, z.B. beginnend mit Makroskopie:</b></p><div id=\"macro-a-title\"><b>Makroskopie A</b></div><table><tr id=\"macro-a-biosy-site\"><td id=\"macro-a-biosy-site-key\">Entnahmeort lt. klin. Angabe</td><td id=\"macro-a-biosy-site-value\">Prostataseitenlappen rechts, lateral</td></tr><tr id=\"macro-a-tissue-length\"><td id=\"macro-a-tissue-length-key\">Stanzzylinderlänge</td><td id=\"macro-a-tissue-length-value\">1,2 cm</td></tr></table></div>"
* section.entry = Reference(mii-exa-patho-report)
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1"
* identifier.value = "E21.12345"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession ID"
* subject = Reference(mii-exa-patho-patient-34545)
* encounter = Reference(mii-exa-patho-encounter-34555)
* date = "2021-06-08"
* author = Reference(mii-exa-patho-practitioner-2346545) "Dr. Name"
* title = "Pathologie Befundbericht"
* custodian = Reference(mii-exa-patho-organization-123456)
* event.period.start = "2021-06-05"
* event.period.end = "2021-06-08"